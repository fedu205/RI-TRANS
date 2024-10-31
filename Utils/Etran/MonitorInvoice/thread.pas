unit thread;

interface

uses    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.ExtCtrls,
  Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMemo, Data.Win.ADODB, Data.DBXDataSnap,
  Data.DBXCommon, IPPeerClient, Data.SqlExpr, Winapi.MMSystem, ComObj, Winapi.ActiveX;

type
  TThreadEtran2 = class(TThread)
  private
  protected
    Fconnect_str  : string;

    Fstr_log : string;
    Fstatus_str            : string;
    Fstr_error_result      : string;
    Fstr_error_cod_result  : string;
    Fstr_error_name_result : string;

    procedure Execute; override;
    function GetEtran(ip: string; login: string; password: string; var query_xml: string; var message_error: string): Boolean;
    function CreateWndSendDocs(etran_ip: string; doc_text: string): variant;
    function CreateWndGetECPSignAndSend(etran_ip: string; doc_id: integer): variant;

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

uses MonitorMain, EtranSOAP, ECPServerMethodsClient;

constructor TThreadEtran2.Create(connect_str:string);
begin
  inherited Create(True);
  Fconnect_str := connect_str; // Коннект к базе
  FreeOnTerminate := True;
  Resume;
end;


function TThreadEtran2.GetEtran(ip: string; login: string; password: string; var query_xml: string; var message_error: string): Boolean;
var res : Boolean;
begin
  try
    GetIEtranSys(False,ip).GetBlock(login, password, query_xml);
    res := True;
    message_error := '';
  except
    on E: Exception do begin
      Fstr_error_result      := '1:' + E.Message;
      MonitorError;
      res := False;
    end;
  end;

  Result := res;
end;


function TThreadEtran2.CreateWndGetECPSignAndSend(etran_ip: string; doc_id: integer): variant;
var
      ECPServer : TfmECPServerMethodsClient;
  SQLConnection : TSQLConnection;
     result_xml : string;
  message_error : string;

  doc_text : string;
  doc_sign : string;
  doc_tsp  : string;

begin
  try
    try
      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := '7400';
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);

      // Получить тескт для подписи
      if ECPServer.GetECPText(doc_id, result_xml, message_error) then begin
        doc_text := result_xml;

        // Подписать
        if ECPServer.GetECPSign(doc_text, result_xml, message_error) then begin
          doc_sign := result_xml;

          // Получить штамп времени
          if ECPServer.GetECPTSP(doc_sign, result_xml, message_error) then begin
            doc_tsp := result_xml;

            // Отправить документ
            if ECPServer.SendECP(doc_id, doc_text, doc_sign, doc_tsp, result_xml, message_error) then begin
              Result := VarArrayOf([True, result_xml]);
            end else begin
              Result := VarArrayOf([False, message_error]);
            end;

          end else begin
            Result := VarArrayOf([False, message_error]);
          end;


        end else begin
          Result := VarArrayOf([False, message_error]);
        end;


      end else begin
        Result := VarArrayOf([False, message_error]);
      end;

    except
      on E: Exception do begin
        Fstr_error_result      := '2:' + E.Message;
        MonitorError;
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
  end;
end;


function TThreadEtran2.CreateWndSendDocs(etran_ip: string; doc_text: string): variant;
var
      ECPServer : TfmECPServerMethodsClient;
  SQLConnection : TSQLConnection;
     result_xml : string;
  message_error : string;
begin
  try
    try
      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := '7400';
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);

      if ECPServer.SendDocs(doc_text, result_xml, message_error) then begin
        Result := VarArrayOf([True, result_xml]);
      end else begin
        Result := VarArrayOf([False, result_xml]);
      end;

    except
      on E: Exception do begin
        Fstr_error_result      := '3:' + E.Message;
        MonitorError;
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
  end;
end;

procedure TThreadEtran2.Execute;
var connect : TADOConnection;
    Q, Q2 : TADOQuery;
    message_error : string;
    query_xml     : string;
    sp_etran_ecp_monitor_modify : TADOStoredProc;
    sp_etran_ecp_modify : TADOStoredProc;
    v : Variant;
    p : string;
