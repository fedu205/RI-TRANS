unit MonitorMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  Data.DBXCommon, IPPeerClient, Data.SqlExpr, Winapi.MMSystem, thread,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC;

type
  TfmMonitorMain = class(TForm)
    Panel1: TPanel;
    Button2: TButton;
    SQLConnection1: TSQLConnection;
    Panel7: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxMemo1: TcxMemo;
    cxMemo2: TcxMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    Fconnect_string : string;
    FThread : TThreadEtran2;
  public
    { Public declarations }
  end;

var
  fmMonitorMain: TfmMonitorMain;

implementation

{$R *.dfm}

uses EtranSOAP, ECPServerMethodsClient;

function GetEtran(ip: string; login: string; password: string; var query_xml: string; var message_error: string): Boolean;
var res : Boolean;
begin
  try
    GetIEtranSys(False,ip).GetBlock(login, password, query_xml);
    res := True;
    message_error := '';
  except
    on E: Exception do begin
      message_error := 'Запрос ЭТРАН (GetIEtranSys.GetBlock)' + E.Message;
      res := False;
    end;
  end;

  Result := res;
end;


function CreateWndGetECPSignAndSend(etran_ip: string; doc_id: integer): variant;
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
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
  end;
end;


function CreateWndSendDocs(etran_ip: string; doc_text: string): variant;
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
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
  end;
end;

procedure SetSound;
begin
  sndPlaySound('c:\WARNING1.WAV', SND_NODEFAULT Or SND_ASYNC);
  sleep(2000);
end;


procedure TfmMonitorMain.Button1Click(Sender: TObject);
begin
  Button1.Enabled := False;
  FThread := TThreadEtran2.Create('Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Info=True;User ID=sa;Initial Catalog=lis_etran;Data Source=172.16.200.209;');
end;

procedure TfmMonitorMain.Button2Click(Sender: TObject);
var connect : TADOConnection;
    Q : TADOQuery;
    message_error : string;
    query_xml     : string;
    sp_etran_ecp_monitor_modify : TADOStoredProc;
    sp_etran_ecp_modify : TADOStoredProc;
    v : Variant;
begin
  cxmemo1.Lines.Clear;

  connect := TADOConnection.Create(nil);
  connect.ConnectionString := 'Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Info=True;User ID=sa;Initial Catalog=lis_etran;Data Source=srv-lis2;';
  connect.KeepConnection := False;
  connect.LoginPrompt := False;
  connect.Connected := True;

  Q := TADOQuery.Create(nil);
  Q.Connection := connect;

  sp_etran_ecp_monitor_modify := TADOStoredProc.Create(nil);
  sp_etran_ecp_monitor_modify.Connection := connect;
  sp_etran_ecp_monitor_modify.ProcedureName := 'sp_etran_ecp_monitor_modify';

  sp_etran_ecp_modify := TADOStoredProc.Create(nil);
  sp_etran_ecp_modify.Connection := connect;
  sp_etran_ecp_modify.ProcedureName := 'sp_etran_ecp_modify';

  //////////////////////////////////////////////////////////////////////////////
  cxMemo1.Lines.Add('Автоотправка');
  Q.SQL.Clear;
  Q.SQL.Add('SELECT	etran_ecp_id, etran_ecp_xml, users_owner_id');
  Q.SQL.Add('FROM   etran_ecp');
  Q.SQL.Add('       inner join etran_global_id on etran_ecp.etran_ecp_id = etran_global_id.global_id');
  Q.SQL.Add('WHERE  set_error = 0 and date_send is null and set_automat = 1');
  Q.Open;
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

    cxMemo1.Lines.Add('Отправка накладной ' + Q.FieldByName('etran_ecp_id').AsString);
    Q.Next;
  end;


  //////////////////////////////////////////////////////////////////////////////
