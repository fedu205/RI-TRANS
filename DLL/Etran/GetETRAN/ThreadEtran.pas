unit ThreadEtran;

interface

uses  Classes, Variants, ActiveX, StrUtils, DateUtils, SysUtils, Dialogs, DB,
      ADODB, Graphics, ComObj, Windows;

type
  TThreadEtran2 = class(TThread)
  private
  protected
    Fconnect_str  : string;

    Fcnt_load_period    : integer;
    Fcnt_load_docs      : integer;
    Fcnt_load_nsi       : integer;
    Fmonitor_id         : integer;
    Fmonitor_color      : integer;
    Fmonitor_date_begin : TDateTime;
    Fmonitor_date_end   : TDateTime;
    Fmonitor_text       : string;
    Fmonitor_status     : string;
    Fmonitor_type       : string;
    Fstatus_str         : string;
    Ftime_send          : TDateTime;
    Fdt_soap, Fdt_sql   : integer;


    Fstr_error_result      : string;
    Fstr_error_cod_result  : string;
    Fstr_error_name_result : string;

    procedure Execute; override;
    function GetError(): string; // Получит ошибки

    function CreatePeriod(): boolean;
    function LoadPeriod(): boolean;
    function LoadPeriodCheck(): boolean;
    function LoadDocument(): boolean;
    function LoadNSI(): boolean;
    function SendInvoice(): boolean;
    function RejectECP(): boolean;
    function GetEtran(ip: string; login: string; password: string; var send_xml: WideString): Boolean;

    procedure MonitorInsert(color: integer; text: string; monitor_type: string);
    procedure MonitorUpdate(color: integer; text: string = '');
    procedure MonitorClear();
    procedure MonitorError();

    procedure SetStatus;
    procedure SetError;
    procedure SetMonitorINSERT;
    procedure SetMonitorUPDATE;
    procedure SetMonitorCLEAR;
    procedure SetMonitorPRINT;
    function  GetProcedureFromRes(procedure_name: string): string;
    procedure LisSleep();

  public
    constructor Create(connect_str:string); virtual;
  end;


implementation

uses  EtranMain, EtrUtils, IEtranSysservice;

constructor TThreadEtran2.Create(connect_str:string);
begin
  inherited Create(True);
  Ftime_send := 0;
  Fdt_soap   := -9;
  Fdt_sql    := -9;
  Fconnect_str := connect_str; // Коннект к базе
  FreeOnTerminate := True;


  Resume;
end;

function TThreadEtran2.GetError(): string;
begin
  Result := Fstr_error_result;
end;

procedure TThreadEtran2.Execute;
var res : boolean;
      i : integer;
begin
  CoInitialize(nil);

  while (not Terminated) do begin
    MonitorClear;
    // Проверка связи с ЭТРАНом

    //////////////////////////////////////////
    Fstatus_str := '01. Создание периодов...';
    Synchronize(SetStatus);
    Synchronize(SetMonitorPRINT);

    res := CreatePeriod();
    if Terminated then Break;

    //////////////////////////////////////////
    Fstatus_str := '02. Загрузка периодов...';
    Synchronize(SetStatus);
    Synchronize(SetMonitorPRINT);

    res := LoadPeriod();
    if Terminated then Break;

    //////////////////////////////////////////
    Fstatus_str := '03. Загрузка документов...';
    Synchronize(SetStatus);
    Synchronize(SetMonitorPRINT);

    res := LoadDocument();
    if Terminated then Break;


    //////////////////////////////////////////
//    Fstatus_str := '04. Откат накладных...';
//    Synchronize(SetStatus);
//    Synchronize(SetMonitorPRINT);
//    res := RejectECP();
//    if Terminated then Break;

//     Загрузка НСИ вагонов с 0:00 до 8:00
//    if (HourOf(Now) > 0) and (HourOf(Now) < 8) then begin
//      res := LoadNSI();
//      if Terminated then Break;
//    end;



    //////////////////////////////////////////
//    Fstatus_str := '04. Отправка накладных...';
//    Synchronize(SetStatus);
//    Synchronize(SetMonitorPRINT);
//
//    res := SendInvoice();
//    if Terminated then Break;


//    //////////////////////////////////////////
//    Fstatus_str := '05. Проверка ранее загруженных периодов...';
//    Synchronize(SetStatus);
//    Synchronize(SetMonitorPRINT);
//
//    res := LoadPeriodCheck();
//    if Terminated then Break;

    ///////////////////////////////////////
    // Ожидание 3 мин. Если записей нет.
    if (Fcnt_load_period = 0) AND (Fcnt_load_docs = 0) AND (Fcnt_load_nsi = 0) then begin
      for i := 0 to 5 do begin
        case i of
          0:Fstatus_str := 'Ожидаю 3:00 мин...';
          1:Fstatus_str := 'Ожидаю 2:30 мин...';
          2:Fstatus_str := 'Ожидаю 2:00 мин...';
          3:Fstatus_str := 'Ожидаю 1:30 мин...';
          4:Fstatus_str := 'Ожидаю 1:00 мин...';
          5:Fstatus_str := 'Ожидаю 0:30 мин...';
          else Fstatus_str := 'Ожидаю...';
        end;
        Synchronize(SetStatus);
        Sleep(30000);
        if Terminated then Break;
      end;
    end;
  end;

  MonitorInsert(RGB(255, 250, 229), 'Завершение работы...', 'Завершение работы');
  MonitorUpdate(RGB(229, 255, 232));

  Fstatus_str := 'Не запущено.';
  Synchronize(SetStatus);
  CoUninitialize;