begin
  CoInitialize(nil);

  Fstatus_str := 'Запущено.';
  Synchronize(SetStatus);

  while (not Terminated) do begin
    try
      try
        MonitorLogClear;

        p := '0';
        connect := TADOConnection.Create(nil);
        connect.ConnectionString := 'Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Info=True;User ID=sa;Initial Catalog=lis_etran;Data Source=srv-lis2;';
        connect.KeepConnection := False;
        connect.LoginPrompt := False;
        connect.Connected := True;

        p := '1';
        Q := TADOQuery.Create(nil);
        Q.Connection := connect;

        p := '2';
        Q2 := TADOQuery.Create(nil);
        Q2.Connection := connect;

        p := '3';
        sp_etran_ecp_monitor_modify := TADOStoredProc.Create(nil);
        sp_etran_ecp_monitor_modify.Connection := connect;
        sp_etran_ecp_monitor_modify.ProcedureName := 'sp_etran_ecp_monitor_modify';

        p := '4';
//        sp_etran_ecp_modify := TADOStoredProc.Create(nil);
//        sp_etran_ecp_modify.Connection := connect;
//        sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';

        p := '5';
        //////////////////////////////////////////////////////////////////////////////
        MonitorLog('Автоотправка');
        p := '6';
        Q.SQL.Clear;
        Q.SQL.Add('SELECT	etran_ecp_id, etran_ecp_xml, users_owner_id');
        Q.SQL.Add('FROM   etran_ecp');
        Q.SQL.Add('       inner join etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id');
        Q.SQL.Add('WHERE  set_error = 0 and date_send is null and set_automat = 1');
        Q.Open;
        p := '7';
        while not Q.Eof do begin
          v := CreateWndSendDocs('172.16.200.129', Q.FieldByName('etran_ecp_xml').AsString);

          sp_etran_ecp_modify := TADOStoredProc.Create(nil);
          sp_etran_ecp_modify.Connection := connect;
          sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
          sp_etran_ecp_modify.Parameters.Refresh;
          sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := Q.FieldByName('etran_ecp_id').Value;
          sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 3;
          sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
          sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml').Value := v[1];
          sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send'     ).Value := 'AUTO:LIS-ETRAN';
          sp_etran_ecp_modify.ExecProc;
          sp_etran_ecp_modify.Free;

          MonitorLog('Отправка накладной ' + Q.FieldByName('etran_ecp_id').AsString);
          Q.Next;
        end;

        p := '8';
        MonitorLog('Запрос статусов');
        Q.SQL.Clear;
        Q.SQL.Add('SELECT	invNumber, etran_ecp_id FROM etran_ecp WHERE set_check = 1 AND check_end is null');
        Q.Open;

        p := '9';
        while not Q.Eof do begin
          message_error := '';
          p := '35';
          query_xml     := '<invoiceStatus version="1.0"><InvNumber value="' + Q.FieldByName('invNumber').AsString + '"/><useSender/><usePayer/><useRecip/><useAll/></invoiceStatus>';

          p := '36';
          if GetEtran('http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap', 'абашин', 'etran_sfh', query_xml, message_error) then begin
            p := '37';
            try
              sp_etran_ecp_modify := TADOStoredProc.Create(nil);
              sp_etran_ecp_modify.Connection := connect;
              sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
              sp_etran_ecp_modify.Parameters.Refresh;
              sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'    ).Value := Q.FieldByName('etran_ecp_id').Value;
              sp_etran_ecp_modify.Parameters.ParamByName('@type_action'     ).Value := 17;
              sp_etran_ecp_modify.Parameters.ParamByName('@xml_info'        ).Value := query_xml;
              sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_create').Value := 'AUTO-CHECK';
              sp_etran_ecp_modify.ExecProc;
              sp_etran_ecp_modify.Free;
            except
              on E: Exception do begin
                Fstr_error_result      := '   44 ' + E.Message;
                MonitorError;
                Terminate;
              end;
            end;


            p := '22';
            // Если статус "плохой", то создаем, отправляем и подписываем
            Q2.SQL.Clear;
            Q2.SQL.Add('SELECT	invNumber, etran_ecp_id, invoiceID, invoiceState, invoiceStateID ');
            Q2.SQL.Add('FROM	  etran_ecp');
            Q2.SQL.Add('WHERE	  set_check = 1 AND check_end is null AND invoiceStateID in (2,6,89,440) and etran_ecp_id = ' +  Q.FieldByName('etran_ecp_id').AsString);
            Q2.Open;
            if Q2.RecordCount > 0 then begin
              // Создать
              p := '23';
              sp_etran_ecp_modify := TADOStoredProc.Create(nil);
              sp_etran_ecp_modify.Connection := connect;
              sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
              sp_etran_ecp_modify.Parameters.Refresh;
              sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'    ).Value := Q.FieldByName('etran_ecp_id').Value;
              sp_etran_ecp_modify.Parameters.ParamByName('@type_action'     ).Value := 18;
              sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_create').Value := 'AUTO-CHECK';
              sp_etran_ecp_modify.ExecProc;
              sp_etran_ecp_modify.Free;

              MonitorLog('(2)Повторное создание ' + Q.FieldByName('invNumber').AsString);
              Synchronize(SetSound);
              MonitorLog('Sound');

              p := '24';
              // Отправить
              Q2.SQL.Clear;
              Q2.SQL.Add('SELECT	etran_ecp_id, etran_ecp_xml, users_owner_id');
              Q2.SQL.Add('FROM   etran_ecp');
              Q2.SQL.Add('       inner join etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id');
              Q2.SQL.Add('WHERE  set_error = 0 and date_send is null and set_automat = 1');
              Q2.Open;
              p := '25';
              while not Q2.Eof do begin
                v := CreateWndSendDocs('172.16.200.129', Q2.FieldByName('etran_ecp_xml').AsString);

                sp_etran_ecp_modify := TADOStoredProc.Create(nil);
                sp_etran_ecp_modify.Connection := connect;
                sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
                sp_etran_ecp_modify.Parameters.Refresh;
                sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := Q2.FieldByName('etran_ecp_id').Value;
                sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 3;
                sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
                sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml').Value := v[1];
                sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send'     ).Value := 'AUTO:LIS-ETRAN';
                sp_etran_ecp_modify.ExecProc;
                sp_etran_ecp_modify.Free;

                MonitorLog('(2)Отправка накладной ' + Q2.FieldByName('etran_ecp_id').AsString);
                Q2.Next;
              end;

              p := '26';
              // Подписать
              Q2.SQL.Clear;
              Q2.SQL.Add('SELECT	invNumber, etran_ecp_id, invoiceID, invoiceState, invoiceStateID');
              Q2.SQL.Add('FROM	  etran_ecp');
              Q2.SQL.Add('WHERE	  set_check = 1 AND check_end is null AND invoiceStateID = 1 AND set_error_ecp = 0');
              Q2.Open;
              p := '27';
              while not Q2.Eof do begin
                p := '28';
                v := CreateWndGetECPSignAndSend('172.16.200.129', Q2.FieldByName('invoiceID').AsInteger);
                p := '29';
                if v[0] = False then begin
                  sp_etran_ecp_modify := TADOStoredProc.Create(nil);
                  sp_etran_ecp_modify.Connection := connect;
                  sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
                  sp_etran_ecp_modify.Parameters.Refresh;
                  sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := Q2.FieldByName('etran_ecp_id').Value;
                  sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 33;
                  sp_etran_ecp_modify.Parameters.ParamByName('@error_ecp'   ).Value := v[1];
                  sp_etran_ecp_modify.ExecProc;
                  sp_etran_ecp_modify.Free;
                end;
                p := '30';

                MonitorLog('(2)Подписание ' + Q2.FieldByName('invNumber').AsString);
                p := '31';
                Q2.Next;
              end;
              p := '32';
            end;

          end;
          p := '33';
          MonitorLog('Обновление статуса ' + Q.FieldByName('invNumber').AsString);
          p := '34';
          Q.Next;
        end;


        p := '10';
        //////////////////////////////////////////////////////////////////////////////
        MonitorLog('Подписание');
        Q.SQL.Clear;
        Q.SQL.Add('SELECT	invNumber, etran_ecp_id, invoiceID, invoiceState, invoiceStateID');
        Q.SQL.Add('FROM	  etran_ecp');
        Q.SQL.Add('WHERE	set_check = 1 AND check_end is null AND invoiceStateID = 1 AND set_error_ecp = 0');
        Q.Open;
        while not Q.Eof do begin
          v := CreateWndGetECPSignAndSend('172.16.200.129', Q.FieldByName('invoiceID').AsInteger);
          if v[0] = False then begin
            sp_etran_ecp_modify := TADOStoredProc.Create(nil);
            sp_etran_ecp_modify.Connection := connect;
            sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
            sp_etran_ecp_modify.Parameters.Refresh;
            sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := Q.FieldByName('etran_ecp_id').Value;
            sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 33;
            sp_etran_ecp_modify.Parameters.ParamByName('@error_ecp' ).Value := v[1];
            sp_etran_ecp_modify.ExecProc;
            sp_etran_ecp_modify.Free;
          end;

          MonitorLog('Подписание ' + Q.FieldByName('invNumber').AsString);
          Q.Next;
        end;

        p := '11';

        //////////////////////////////////////////////////////////////////////////////
        MonitorLog('Проверка статусов');
        Q.SQL.Clear;
        Q.SQL.Add('SELECT	invNumber, etran_ecp_id, invoiceID, invoiceState, invoiceStateID ');
        Q.SQL.Add('FROM	  etran_ecp');
        Q.SQL.Add('WHERE	set_check = 1 AND check_end is null AND invoiceStateID in (2,6,89,440)');
        Q.Open;
        while not Q.Eof do begin

          sp_etran_ecp_modify := TADOStoredProc.Create(nil);
          sp_etran_ecp_modify.Connection := connect;
          sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
          sp_etran_ecp_modify.Parameters.Refresh;
          sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'    ).Value := Q.FieldByName('etran_ecp_id').Value;
          sp_etran_ecp_modify.Parameters.ParamByName('@type_action'     ).Value := 18;
          sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_create').Value := 'AUTO-CHECK';
          sp_etran_ecp_modify.ExecProc;
          sp_etran_ecp_modify.Free;

          MonitorLog('Повторное создание ' + Q.FieldByName('invNumber').AsString);
          Synchronize(SetSound);
          MonitorLog('Sound');

          Q.Next;
        end;

        p := '12';
        connect.Free;
        sp_etran_ecp_monitor_modify.Free;
        Q.Free;
        Q2.Free;


      except
        on E: Exception do begin
          Fstr_error_result      := '   4 (' + p + '): ' + E.Message;
          MonitorError;
          Terminate;
        end;
      end;
    finally
    end;

  end;


  Fstatus_str := 'Не запущено.';
  Synchronize(SetStatus);
  CoUninitialize;
end;

procedure TThreadEtran2.SetStatus;
begin
  fmMonitorMain.Label2.Caption := Fstatus_str;
end;

procedure TThreadEtran2.MonitorLog(str: string);
begin
  Fstr_log := str;
  Synchronize(SetLog);
end;


procedure TThreadEtran2.SetLog;
begin
  fmMonitorMain.cxMemo1.Lines.Add(Fstr_log);
end;

procedure TThreadEtran2.MonitorLogClear;
begin
  Synchronize(SetLogClear);
end;

procedure TThreadEtran2.SetLogClear;
begin
  fmMonitorMain.cxMemo1.Lines.Clear;
end;

procedure TThreadEtran2.SetSound;
begin
  sndPlaySound('c:\WARNING1.WAV', SND_NODEFAULT Or SND_ASYNC);
  sleep(3200);
end;

procedure TThreadEtran2.MonitorError();
begin
  Synchronize(SetError);
end;

procedure TThreadEtran2.SetError;
begin
  fmMonitorMain.cxMemo2.Lines.Add(DateTimeToStr(Now) + ' ' +  Fstr_error_result);
  Fstr_error_result  := '';
end;

end.
