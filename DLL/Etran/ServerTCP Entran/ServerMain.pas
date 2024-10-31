unit ServerMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScktComp, ComCtrls, DB, ADODB, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, StrUtils, ExtCtrls, xmldom,
  XMLIntf, msxmldom, XMLDoc, AppEvnts;

type
  TForm1 = class(TForm)
    ServerSocket1: TServerSocket;
    Panel1: TPanel;
    RichEdit1: TRichEdit;
    TrayIcon1: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    Timer1: TTimer;
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure FormCreate(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  Form1: TForm1;

implementation

uses SOAP;


{$R *.dfm}

procedure TForm1.ApplicationEvents1Minimize(Sender: TObject);
begin
   TrayIcon1.Visible := True;
   Form1.Hide;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ServerSocket1.Active := True;
end;

procedure TForm1.ServerSocket1ClientRead(Sender: TObject; Socket: TCustomWinSocket);
var
        msg : WideString;
        buf : array [0..412872] of Byte;
    buf_len : integer;
   ECP, TSP : WideString;
    connect : TADOConnection;
          Q : TADOQuery;
 send_query : WideString;
  FIO_users : string;
sp_etran_ecp_modify : TADOStoredProc;
      s_save : RawByteString;
    log_file : TFileStream;
    users_owner_id : integer;
    set_invoice : boolean;
    set_claim   : boolean;
begin
  try
    buf_len := Socket.ReceiveLength;
    Socket.ReceiveBuf(buf,buf_len);
    buf[buf_len] := 0;
    msg := PAnsiChar(@buf);

    if LeftStr(msg,3) = 'ECP' then begin
      try
        RichEdit1.Lines.Add('ECP');
        if RichEdit1.Lines.Count > 10 then RichEdit1.Lines.Clear;

        msg := RightStr(msg, Length(msg) - 3);
        FIO_users := Trim(LeftStr(msg, 20));
        msg := RightStr(msg, Length(msg) - 20);

        connect := TADOConnection.Create(nil);
        connect.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Info=True;User ID=sa;Initial Catalog=lis_etran;Data Source=172.16.200.29;';
        connect.ConnectionTimeout := 100;
        connect.KeepConnection := False;
        connect.LoginPrompt := False;
        connect.Connected := True;


        Q := TADOQuery.Create(nil);
        Q.Connection := connect;
        Q.SQL.Add('SELECT etran_ecp_xml, users_owner_id FROM etran_ecp inner join etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id WHERE etran_ecp_id = ' + msg);
        Q.Open;
        if Q.RecordCount = 0 then begin
          Q.SQL.Clear;
          Q.SQL.Add('SELECT	etran_ecp_xml, users_owner_id FROM etran_claim_ecp inner join etran_global_id on etran_claim_ecp.etran_ecp_claim_id = etran_global_id.global_id WHERE etran_ecp_claim_id = ' + msg);
          Q.Open;
          set_invoice := False;
          set_claim   := True;
        end else begin
          set_invoice := True;
          set_claim   := False;
        end;

        send_query     := Q.FieldByName('etran_ecp_xml').AsString;
        users_owner_id := Q.FieldByName('users_owner_id').AsInteger;
        Q.Free;


        if users_owner_id = 1 then
          s_save := #13#10 + FormatDateTime('dd.mm.yyyy hh:nn:ss', Now()) + ';http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap;¬асильевћ¬;Ufpghjv19;' + send_query;

        if users_owner_id = 15 then
          s_save := #13#10 + FormatDateTime('dd.mm.yyyy hh:nn:ss', Now()) + ';http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap;mendel3;NfkfyjdfNU02;' + send_query;

        if not FileExists('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv') then
          log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmCreate)
        else
          log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmOpenReadWrite);

        log_file.Seek(0, soFromEnd);
        log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));
        log_file.Free;


        if users_owner_id = 1 then
          GetIEtranSys(False,'http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap').GetBlock('¬асильевћ¬', 'Ufpghjv19', send_query, ECP, TSP);

        if users_owner_id = 15 then
          GetIEtranSys(False,'http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap').GetBlock('mendel3', 'NfkfyjdfNU02', send_query, ECP, TSP);

        s_save := ';Ok';
        if not FileExists('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv') then
          log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmCreate)
        else
          log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmOpenReadWrite);

        log_file.Seek(0, soFromEnd);
        log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));
        log_file.Free;

        send_query := ReplaceStr(send_query, '&#', '');

        if set_invoice = True then begin
          sp_etran_ecp_modify := TADOStoredProc.Create(nil);
          sp_etran_ecp_modify.Connection := connect;
          sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';
          sp_etran_ecp_modify.Parameters.Refresh;
          sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := StrToInt(msg);
          sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 3;
          sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
          sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml').Value := send_query;
          sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send').Value := FIO_users;
          sp_etran_ecp_modify.ExecProc;
        end;

        if set_claim = True then begin
          sp_etran_ecp_modify := TADOStoredProc.Create(nil);
          sp_etran_ecp_modify.Connection := connect;
          sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_claim_modify';
          sp_etran_ecp_modify.Parameters.Refresh;
          sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_claim_id').Value := StrToInt(msg);
          sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 3;
          sp_etran_ecp_modify.Parameters.ParamByName('@date_send'   ).Value := Now;
          sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_reply_xml').Value := send_query;
          sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_send').Value := FIO_users;
          sp_etran_ecp_modify.ExecProc;
        end;

        msg := 'ok';
        connect.Free;
        sp_etran_ecp_modify.Free;
      except
        on E: Exception do begin
          msg := E.Message;
          connect.Free;
          Q.Free;
        end;
      end;
    end else begin
      try
        RichEdit1.Lines.Add('NoECP');
        if RichEdit1.Lines.Count > 10 then RichEdit1.Lines.Clear;

        s_save := #13#10 + FormatDateTime('dd.mm.yyyy hh:nn:ss', Now()) + ';http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap;абашинu;etran_sfh;' + msg;
        if not FileExists('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv') then
          log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmCreate)
        else
          log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmOpenReadWrite);

        log_file.Seek(0, soFromEnd);
        log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));
        log_file.Free;

        GetIEtranSys(False,'http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap').GetBlock('абашин', 'etran_sfh', msg, ECP, TSP);

        s_save := ';Ok';
        if not FileExists('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv') then
          log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmCreate)
        else
          log_file := TFileStream.Create('c:\ETRAN_ECP_LOG\log_ecp' + FormatDateTime('yyyymmdd', Now()) + '.csv', fmOpenReadWrite);

        log_file.Seek(0, soFromEnd);
        log_file.WriteBuffer(Pointer(s_save)^, Length(s_save));
        log_file.Free;

        msg := ReplaceStr(msg    ,'&#','');
      except
        on E: Exception do begin
          msg := E.Message;
        end;
      end;
    end;




    Socket.SendText(RightStr('0000000000' + IntToStr(Length(msg)),10) + ':' + msg);
  except
    on E: Exception do begin
      RichEdit1.Lines.Add('E:' + E.Message);
    end;
  end;
end;



procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
end;

procedure TForm1.TrayIcon1Click(Sender: TObject);
begin
  TrayIcon1.Visible := False;
  Form1.Show;
  Application.Restore;
  Application.BringToFront;
end;

end.