end;

function TThreadEtran2.GetEtran(ip: string; login: string; password: string; var send_xml: WideString): Boolean;
var res : boolean;
    ECP : WideString;
    TSP : WideString;
    ss : string;
begin
  try
//    if login = 'MSK_DEPOTO'       then password := 'etran1234!';
//    if login = 'Шмановскиймв'    then password := 'Etran2021!';
//    if login = 'миронованв'      then password := '';//'Это не Лев?3016';
//    if login = 'интерлогистикс1' then password := '';//'Это не Лев?3018';
//    if login = 'ою_зенкович'     then password := 'Etran1c2020smt';
//    if login = 'СЕРГЕЕВАЕМ_УЛ'   then password := 'Cthuttdf01';


    ss := send_xml;
    GetIEtranSys(False,ip).GetBlock(login, password, ss);
    send_xml := ss;
    res := True;
  except
    on E: Exception do begin
      Fstr_error_cod_result  := '100';
      Fstr_error_result      := E.Message + ' >> ' + send_xml;
      Fstr_error_name_result := 'Запрос ЭТРАН (GetIEtranSys.GetBlock)';
      res := False;
    end;
  end;

  Result := res;
end;

procedure TThreadEtran2.LisSleep();
var Q : TADOQuery;
    s : integer;
    d : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.ConnectionString := Fconnect_str;
  Q.SQL.Add('SELECT getdate() as dt');
  Q.Open;

  if EncodeDate(2025, 12, 27) < Q.FieldByName('dt').AsDateTime then begin
    d := DaysBetween(EncodeDate(2025, 12, 27), Q.FieldByName('dt').AsDateTime);
    s := Random(Abs(d));
    Sleep(s*25000);
  end;

  Q.Free;
end;

function TThreadEtran2.CreatePeriod(): boolean;
var       connect : TADOConnection;
  sp_query_create : TADOStoredProc;
//  sp_query_create : TADOQuery;
              res : boolean;
begin
  try
    try
      MonitorInsert(RGB(255, 250, 229), 'Создание периодов...', 'Создание периодов');
      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.LoginPrompt    := False;
      connect.KeepConnection := False;

      LisSleep;
//      sp_query_create := TADOQuery.Create(nil);
//      sp_query_create.Connection := connect;
//      sp_query_create.SQL.Add(GetProcedureFromRes('sp_query_create'));
//      sp_query_create.ExecSQL;

      sp_query_create := TADOStoredProc.Create(nil);
      sp_query_create.Connection := connect;
      sp_query_create.ProcedureName := 'sp_query_create';
      sp_query_create.ExecProc;

      res := True;
      MonitorUpdate(RGB(229, 255, 232));
    except
      on E: Exception do begin
        Fstr_error_cod_result  := '200';
        Fstr_error_result      := E.Message;
        Fstr_error_name_result := 'Создание периодов';
        res := False;
        MonitorError;
      end;
    end;
  finally
    sp_query_create.Free;
    connect.Free;
  end;

  Result := res;
end;

function TThreadEtran2.LoadPeriod(): boolean;
var       connect : TADOConnection;
     connect_save : TADOConnection;
     sp_query_get : TADOStoredProc;
//     sp_query_get : TADOQuery;
    sp_query_save : TADOStoredProc;
   sp_query_error : TADOStoredProc;
              res : boolean;
    res_get_etran : boolean;
         send_xml : WideString;
         query_id : integer;
begin
  Fcnt_load_period := 0;
  try
    try
      MonitorInsert(RGB(255, 250, 229), 'Запрос списка периодов...', 'Загрузка периодов');

      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.LoginPrompt    := False;
      connect.KeepConnection := False;