//  cxMemo1.Lines.Add('Запрос статусов (Список)');
//  Q.SQL.Clear;
//  Q.SQL.Add('SELECT max(result_OperID) operid FROM etran_ecp_monitor WHERE type_query = ''invoice''');
//  Q.Open;
//
//  message_error := '';
//  query_xml     := '<invoiceStatus version="1.0"><OperId value="' + Q.FieldByName('operid').AsString + '"/><useSender/><useRecip/><usePayer/><useAll/></invoiceStatus>';
//
//  if GetEtran('http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap', 'абашин', 'etran_sfh', query_xml, message_error) then begin
//    sp_etran_ecp_monitor_modify.Parameters.Refresh;
//    sp_etran_ecp_monitor_modify.Parameters.ParamByName('@type_action').Value := 0;
//    sp_etran_ecp_monitor_modify.Parameters.ParamByName('@xml'        ).Value := query_xml;
//    sp_etran_ecp_monitor_modify.ExecProc;
//  end;


  cxMemo1.Lines.Add('Запрос статусов (Поштучно)');
  Q.SQL.Clear;
  Q.SQL.Add('SELECT	invNumber, etran_ecp_id FROM etran_ecp WHERE set_check = 1 AND check_end is null');
  Q.Open;

  while not Q.Eof do begin
    message_error := '';
    query_xml     := '<invoiceStatus version="1.0"><InvNumber value="' + Q.FieldByName('invNumber').AsString + '"/><useSender/><usePayer/><useRecip/><useAll/></invoiceStatus>';

    if GetEtran('http://10.248.35.14:8092/EtranServer/EtranLR.dll/soap', 'абашин', 'etran_sfh', query_xml, message_error) then begin
      sp_etran_ecp_modify.Parameters.Refresh;
      sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'    ).Value := Q.FieldByName('etran_ecp_id').Value;
      sp_etran_ecp_modify.Parameters.ParamByName('@type_action'     ).Value := 17;
      sp_etran_ecp_modify.Parameters.ParamByName('@xml_info'        ).Value := query_xml;
      sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_create').Value := 'AUTO-CHECK';
      sp_etran_ecp_modify.ExecProc;
    end;
    cxMemo1.Lines.Add('Обновление статуса ' + Q.FieldByName('invNumber').AsString);
    Q.Next;
  end;


  //////////////////////////////////////////////////////////////////////////////
  cxMemo1.Lines.Add('Подписание');
  Q.SQL.Clear;
  Q.SQL.Add('SELECT	invNumber, etran_ecp_id, invoiceID, invoiceState, invoiceStateID');
  Q.SQL.Add('FROM	  etran_ecp');
  Q.SQL.Add('WHERE	set_check = 1 AND check_end is null AND invoiceStateID = 1 AND set_error_ecp = 0');
  Q.Open;
  while not Q.Eof do begin
    v := CreateWndGetECPSignAndSend('172.16.200.129', Q.FieldByName('invoiceID').AsInteger);
    if v[0] = False then begin
      sp_etran_ecp_modify.Parameters.Refresh;
      sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id').Value := Q.FieldByName('etran_ecp_id').Value;
      sp_etran_ecp_modify.Parameters.ParamByName('@type_action' ).Value := 33;
      sp_etran_ecp_modify.Parameters.ParamByName('@error_ecp' ).Value := v[1];
      sp_etran_ecp_modify.ExecProc;
    end;

    cxMemo1.Lines.Add('Подписание ' + Q.FieldByName('invNumber').AsString);
    Q.Next;
  end;


  //////////////////////////////////////////////////////////////////////////////
  cxMemo1.Lines.Add('Проверка статусов');
  Q.SQL.Clear;
  Q.SQL.Add('SELECT	invNumber, etran_ecp_id, invoiceID, invoiceState, invoiceStateID ');
  Q.SQL.Add('FROM	  etran_ecp');
  Q.SQL.Add('WHERE	set_check = 1 AND check_end is null AND invoiceStateID in (2,6,89,440)');
  Q.Open;
  while not Q.Eof do begin

    sp_etran_ecp_modify.Parameters.Refresh;
    sp_etran_ecp_modify.Parameters.ParamByName('@etran_ecp_id'    ).Value := Q.FieldByName('etran_ecp_id').Value;
    sp_etran_ecp_modify.Parameters.ParamByName('@type_action'     ).Value := 18;
    sp_etran_ecp_modify.Parameters.ParamByName('@FIO_users_create').Value := 'AUTO-CHECK';
    sp_etran_ecp_modify.ExecProc;

    cxMemo1.Lines.Add('Повторное создание ' + Q.FieldByName('invNumber').AsString);
    SetSound;

    Q.Next;
  end;

  connect.Free;
  sp_etran_ecp_monitor_modify.Free;
  sp_etran_ecp_modify.Free;
  Q.Free;
end;




procedure TfmMonitorMain.FormCreate(Sender: TObject);
begin
  Fconnect_string := 'Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Info=True;User ID=sa;Initial Catalog=lis_etran;Data Source=srv-lis2;';
end;

end.