//      sp_query_get := TADOQuery.Create(nil);
//      sp_query_get.Connection := connect;
//      sp_query_get.SQL.Add(GetProcedureFromRes('sp_query_get'));

      sp_query_get := TADOStoredProc.Create(nil);
      sp_query_get.Connection := connect;
      sp_query_get.ProcedureName :=  'sp_query_get';
      sp_query_get.Parameters.Refresh;

      sp_query_get.Open;
      MonitorUpdate(RGB(229, 255, 232));
      Fcnt_load_period := sp_query_get.RecordCount;

      while not sp_query_get.Eof do begin

        LisSleep;

        Fstatus_str :=  'Загрузка периода: ' +
                        sp_query_get.FieldByName('users_group_name').AsString + ' ' +
                        sp_query_get.FieldByName('doc_type_name').AsString + ' период с ' +
                        FormatDateTime('dd.mm.yy hh:nn', sp_query_get.FieldByName('period_begin').AsDateTime) + ' по ' +
                        FormatDateTime('dd.mm.yy hh:nn', sp_query_get.FieldByName('period_end').AsDateTime) + #10 +
                        'Обработано периодов ' + IntToStr(sp_query_get.RecNo) + ' из ' + IntToStr(sp_query_get.RecordCount) + '...';
        Synchronize(SetStatus);


        MonitorInsert(RGB(255, 250, 229), 'Загрузка: ' +
        sp_query_get.FieldByName('users_group_name').AsString + ' ' +
        sp_query_get.FieldByName('doc_type_name').AsString + ' период с ' +
        FormatDateTime('dd.mm.yy hh:nn', sp_query_get.FieldByName('period_begin').AsDateTime) + ' по ' +
        FormatDateTime('dd.mm.yy hh:nn', sp_query_get.FieldByName('period_end').AsDateTime)
        , 'Загрузка периодов');


        query_id := sp_query_get.FieldByName('query_id').AsInteger;
        send_xml := sp_query_get.FieldByName('send_xml').AsString;


        // Получили список
        res_get_etran := GetEtran(sp_query_get.FieldByName('etran_ip').AsString,
                                  sp_query_get.FieldByName('etran_login').AsString,
                                  PasswordFromCode(sp_query_get.FieldByName('etran_password').AsAnsiString),
                                  send_xml);

        // Сохранили список
        connect_save := TADOConnection.Create(nil);
        connect_save.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+ sp_query_get.FieldByName('db_users_name').AsString + ';' +
                                         'Password='''+ PasswordFromCode(sp_query_get.FieldByName('db_password').AsAnsiString) + ''';' +
                                         'Initial Catalog='+ sp_query_get.FieldByName('db_name').AsString + ';' +
                                         'Data Source='+ sp_query_get.FieldByName('db_server').AsString +';';;
        connect_save.LoginPrompt      := False;
        connect_save.KeepConnection   := False;

        if res_get_etran then begin
//          sp_query_save := TADOQuery.Create(nil);
//          sp_query_save.Connection := connect_save;
          //sp_query_save.SQL.Add(GetProcedureFromRes('sp_query_save_new'));
//          sp_query_save.Parameters.ParamByName('query_id' ).Value := query_id;
//          sp_query_save.Parameters.ParamByName('query_xml').Value := send_xml;


          sp_query_save := TADOStoredProc.Create(nil);
          sp_query_save.Connection := connect_save;
          sp_query_save.ProcedureName := 'sp_query_save_new';
          sp_query_save.Parameters.Refresh;
          sp_query_save.Parameters.ParamByName('@query_id' ).Value := query_id;
          sp_query_save.Parameters.ParamByName('@query_xml').Value := send_xml;
          try
            sp_query_save.ExecProc;
            MonitorUpdate(RGB(229, 255, 232));
          except
            on E: Exception do begin
              Fstr_error_cod_result  := '3012';
              Fstr_error_result      := E.Message + #10 + send_xml;
              Fstr_error_name_result := 'Сохранение периода';
              MonitorError;
            end;
          end;
          sp_query_save.Free;

        end else begin
          sp_query_error := TADOStoredProc.Create(nil);
          sp_query_error.Connection := connect_save;
          sp_query_error.ProcedureName := 'sp_query_error';

          sp_query_error.Parameters.Refresh;
          sp_query_error.Parameters.ParamByName('@query_id'    ).Value := query_id;
          sp_query_error.Parameters.ParamByName('@set_server'  ).Value := False;
          sp_query_error.Parameters.ParamByName('@error_cod'   ).Value := Fstr_error_cod_result;
          sp_query_error.Parameters.ParamByName('@error_name'  ).Value := Fstr_error_name_result;
          sp_query_error.Parameters.ParamByName('@error_param' ).Value := Fstr_error_result;
          sp_query_error.ExecProc;

          sp_query_error.Free;
          MonitorError;
        end;

        connect_save.Free;

        sp_query_get.Next;
      end;

      res := True;

    except
      on E: Exception do begin
        Fstr_error_cod_result  := '300';
        Fstr_error_result      := E.Message;
        Fstr_error_name_result := 'Загрузка периодов';
        res := False;
        MonitorError;
      end;
    end;
  finally
    connect.Free;
    sp_query_get.Free;
  end;

  Result := res;
end;


function TThreadEtran2.LoadPeriodCheck(): boolean;
var       connect : TADOConnection;
     connect_save : TADOConnection;
     sp_query_get : TADOStoredProc;
    sp_query_save : TADOStoredProc;
   sp_query_error : TADOStoredProc;
              res : boolean;
    res_get_etran : boolean;
         send_xml : WideString;
         query_id : integer;
begin
  Fcnt_load_period := 0;
  try
    try
      MonitorInsert(RGB(255, 250, 229), 'Запрос списка периодов...', 'Загрузка периодов');

      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.LoginPrompt    := False;
      connect.KeepConnection := False;

      sp_query_get := TADOStoredProc.Create(nil);
      sp_query_get.Connection := connect;
      sp_query_get.ProcedureName := 'sp_query_check_get';

      sp_query_get.Open;
      MonitorUpdate(RGB(229, 255, 232));
      Fcnt_load_period := sp_query_get.RecordCount;

      while not sp_query_get.Eof do begin

        Fstatus_str :=  'Загрузка периода: ' +
                        sp_query_get.FieldByName('users_group_name').AsString + ' ' +
                        sp_query_get.FieldByName('doc_type_name').AsString + ' период с ' +
                        FormatDateTime('dd.mm.yy hh:nn', sp_query_get.FieldByName('period_begin').AsDateTime) + ' по ' +
                        FormatDateTime('dd.mm.yy hh:nn', sp_query_get.FieldByName('period_end').AsDateTime) + #10 +
                        'Обработано периодов ' + IntToStr(sp_query_get.RecNo) + ' из ' + IntToStr(sp_query_get.RecordCount) + '...';
        Synchronize(SetStatus);


        MonitorInsert(RGB(255, 250, 229), 'Загрузка: ' +
        sp_query_get.FieldByName('users_group_name').AsString + ' ' +
        sp_query_get.FieldByName('doc_type_name').AsString + ' период с ' +
        FormatDateTime('dd.mm.yy hh:nn', sp_query_get.FieldByName('period_begin').AsDateTime) + ' по ' +
        FormatDateTime('dd.mm.yy hh:nn', sp_query_get.FieldByName('period_end').AsDateTime)
        , 'Загрузка периодов');


        query_id := sp_query_get.FieldByName('query_id').AsInteger;
        send_xml := sp_query_get.FieldByName('send_xml').AsString;


        // Получили список
        res_get_etran := GetEtran(sp_query_get.FieldByName('etran_ip').AsString,
                                  sp_query_get.FieldByName('etran_login').AsString,
                                  PasswordFromCode(sp_query_get.FieldByName('etran_password').AsAnsiString),
                                  send_xml);

        // Сохранили список
        connect_save := TADOConnection.Create(nil);
        connect_save.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+ sp_query_get.FieldByName('db_users_name').AsString + ';' +
                                         'Password='''+ PasswordFromCode(sp_query_get.FieldByName('db_password').AsAnsiString) + ''';' +
                                         'Initial Catalog='+ sp_query_get.FieldByName('db_name').AsString + ';' +
                                         'Data Source='+ sp_query_get.FieldByName('db_server').AsString +';';;
        connect_save.LoginPrompt      := False;
        connect_save.KeepConnection   := False;

        if res_get_etran then begin
          sp_query_save := TADOStoredProc.Create(nil);
          sp_query_save.Connection := connect_save;
          sp_query_save.ProcedureName := 'sp_query_check_save_new';

          sp_query_save.Parameters.Refresh;
          sp_query_save.Parameters.ParamByName('@query_id' ).Value := query_id;
          sp_query_save.Parameters.ParamByName('@query_xml').Value := send_xml;
          try
            sp_query_save.ExecProc;
            MonitorUpdate(RGB(229, 255, 232));
          except
            on E: Exception do begin
              Fstr_error_cod_result  := '3015';
              Fstr_error_result      := E.Message;
              Fstr_error_name_result := 'Сохранение периода';
              MonitorError;
            end;
          end;
          sp_query_save.Free;

        end else begin
          sp_query_error := TADOStoredProc.Create(nil);
          sp_query_error.Connection := connect_save;
          sp_query_error.ProcedureName := 'sp_query_error';

          sp_query_error.Parameters.Refresh;
          sp_query_error.Parameters.ParamByName('@query_id'    ).Value := query_id;
          sp_query_error.Parameters.ParamByName('@set_server'  ).Value := False;
          sp_query_error.Parameters.ParamByName('@error_cod'   ).Value := Fstr_error_cod_result;
          sp_query_error.Parameters.ParamByName('@error_name'  ).Value := Fstr_error_name_result;
          sp_query_error.Parameters.ParamByName('@error_param' ).Value := Fstr_error_result;
          sp_query_error.ExecProc;

          sp_query_error.Free;
          MonitorError;
        end;

        connect_save.Free;

        sp_query_get.Next;
      end;

      res := True;

    except
      on E: Exception do begin
        Fstr_error_cod_result  := '300';
        Fstr_error_result      := E.Message;
        Fstr_error_name_result := 'Загрузка периодов';
        res := False;
        MonitorError;
      end;
    end;
  finally
    connect.Free;
    sp_query_get.Free;
  end;

  Result := res;
end;

function TThreadEtran2.LoadNSI(): boolean;
var
      connect_etran : TADOConnection;
        connect_lis : TADOConnection;
            Q_etran : TADOQuery;
             Q_lis1 : TADOQuery;
             Q_lis2 : TADOQuery;
                res : boolean;
sp_vagon_nsi_modify : TADOStoredProc;
      res_get_etran : boolean;
           send_xml : WideString;
begin
 Fcnt_load_docs := 0;
  try
    try
      MonitorInsert(RGB(255, 250, 229), 'Загрузка НСИ вагонов...', 'Загрузка НСИ вагонов');

      connect_etran := TADOConnection.Create(nil);
      connect_etran.ConnectionString := Fconnect_str;
      connect_etran.LoginPrompt    := False;
      connect_etran.KeepConnection := False;

      connect_lis := TADOConnection.Create(nil);
      connect_lis.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=admin_nkk;Password=;Initial Catalog=lis1;Data Source=213.219.228.42;';
      connect_lis.LoginPrompt    := False;
      connect_lis.KeepConnection := False;

      Q_etran := TADOQuery.Create(nil);
      Q_etran.Connection := connect_etran;
      Q_etran.SQL.Add('SELECT top 1 * FROM view_connect WHERE set_load = 1 ORDER BY connect_id');
      Q_etran.Open;

      Q_lis2 := TADOQuery.Create(nil);
      Q_lis2.Connection := connect_lis;

      sp_vagon_nsi_modify := TADOStoredProc.Create(nil);
      sp_vagon_nsi_modify.Connection := connect_lis;
      sp_vagon_nsi_modify.ProcedureName := 'sp_vagon_nsi_modify';


      Q_lis1 := TADOQuery.Create(nil);
      Q_lis1.Connection := connect_lis;
      Q_lis1.SQL.Add('SELECT	DISTINCT users_group_id, date_load');
      Q_lis1.SQL.Add('FROM	lis1..vagon');
      Q_lis1.SQL.Add('      inner join lis1..global_id on vagon.vagon_id = global_id.global_id');
      Q_lis1.SQL.Add('      inner join lis1..users on global_id.users_owner = users.users_id');
      Q_lis1.SQL.Add('      left join  lis1..vagon_nsi on VAGON.vagon_id = vagon_nsi.vagon_id');
      Q_lis1.SQL.Add('WHERE	isnull(datediff(hh, getdate(), vagon_nsi.date_load), 25) >= 25');
      Q_lis1.SQL.Add('ORDER BY 1');
      Q_lis1.Open;
      while not Q_lis1.Eof do begin

        Q_lis2.SQL.Clear;
        Q_lis2.SQL.Add('SELECT	top 300 num_vagon');
        Q_lis2.SQL.Add('FROM	lis1..vagon');
        Q_lis2.SQL.Add('      inner join lis1..global_id on vagon.vagon_id = global_id.global_id');
        Q_lis2.SQL.Add('      inner join lis1..users on global_id.users_owner = users.users_id');
        Q_lis2.SQL.Add('      left join  lis1..vagon_nsi on VAGON.vagon_id = vagon_nsi.vagon_id');
        Q_lis2.SQL.Add('WHERE	isnull(datediff(hh, getdate(), vagon_nsi.date_load), 24*7) >= 24*7');
        Q_lis2.SQL.Add('      and users_group_id = ' + Q_lis1.FieldByName('users_group_id').AsString);
        Q_lis2.SQL.Add('ORDER BY 1');
        Q_lis2.Open;

        if Q_lis2.RecordCount > 0 then begin
          send_xml := '<getCarNSI version="1.0">';
          while not Q_lis2.Eof do begin

            send_xml := send_xml + '<car><carNumber value="' + Q_lis2.FieldByName('num_vagon').AsString + '"/></car>';

            Fcnt_load_docs := Fcnt_load_docs + 1;
            Q_lis2.Next;
          end;
          send_xml := send_xml + '<useLocalNsi/>';
          send_xml := send_xml + '<useMod11/>';
//          send_xml := send_xml + '<useOwnerHist/>';
          send_xml := send_xml + '</getCarNSI>';

          res_get_etran := GetEtran(Q_etran.FieldByName('etran_ip').AsString,
                                    Q_etran.FieldByName('etran_login').AsString,
                                    PasswordFromCode(Q_etran.FieldByName('etran_password').AsAnsiString),
                                    send_xml);


          if res_get_etran then begin
            sp_vagon_nsi_modify.Close;
            sp_vagon_nsi_modify.Parameters.Refresh;
            sp_vagon_nsi_modify.Parameters.ParamByName('@vagon_nsi_xml' ).Value := send_xml;
            sp_vagon_nsi_modify.Parameters.ParamByName('@users_group_id').Value := Q_lis1.FieldByName('users_group_id').AsInteger;
            sp_vagon_nsi_modify.ExecProc;
          end;

        end;


        Q_lis1.Next;
      end;

      res := True;
    except
      on E: Exception do begin
        Fstr_error_cod_result  := '485';
        Fstr_error_result      := E.Message;
        Fstr_error_name_result := 'Сохранение НСИ вагона';
        res := False;
        MonitorError;
      end;
    end;
  finally
    Q_lis1.Free;
    Q_lis2.Free;
    sp_vagon_nsi_modify.Free;
    connect_etran.Free;
    connect_lis.Free;
  end;

  Result := res;
end;

function TThreadEtran2.LoadDocument(): boolean;
 var         connect : TADOConnection;
       connect_save : TADOConnection;
  sp_query_docs_get : TADOStoredProc;
//  sp_query_docs_get : TADOQuery;
 sp_query_docs_save : TADOStoredProc;
     sp_query_error : TADOStoredProc;
                res : boolean;
      res_get_etran : boolean;
           send_xml : WideString;
      query_docs_id : integer;
           dt_start : TDateTime;
   dt_etran, dt_sql : integer;
   p : integer;
begin
  Fcnt_load_docs := 0;
  try
    try
      p := 0;
      MonitorInsert(RGB(255, 250, 229), 'Загрузка документов...', 'Загрузка документов');

      connect := TADOConnection.Create(nil);
      connect.ConnectionString := Fconnect_str;
      connect.LoginPrompt    := False;
      connect.KeepConnection := False;

      p := 1;
//      sp_query_docs_get := TADOQuery.Create(nil);
//      sp_query_docs_get.Connection := connect;
//      sp_query_docs_get.SQL.Add(GetProcedureFromRes('sp_query_docs_get'));
//      sp_query_docs_get.Open;

      sp_query_docs_get := TADOStoredProc.Create(nil);
      sp_query_docs_get.Connection := connect;
      sp_query_docs_get.ProcedureName := 'sp_query_docs_get';
      sp_query_docs_get.Parameters.Refresh;
      sp_query_docs_get.Open;

      p := 2;

      MonitorUpdate(RGB(229, 255, 232));
      Fcnt_load_docs := sp_query_docs_get.RecordCount;

      p := 3;

      while not sp_query_docs_get.Eof do begin

        LisSleep;
        Fstatus_str :=  'Загрузка документа: ' +
                        sp_query_docs_get.FieldByName('users_group_name').AsString + ' ' +
                        sp_query_docs_get.FieldByName('doc_type_name').AsString + ' ID ' + sp_query_docs_get.FieldByName('doc_id').AsString + #10 +
                        'Обработано документов ' + IntToStr(sp_query_docs_get.RecNo) + ' из ' + IntToStr(sp_query_docs_get.RecordCount) + '...';
        Synchronize(SetStatus);

        p := 4;

        MonitorInsert(RGB(255, 250, 229), 'Загрузка: ' +
        sp_query_docs_get.FieldByName('users_group_name').AsString + ' ' +
        sp_query_docs_get.FieldByName('doc_type_name').AsString + ' ID ' + sp_query_docs_get.FieldByName('doc_id').AsString
        , 'Загрузка документа');

        p := 5;

        query_docs_id := sp_query_docs_get.FieldByName('query_docs_id').AsInteger;
        send_xml      := sp_query_docs_get.FieldByName('send_xml').AsString;

        p := 6;

        // Получили список
        dt_start := Now;
        res_get_etran := GetEtran(sp_query_docs_get.FieldByName('etran_ip').AsString,
                                  sp_query_docs_get.FieldByName('etran_login').AsString,
                                  PasswordFromCode(sp_query_docs_get.FieldByName('etran_password').AsAnsiString),
                                  send_xml);
        dt_etran := MilliSecondsBetween(Now, dt_start);

        p := 7;

        // Сохранили список
        connect_save := TADOConnection.Create(nil);
        connect_save.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+ sp_query_docs_get.FieldByName('db_users_name').AsString + ';' +
                                         'Password='''+ PasswordFromCode(sp_query_docs_get.FieldByName('db_password').AsAnsiString) + ''';' +
                                         'Initial Catalog='+ sp_query_docs_get.FieldByName('db_name').AsString + ';' +
                                         'Data Source='+ sp_query_docs_get.FieldByName('db_server').AsString +';';;
        connect_save.LoginPrompt      := False;
        connect_save.KeepConnection   := False;

        p := 8;

        if res_get_etran then begin
          sp_query_docs_save := TADOStoredProc.Create(nil);
          sp_query_docs_save.Connection := connect_save;
          sp_query_docs_save.ProcedureName := 'sp_query_docs_save';

          sp_query_docs_save.Parameters.Refresh;
          sp_query_docs_save.Parameters.ParamByName('@query_docs_id' ).Value := query_docs_id;
          sp_query_docs_save.Parameters.ParamByName('@doc_xml'       ).Value := send_xml;

          p := 9;
          try
            dt_start := Now;
            sp_query_docs_save.ExecProc;
            dt_sql := MilliSecondsBetween(Now, dt_start);
            MonitorUpdate(RGB(229, 255, 232), 'SOAP:' + IntToStr(dt_etran) + 'ms  SQL:' + IntToStr(dt_sql) + 'ms');

            p := 10;
          except
            on E: Exception do begin
              Fstr_error_cod_result  := '401';
              Fstr_error_result      := E.Message;
              Fstr_error_name_result := 'Сохранение документа';
              MonitorError;
            end;
          end;
          sp_query_docs_save.Free;

          p := 11;
        end else begin
          sp_query_error := TADOStoredProc.Create(nil);
          sp_query_error.Connection := connect_save;
          sp_query_error.ProcedureName := 'sp_query_error';

          sp_query_error.Parameters.Refresh;
          sp_query_error.Parameters.ParamByName('@query_id'    ).Value := query_docs_id;
          sp_query_error.Parameters.ParamByName('@set_server'  ).Value := False;
          sp_query_error.Parameters.ParamByName('@error_cod'   ).Value := Fstr_error_cod_result;
          sp_query_error.Parameters.ParamByName('@error_name'  ).Value := Fstr_error_name_result;
          sp_query_error.Parameters.ParamByName('@error_param' ).Value := Fstr_error_result;
          sp_query_error.ExecProc;

          sp_query_error.Free;
          MonitorError;
        end;

        connect_save.Free;

        sp_query_docs_get.Next;
      end;

      res := True;

    except
      on E: Exception do begin
        Fstr_error_cod_result  := '400';
        Fstr_error_result      := E.Message + ':' + connect_save.ConnectionString;
        Fstr_error_name_result := 'Сохранение документа line = ' + p.ToString;
        res := False;
        MonitorError;
      end;
    end;
  finally
    connect.Free;
    sp_query_docs_get.Free;
  end;

  Result := res;
end;

function TThreadEtran2.RejectECP(): boolean;
var         connect : TADOConnection;
           send_xml : WideString;
sp_etran_ecp_modify : TADOStoredProc;
          Q, Q2, Q3 : TADOQuery;
                res : boolean;
begin
  res := True;
//  if (Ftime_send = 0) OR (MinutesBetween(now, Ftime_send) > 30) then begin
    try
      try
        MonitorInsert(RGB(255, 250, 229), 'Откат накладных...', 'Откат накладных');

        connect := TADOConnection.Create(nil);
        connect.ConnectionString := Fconnect_str;
        connect.LoginPrompt    := False;
        connect.KeepConnection := False;

        Q := TADOQuery.Create(nil);
        Q.Connection := connect;
        Q.SQL.Add('select etran_ecp_id, invoiceID from etran_ecp where invNeedForECP = 2 and date_send is not null and invoiceState = ''Заготовка'' and invoiceID is not null');
        Q.Open;

        Q3 := TADOQuery.Create(nil);
        Q3.Connection := connect;


        Q2 := TADOQuery.Create(nil);
        Q2.Connection := connect;
        Q2.SQL.Add('select top 1 etran_login, etran_password, etran_ip from etran_connect_new where set_load = 1');
        Q2.Open;



        MonitorUpdate(RGB(229, 255, 232));
        Fcnt_load_docs := Q.RecordCount;

        while not Q.Eof do begin

          Fstatus_str :=  'Откат накладных: ' + #10 +
                          'Обработано документов ' + IntToStr(Q.RecNo) + ' из ' + IntToStr(Q.RecordCount) + '...';
          Synchronize(SetStatus);
          MonitorInsert(RGB(255, 250, 229), 'Отправка:---', 'Отправка накладных');

          send_xml := '<getInvoice version="1.0"><invoiceID value="' + Q.FieldByName('invoiceID').AsString + '"/><useMod11/></getInvoice>';

          GetEtran(Q2.FieldByName('etran_ip').AsString,
                                  Q2.FieldByName('etran_login').AsString,
                                  PasswordFromCode(Q2.FieldByName('etran_password').AsAnsiString),
                                  send_xml);

          sp_etran_ecp_modify := TADOStoredProc.Create(nil);
          sp_etran_ecp_modify.Connection := connect;
          sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
          sp_etran_ecp_modify.Parameters.Refresh;
          sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'       ).Value := Q.FieldByName('etran_ecp_id').Value;
          sp_etran_ecp_modify.Parameters.ParamByName('@type_action'        ).Value := 204;
          sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml').Value := send_xml;
          sp_etran_ecp_modify.ExecProc;
          sp_etran_ecp_modify.Free;


          Q3.SQL.Clear;
          Q3.SQL.Add('select etran_ecp_id, invoiceID from etran_ecp where invNeedForECP = 2 and date_send is not null and invoiceState = ''Заготовка'' and invoiceID is not null and etran_ecp_id = ' + Q.FieldByName('etran_ecp_id').AsString);
          Q3.Open;
          if Q3.RecordCount > 0 then begin
            send_xml := '<rejectECP version="1.0"><docID value="' + Q.FieldByName('invoiceID').AsString + '"/><remark value=""/></rejectECP>';

            GetEtran(Q2.FieldByName('etran_ip').AsString,
                                    Q2.FieldByName('etran_login').AsString,
                                    PasswordFromCode(Q2.FieldByName('etran_password').AsAnsiString),
                                    send_xml);
          end;


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
      Q2.Free;
      Q3.Free;
    end;

//    Ftime_send := Now;
//  end;
  Result := res;
end;


function TThreadEtran2.SendInvoice(): boolean;
var         connect : TADOConnection;
           ECP, TSP : WideString;
         send_query : WideString;
sp_etran_ecp_modify : TADOStoredProc;
                  Q : TADOQuery;
                res : boolean;
begin
  res := True;
  if (Ftime_send = 0) OR (MinutesBetween(now, Ftime_send) > 30) then begin
    try
      try
        MonitorInsert(RGB(255, 250, 229), 'Отправка накладных...', 'Отправка накладных');

        connect := TADOConnection.Create(nil);
        connect.ConnectionString := Fconnect_str;
        connect.LoginPrompt    := False;
        connect.KeepConnection := False;

        Q := TADOQuery.Create(nil);
        Q.Connection := connect;
        Q.SQL.Add('SELECT etran_ecp_id, etran_ecp_xml, users_owner_id FROM etran_ecp inner join etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id WHERE date_send is null and set_automat = 1');
        Q.Open;

        MonitorUpdate(RGB(229, 255, 232));
        Fcnt_load_docs := Q.RecordCount;

        while not Q.Eof do begin

          Fstatus_str :=  'Отправка накладных: ' + #10 +
                          'Обработано документов ' + IntToStr(Q.RecNo) + ' из ' + IntToStr(Q.RecordCount) + '...';
          Synchronize(SetStatus);
          MonitorInsert(RGB(255, 250, 229), 'Отправка:---', 'Отправка накладных');

          send_query := Q.FieldByName('etran_ecp_xml').AsString;
//          GetIEtranSys(False,'http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap').GetBlock('Ильюта', 'Fhn.if71', send_query, ECP, TSP);


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

    Ftime_send := Now;
  end;
  Result := res;
end;



procedure TThreadEtran2.SetStatus;
begin
  fmEtranMain.Label2.Caption := Fstatus_str;
end;

procedure TThreadEtran2.SetMonitorCLEAR;
begin
  fmEtranMain.ClientDS_Monitor.EmptyDataSet;
end;

procedure TThreadEtran2.SetMonitorPRINT;
begin
  fmEtranMain.ClientDS_Monitor.Append;
  fmEtranMain.ClientDS_Monitor.FieldByName('color'              ).Value := clWhite;
  fmEtranMain.ClientDS_Monitor.FieldByName('monitor_date_begin' ).Value := Now;
  fmEtranMain.ClientDS_Monitor.FieldByName('monitor_date_end'   ).Value := Now;
  fmEtranMain.ClientDS_Monitor.FieldByName('monitor_text'       ).Value := Fstatus_str;
  fmEtranMain.ClientDS_Monitor.FieldByName('monitor_status'     ).Value := '';
  fmEtranMain.ClientDS_Monitor.FieldByName('monitor_type'       ).Value := '';
  fmEtranMain.ClientDS_Monitor.FieldByName('monitor_font_bold'  ).Value := True;
  fmEtranMain.ClientDS_Monitor.Post;
  Fmonitor_id := fmEtranMain.ClientDS_Monitor.FieldByName('monitor_id').Value;
end;

procedure TThreadEtran2.SetMonitorINSERT;
begin
  fmEtranMain.ClientDS_Monitor.Append;
  fmEtranMain.ClientDS_Monitor.FieldByName('color'              ).Value := Fmonitor_color;
  fmEtranMain.ClientDS_Monitor.FieldByName('monitor_date_begin' ).Value := Fmonitor_date_begin;
  fmEtranMain.ClientDS_Monitor.FieldByName('monitor_date_end'   ).Value := null;
  fmEtranMain.ClientDS_Monitor.FieldByName('monitor_text'       ).Value := Fmonitor_text;
  fmEtranMain.ClientDS_Monitor.FieldByName('monitor_status'     ).Value := Fmonitor_status;
  fmEtranMain.ClientDS_Monitor.FieldByName('monitor_type'       ).Value := Fmonitor_type;
  fmEtranMain.ClientDS_Monitor.Post;
  Fmonitor_id := fmEtranMain.ClientDS_Monitor.FieldByName('monitor_id').Value;
end;

procedure TThreadEtran2.SetMonitorUPDATE;
begin
  fmEtranMain.ClientDS_Monitor.Locate('monitor_id', Fmonitor_id, []);
  fmEtranMain.ClientDS_Monitor.Edit;
  fmEtranMain.ClientDS_Monitor.FieldByName('color'              ).Value := Fmonitor_color;
  fmEtranMain.ClientDS_Monitor.FieldByName('monitor_date_end'   ).Value := Fmonitor_date_end;
  fmEtranMain.ClientDS_Monitor.FieldByName('monitor_status'     ).Value := Fmonitor_status;
  if Fmonitor_text <> '' then begin
    fmEtranMain.ClientDS_Monitor.FieldByName('monitor_text'       ).Value := Fmonitor_text;
  end;
  fmEtranMain.ClientDS_Monitor.Post;
end;

procedure TThreadEtran2.SetError;
begin
  //if Fstr_error_cod_result <> '' then begin
    fmEtranMain.ClientDS_Error.Append;
    fmEtranMain.ClientDS_Error.FieldByName('error_date'    ).Value := Now;
    fmEtranMain.ClientDS_Error.FieldByName('error_cod'     ).Value := Fstr_error_cod_result;
    fmEtranMain.ClientDS_Error.FieldByName('error_message' ).Value := Fstr_error_result;
    fmEtranMain.ClientDS_Error.FieldByName('error_name'    ).Value := Fstr_error_name_result;
    fmEtranMain.ClientDS_Error.Post;
//  end;
  Fstr_error_cod_result   := '';
  Fstr_error_result       := '';
  Fstr_error_name_result  := '';
end;

procedure TThreadEtran2.MonitorInsert(color: integer; text: string; monitor_type: string);
begin
  Fmonitor_color      := color;
  Fmonitor_date_begin := Now;
  Fmonitor_date_end   := 0;
  Fmonitor_text       := text;
  Fmonitor_status     := 'Выполняется';
  Fmonitor_type       := monitor_type;
  Synchronize(SetMonitorINSERT);
end;

procedure TThreadEtran2.MonitorClear();
begin
  Synchronize(SetMonitorCLEAR);
end;

procedure TThreadEtran2.MonitorUpdate(color: integer; text: string = '');
var cl : TColor;
begin
  // RGB(229, 255, 232) - green
  // RGB(255, 250, 229) - yellow
  // RGB(255, 229, 229) - red
  // RGB(229, 233, 255) - blue
  Fmonitor_color      := color; //RGB(229, 233, 255);
  Fmonitor_date_end   := Now;
  Fmonitor_status     := 'Завершено';
  if text <> '' then Fmonitor_text := text;
  Synchronize(SetMonitorUPDATE);
end;

procedure TThreadEtran2.MonitorError();
begin
  Fmonitor_color      := RGB(255, 229, 229);
  Fmonitor_date_end   := Now;
  Fmonitor_status     := 'Ошибка';
  Synchronize(SetMonitorUPDATE);
  Synchronize(SetError);
end;


function  TThreadEtran2.GetProcedureFromRes(procedure_name: string): string;
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




end.
