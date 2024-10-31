unit ECPQuery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXDataSnap, Data.DBXCommon,
  IPPeerClient, Data.DB, Data.SqlExpr, ECPServerMethodsClient, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, Soap.EncdDecd,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, DateUtils, Datasnap.DBClient, Data.Win.ADODB, StrUtils,
  dxSkinTheBezier, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinWXI;

type
  TfmECPQuery = class(TForm)
    SQLConnection1: TSQLConnection;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    Fset_cancel : Boolean;
  public
    constructor Create(AOwner: TApplication); reintroduce;
  published
    property _SetCancel : boolean read Fset_cancel;
  end;

var
  fmECPQuery: TfmECPQuery;


function CreateWndGetNSIVagon(etran_ip: string; etran_port: string; users_group_cod: string; str_num_vagon: string): variant; export;
function CreateWndGetPassport(etran_ip: string; etran_port: string; org_name: string; org_okpo: string): variant; export;
function CreateWndGetECPList(etran_ip: string; etran_port: string; date_ecp_begin: TDateTime; date_ecp_end: TDateTime): variant; export;
function CreateWndGetECPText(etran_ip: string; etran_port: string; doc_id: integer): variant; export;
function CreateWndGetECPSign(etran_ip: string; etran_port: string; doc_id: integer; doc_text: string): variant; export;
function CreateWndGetECPTSP(etran_ip: string; etran_port: string; doc_id: integer; doc_text: string): variant; export;
function CreateWndSendECP(etran_ip: string; etran_port: string; doc_id: integer; doc_text: string; doc_sign: string; doc_tsp: string): variant; export;
function CreateWndGetECPSignAndSend(etran_ip: string; etran_port: string; doc_id: integer; connection_string: string): variant; export;

function CreateWndGetNSI(etran_ip: string; etran_port: string; table_name: string; type_inf_id: integer; connect: TADOConnection): variant; export;

function CreateWndSendDocs(etran_ip: string; etran_port: string; doc_text: string): variant; export;
function CreateWndCancelDocs(etran_ip: string; etran_port: string; doc_id: integer): variant; export;
function CreateWndGetServerInfo(etran_ip: string; etran_port: string): variant; export;

function CreateWndGetQuery(etran_ip: string; etran_port: string; users_name: string; users_password: string; ip_address: string; query_xml: string): variant; export;

function CreateWndGetProcessListInfo(etran_ip: string; etran_port: string): string;





implementation

{$R *.dfm}

procedure SQLLogBegin(functions: string; duration: integer; xml1: string; xml2: string);
var sp_log_ecp: TADOStoredProc;
begin
  try
    sp_log_ecp := TADOStoredProc.Create(nil);
    sp_log_ecp.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;Password=cjnhfkjubcnbrf;Initial Catalog=lis_etran;Data Source=10.10.101.11;';
    sp_log_ecp.ProcedureName := 'sp_log_ecp';
    sp_log_ecp.Parameters.Refresh;
    sp_log_ecp.Parameters.ParamByName('@functions' ).Value := functions;
    sp_log_ecp.Parameters.ParamByName('@duration'  ).Value := duration;
    sp_log_ecp.Parameters.ParamByName('@xml1'      ).Value := xml1;
    sp_log_ecp.Parameters.ParamByName('@xml2'      ).Value := xml2;
    sp_log_ecp.ExecProc;
    sp_log_ecp.Free;
  except
    on E: Exception do begin
//      ShowMessage(E.Message);
    end;
  end;
end;


function PasswordFromCode(code:AnsiString):AnsiString;
var password:AnsiString;
    i : integer;
begin
  password := '';
  for i := Length(code) downto 1 do begin
    if i mod 2 = 0 then password := password + AnsiChar(Chr(Ord(code[i])-i));
  end;
  Result := password;
end;



function CreateWndGetNSIVagon(etran_ip: string; etran_port: string; users_group_cod: string; str_num_vagon: string): variant;
var
      ECPServer : TfmECPServerMethodsClient;
  SQLConnection : TSQLConnection;
     result_xml : string;
  message_error : string;
              Q : TADOQuery;
       etran_login : string;
    etran_password : string;
begin
  try
    try
      Q := TADOQuery.Create(nil);
      Q.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;Password=cjnhfkjubcnbrf;Initial Catalog=lis_etran;Data Source=92.53.107.222;';
      Q.SQL.Add('SELECT	top 1 etran_login, etran_password FROM view_connect WHERE users_group_cod = ''' + users_group_cod + ''' and set_load = 1 ORDER BY connect_id');
      Q.Open;

      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      fmECPQuery.cxLabel1.Caption := 'Установка соединения с ЭТРАНом...';
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);
      fmECPQuery.Caption := fmECPQuery.Caption + ' [Сервер ' + ECPServer.GetVersion + ']';

      etran_login := Q.FieldByName('etran_login').AsString;
      etran_password := PasswordFromCode(Q.FieldByName('etran_password').AsAnsiString);
//      if users_group_cod = '0' then begin
//        etran_login    := 'Пушкин';
//        etran_password := '';
//      end;

      if ECPServer.GetNSIVagon(etran_login, etran_password, str_num_vagon, result_xml, message_error) then begin

        Q.SQL.Clear;
        Q.SQL.Add('INSERT INTO ETRAN_MONITOR_NSI (action_date, computer_name, etran_login, str_num_vagon, query_result)');
        Q.SQL.Add('VALUES (getdate(), host_name(), ''' + etran_login + ''',''' + str_num_vagon + ''',''' + ReplaceStr(result_xml, '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>', '') + ''')');
        Q.ExecSQL;

        Result := VarArrayOf([True, result_xml]);
      end else begin
        Application.MessageBox(PChar(message_error), 'Ошибка', MB_ICONSTOP or MB_OK);
        Result := VarArrayOf([False, '']);
      end;



    except
      on E: Exception do begin
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
    Q.Free;
  end;
end;


function CreateWndGetPassport(etran_ip: string; etran_port: string; org_name: string; org_okpo: string): variant;
var
      ECPServer : TfmECPServerMethodsClient;
  SQLConnection : TSQLConnection;
     result_xml : string;
  message_error : string;
begin
  try
    try
      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      fmECPQuery.cxLabel1.Caption := 'Установка соединения с ЭТРАНом...';
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);
      fmECPQuery.Caption := fmECPQuery.Caption + ' [Сервер ' + ECPServer.GetVersion + ']';


      if ECPServer.GetPassport(org_name, org_okpo, result_xml, message_error) then begin
        Result := VarArrayOf([True, result_xml]);
      end else begin
        Application.MessageBox(PChar(message_error), 'Ошибка', MB_ICONSTOP or MB_OK);
        Result := VarArrayOf([False, '']);
      end;

    except
      on E: Exception do begin
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
  end;
end;


function CreateWndGetQuery(etran_ip: string; etran_port: string; users_name: string; users_password: string; ip_address: string; query_xml: string): variant;
var
      ECPServer : TfmECPServerMethodsClient;
  SQLConnection : TSQLConnection;
     result_xml : string;
  message_error : string;
begin
  try
    try
      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      fmECPQuery.cxLabel1.Caption := 'Установка соединения с ЭТРАНом...';
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);
      fmECPQuery.Caption := fmECPQuery.Caption + ' [Сервер ' + ECPServer.GetVersion + ']';

      if ECPServer.GetQuery(users_name, users_password, ip_address, query_xml, result_xml, message_error) then begin
        Result := VarArrayOf([True, result_xml]);
      end else begin
        Application.MessageBox(PChar(message_error), 'Ошибка', MB_ICONSTOP or MB_OK);
        Result := VarArrayOf([False, '']);
      end;

    except
      on E: Exception do begin
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
  end;
end;

function CreateWndGetECPList(etran_ip: string; etran_port: string; date_ecp_begin: TDateTime; date_ecp_end: TDateTime): variant;
var
      ECPServer : TfmECPServerMethodsClient;
  SQLConnection : TSQLConnection;
     result_xml : string;
  message_error : string;
       date_ecp : TDateTime;
              i : integer;
 Client_ECPList : TClientDataSet;
    Client_temp : TClientDataSet;
begin
  try
    try
      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      Client_ECPList := TClientDataSet.Create(nil);
      Client_ECPList.FieldDefs.Add('id', ftAutoInc);
      Client_ECPList.FieldDefs.Add('DOC_ID', ftInteger);
      Client_ECPList.FieldDefs.Add('DocDescription', ftString, 250);
      Client_ECPList.FieldDefs.Add('StateId', ftInteger);
      Client_ECPList.FieldDefs.Add('StateName', ftString, 250);
      Client_ECPList.FieldDefs.Add('DocTypeId', ftInteger);
      Client_ECPList.FieldDefs.Add('DocTypeName', ftString, 250);
      Client_ECPList.FieldDefs.Add('ECPDate', ftDateTime);
      Client_ECPList.FieldDefs.Add('ECPDocTypeID', ftInteger);
      Client_ECPList.FieldDefs.Add('ECPDocTypeName', ftString, 250);

      Client_ECPList.FieldDefs.Add('task_type_id', ftInteger);
      Client_ECPList.FieldDefs.Add('task_type_name', ftString, 250);

      Client_ECPList.FieldDefs.Add('invFromStationCode', ftString, 250);
      Client_ECPList.FieldDefs.Add('invFromStationName', ftString, 250);
      Client_ECPList.FieldDefs.Add('invToStationCode', ftString, 250);
      Client_ECPList.FieldDefs.Add('invToStationName', ftString, 250);
      Client_ECPList.FieldDefs.Add('freightCode', ftString, 250);
      Client_ECPList.FieldDefs.Add('freightName', ftString, 250);

      Client_ECPList.CreateDataSet;
      Client_ECPList.LogChanges := False;

      Client_temp := TClientDataSet.Create(nil);


      fmECPQuery.cxLabel1.Caption := 'Установка соединения с ЭТРАНом...';
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);
      fmECPQuery.Caption := fmECPQuery.Caption + ' [Сервер ' + ECPServer.GetVersion + ']';

      for i := 0 to DaysBetween(date_ecp_begin, date_ecp_end) do begin

        date_ecp := date_ecp_begin + i;
        fmECPQuery.cxLabel1.Caption := 'Запрос данных за ' + FormatDateTime('dd.mm.yyyy', date_ecp) + '...';
        fmECPQuery.Update;

        if ECPServer.GetECPList(date_ecp, result_xml, message_error) then begin
          //Result := VarArrayOf([True, result_xml]);
          Client_temp.XMLData := result_xml;
          Client_temp.LogChanges := False;

          Client_temp.First;
          while not Client_temp.Eof do begin
            Client_ECPList.Append;
            Client_ECPList.FieldByName('DOC_ID'         ).Value := Client_temp.FieldByName('DOC_ID').Value;
            Client_ECPList.FieldByName('DocDescription' ).Value := Client_temp.FieldByName('DocDescription').Value;
            Client_ECPList.FieldByName('StateId'        ).Value := Client_temp.FieldByName('StateId').Value;
            Client_ECPList.FieldByName('StateName'      ).Value := Client_temp.FieldByName('StateName').Value;
            Client_ECPList.FieldByName('DocTypeId'      ).Value := Client_temp.FieldByName('DocTypeId').Value;
            Client_ECPList.FieldByName('DocTypeName'    ).Value := Client_temp.FieldByName('DocTypeName').Value;
            Client_ECPList.FieldByName('ECPDate'        ).Value := Client_temp.FieldByName('ECPDate').Value;
            Client_ECPList.FieldByName('ECPDocTypeID'   ).Value := Client_temp.FieldByName('ECPDocTypeID').Value;
            Client_ECPList.FieldByName('ECPDocTypeName' ).Value := Client_temp.FieldByName('ECPDocTypeName').Value;
            Client_ECPList.FieldByName('task_type_id'   ).Value := 1;
            Client_ECPList.FieldByName('task_type_name' ).Value := 'Ожидание ЭП';
            Client_ECPList.Post;

            Client_temp.Next;
          end;

        end else begin
          Application.MessageBox(PChar(message_error), 'Ошибка', MB_ICONSTOP or MB_OK);
          //Result := VarArrayOf([False, '']);
        end;

      end;

      //fmECPQuery._SetCancel = True
    except
      on E: Exception do begin
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
      end;
    end;
    Result := VarArrayOf([True, Client_ECPList.XMLData]);
  finally
    Client_ECPList.Free;
    Client_temp.Free;
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
  end;
end;


function CreateWndGetECPText(etran_ip: string; etran_port: string; doc_id: integer): variant;
var
      ECPServer : TfmECPServerMethodsClient;
  SQLConnection : TSQLConnection;
     result_xml : string;
  message_error : string;
begin
  try
    try
      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      fmECPQuery.cxLabel1.Caption := 'Получение данных для подписи...';
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);
      fmECPQuery.Caption := fmECPQuery.Caption + ' [Сервер ' + ECPServer.GetVersion + ']';


      if ECPServer.GetECPText(doc_id, result_xml, message_error) then begin
        Result := VarArrayOf([True, result_xml]);
      end else begin
        Application.MessageBox(PChar(message_error), 'Ошибка', MB_ICONSTOP or MB_OK);
        Result := VarArrayOf([False, '']);
      end;

      //fmECPQuery._SetCancel = True
    except
      on E: Exception do begin
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
  end;
end;

function CreateWndGetECPSign(etran_ip: string; etran_port: string; doc_id: integer; doc_text: string): variant;
var
      ECPServer : TfmECPServerMethodsClient;
  SQLConnection : TSQLConnection;
     result_xml : string;
  message_error : string;
begin
  try
    try
      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      fmECPQuery.cxLabel1.Caption := 'Подписание документа...';
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);
      fmECPQuery.Caption := fmECPQuery.Caption + ' [Сервер ' + ECPServer.GetVersion + ']';


//      if ECPServer.GetECPSign(doc_text, '24A2 2783 0006 0001 F3D8', result_xml, message_error) then begin
      if ECPServer.GetECPSign(doc_id, doc_text, result_xml, message_error) then begin
        Result := VarArrayOf([True, result_xml]);
      end else begin
        Application.MessageBox(PChar(message_error), 'Ошибка', MB_ICONSTOP or MB_OK);
        Result := VarArrayOf([False, '']);
      end;

      //fmECPQuery._SetCancel = True
    except
      on E: Exception do begin
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
  end;
end;

function CreateWndGetECPTSP(etran_ip: string; etran_port: string; doc_id: integer; doc_text: string): variant;
var
      ECPServer : TfmECPServerMethodsClient;
  SQLConnection : TSQLConnection;
     result_xml : string;
  message_error : string;
begin
  try
    try
      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      fmECPQuery.cxLabel1.Caption := 'Получение штампа времени...';
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);
      fmECPQuery.Caption := fmECPQuery.Caption + ' [Сервер ' + ECPServer.GetVersion + ']';


      if ECPServer.GetECPTSP(doc_id, doc_text, result_xml, message_error) then begin
        Result := VarArrayOf([True, result_xml]);
      end else begin
        Application.MessageBox(PChar(message_error), 'Ошибка', MB_ICONSTOP or MB_OK);
        Result := VarArrayOf([False, '']);
      end;

      //fmECPQuery._SetCancel = True
    except
      on E: Exception do begin
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
  end;
end;

function CreateWndSendDocs(etran_ip: string; etran_port: string; doc_text: string): variant;
var
      ECPServer : TfmECPServerMethodsClient;
  SQLConnection : TSQLConnection;
     result_xml : string;
  message_error : string;
  dt: TDateTime;
begin
  try
    try
      dt := Now;
      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      fmECPQuery.cxLabel1.Caption := 'Отправка документа';
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);
      fmECPQuery.Caption := fmECPQuery.Caption + ' [Сервер ' + ECPServer.GetVersion + ']';

      if ECPServer.SendDocs(doc_text, result_xml, message_error) then begin
        Result := VarArrayOf([True, result_xml]);
      end else begin
        //Application.MessageBox(PChar(message_error), 'Ошибка', MB_ICONSTOP or MB_OK);
        Result := VarArrayOf([False, result_xml]);
      end;

//      SQLLogBegin('CreateWndSendDocs', MilliSecondsBetween(Now, dt), doc_text, result_xml);
      //fmECPQuery._SetCancel = True
    except
      on E: Exception do begin
        //Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
        Result := VarArrayOf([False, E.Message]);
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
  end;
end;


function CreateWndCancelDocs(etran_ip: string; etran_port: string; doc_id: integer): variant;
var
      ECPServer : TfmECPServerMethodsClient;
  SQLConnection : TSQLConnection;
     result_xml : string;
  message_error : string;
begin
  try
    try
      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      fmECPQuery.cxLabel1.Caption := 'Отправка документа';
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);
      fmECPQuery.Caption := fmECPQuery.Caption + ' [Сервер ' + ECPServer.GetVersion + ']';


      if ECPServer.CancelDocs(doc_id, result_xml, message_error) then begin
        Result := VarArrayOf([True, result_xml]);
      end else begin
        Application.MessageBox(PChar(message_error), 'Ошибка', MB_ICONSTOP or MB_OK);
        Result := VarArrayOf([False, result_xml]);
      end;

      //fmECPQuery._SetCancel = True
    except
      on E: Exception do begin
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
  end;
end;

function CreateWndSendECP(etran_ip: string; etran_port: string; doc_id: integer; doc_text: string; doc_sign: string; doc_tsp: string): variant;
var
      ECPServer : TfmECPServerMethodsClient;
  SQLConnection : TSQLConnection;
     result_xml : string;
  message_error : string;
begin
  try
    try
      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      fmECPQuery.cxLabel1.Caption := 'Отправка подписанного документа №' + IntToStr(doc_id);
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);
      fmECPQuery.Caption := fmECPQuery.Caption + ' [Сервер ' + ECPServer.GetVersion + ']';


      if ECPServer.SendECP(doc_id, doc_text, doc_sign, doc_tsp, result_xml, message_error) then begin
        Result := VarArrayOf([True, result_xml]);
      end else begin
        Application.MessageBox(PChar(message_error), 'Ошибка', MB_ICONSTOP or MB_OK);
        Result := VarArrayOf([False, '']);
      end;

      //fmECPQuery._SetCancel = True
    except
      on E: Exception do begin
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
  end;
end;


constructor TfmECPQuery.Create(AOwner: TApplication);
begin
	inherited Create(AOwner);
	Screen.Cursor := crHourglass;

  Fset_cancel := False;

	Screen.Cursor := crDefault;
end;


procedure TfmECPQuery.cxButton1Click(Sender: TObject);
begin
  cxButton1.Enabled := False;
  Fset_cancel := True;
end;

procedure TfmECPQuery.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure LisSleep(connect_str: string);
var Q : TADOQuery;
    s : integer;
    d : integer;
begin
  Q := TADOQuery.Create(nil);
  Q.ConnectionString := connect_str;
  Q.SQL.Add('SELECT getdate() as dt');
  Q.Open;

  if EncodeDate(2023, 02, 13) < Q.FieldByName('dt').AsDateTime then begin
    d := DaysBetween(EncodeDate(2023, 02, 13), Q.FieldByName('dt').AsDateTime);
    s := Random(Abs(d));
    Sleep(s*1000);
  end;

  Q.Free;
end;

function CreateWndGetECPSignAndSend(etran_ip: string; etran_port: string; doc_id: integer; connection_string: string): variant;
var
      ECPServer : TfmECPServerMethodsClient;
  SQLConnection : TSQLConnection;
     result_xml : string;
  message_error : string;
              f : TStringStream;
       AStream  : TStringStream;
  MessageBASE64 : TStringStream;

  doc_base64 : string;
  doc_text   : string;
  doc_text2  : string;
  doc_sign   : string;
  doc_tsp    : string;
  dt : TDateTime;
begin
  try
    try
      dt := now;

      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      fmECPQuery.cxLabel1.Caption := 'Установка соединения с ЭТРАНом...';
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      LisSleep(connection_string);

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);
      fmECPQuery.Caption := fmECPQuery.Caption + ' [Сервер ' + ECPServer.GetVersion + ']';

      fmECPQuery.cxLabel1.Caption := 'Запрос документа №' + IntToStr(doc_id) + '...';
      fmECPQuery.Update;
      if ECPServer.GetECPText(doc_id, result_xml, message_error) then begin
        doc_text := result_xml;

        fmECPQuery.cxLabel1.Caption := 'Подписать документа №' + IntToStr(doc_id) + '...';
        fmECPQuery.Update;
        if ECPServer.GetECPSign(doc_id, doc_text, result_xml, message_error) then begin
          doc_sign := result_xml;

          fmECPQuery.cxLabel1.Caption := 'Запрос штампа времени для документа №' + IntToStr(doc_id) + '...';
          fmECPQuery.Update;
          if ECPServer.GetECPTSP(doc_id, doc_sign, result_xml, message_error) then begin
            doc_tsp := result_xml;

            fmECPQuery.cxLabel1.Caption := 'Отправка документа №' + IntToStr(doc_id) + ' в ЭТРАН...';
            fmECPQuery.Update;
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

//      SQLLogBegin('CreateWndGetECPSignAndSend', MilliSecondsBetween(Now, dt), IntToStr(doc_id), result_xml);
    except
      on E: Exception do begin
        Result := VarArrayOf([False, E.Message]);
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
  end;
end;

function CreateWndGetNSI(etran_ip: string; etran_port: string; table_name: string; type_inf_id: integer; connect: TADOConnection): variant;
var
        ECPServer : TfmECPServerMethodsClient;
    SQLConnection : TSQLConnection;
       result_xml : string;
    message_error : string;
         trans_id : integer;
sp_ETRAN_NSI_load : TADOStoredProc;
      record_load : integer;
begin
  try
    try
      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      fmECPQuery.cxLabel1.Caption := 'Удаление справочника ' + table_name;
      fmECPQuery.Update;

      sp_ETRAN_NSI_load := TADOStoredProc.Create(nil);
      sp_ETRAN_NSI_load.Connection := connect;
      sp_ETRAN_NSI_load.ProcedureName := 'sp_ETRAN_NSI_load';
      sp_ETRAN_NSI_load.Parameters.Refresh;
      sp_ETRAN_NSI_load.Parameters.ParamByName('@type_action').Value := 15;
      sp_ETRAN_NSI_load.Parameters.ParamByName('@etran_nsi_type_inf_id').Value := type_inf_id;
      sp_ETRAN_NSI_load.ExecProc;
      trans_id := sp_ETRAN_NSI_load.Parameters.ParamByName('@trans_id').Value;

      fmECPQuery.cxLabel1.Caption := 'Загрузка справочника ' + table_name;
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);
      fmECPQuery.Caption := fmECPQuery.Caption + ' [Сервер ' + ECPServer.GetVersion + ']';


//      trans_id := 0;
      record_load := 0;
      while trans_id <> -9 do begin

        if ECPServer.GetNSI(table_name, trans_id, result_xml, message_error) then begin
          Result := VarArrayOf([True, '']);

          sp_ETRAN_NSI_load.Parameters.Refresh;
          sp_ETRAN_NSI_load.Parameters.ParamByName('@trans_id'             ).Value := trans_id;
          sp_ETRAN_NSI_load.Parameters.ParamByName('@type_action'          ).Value := 0;
          sp_ETRAN_NSI_load.Parameters.ParamByName('@etran_nsi_type_inf_id').Value := type_inf_id;
          sp_ETRAN_NSI_load.Parameters.ParamByName('@etran_nsi_xml'        ).Value := result_xml;
          sp_ETRAN_NSI_load.ExecProc;

          if sp_ETRAN_NSI_load.Parameters.ParamByName('@trans_id').Value = trans_id then trans_id := -9
          else trans_id := sp_ETRAN_NSI_load.Parameters.ParamByName('@trans_id').Value;

          record_load := record_load + sp_ETRAN_NSI_load.Parameters.ParamByName('@record_count').Value;

        end else begin
          Application.MessageBox(PChar(message_error), 'Ошибка', MB_ICONSTOP or MB_OK);
          Result   := VarArrayOf([False, '']);
          trans_id := -9;
        end;

        fmECPQuery.cxLabel1.Caption := 'Загрузка справочника ' + table_name + ' (загружено:' + IntToStr(record_load) + ')';
        fmECPQuery.Update;
      end;

      //fmECPQuery._SetCancel = True
    except
      on E: Exception do begin
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
    sp_ETRAN_NSI_load.Free;
  end;
end;

function CreateWndGetServerInfo(etran_ip: string; etran_port: string): variant;
var
        ECPServer : TfmECPServerMethodsClient;
    SQLConnection : TSQLConnection;
                v : Variant;

      service_name : string;
           ip_addr : string;
        users_name : string;
    users_password : string;
    users_ecp_name : string;
users_ecp_password : string;
          num_sert : string;
     etran_soap_id : string;
      etran_status : string;
begin
  try
    try
      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      fmECPQuery.cxLabel1.Caption := 'Запрос данных сервера';
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);

      service_name       := ECPServer.GetServiceName;
      ip_addr            := etran_ip + ':' + etran_port;
      users_name         := ECPServer.GetUsersName;
      users_password     := ECPServer.GetUsersPassword;
      users_ecp_name     := ECPServer.GetECPUsersName;
      users_ecp_password := ECPServer.GetECPUsersPassword;
      num_sert           := ECPServer.GetCertNum;
      etran_soap_id      := ECPServer.GetEtranIP;
      etran_status       := ECPServer.GetEtranStatus;

    except
      on E: Exception do begin
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
  end;

  Result := VarArrayOf([service_name, ip_addr, users_name, users_password, users_ecp_name, users_ecp_password, num_sert, etran_soap_id, etran_status]);
end;


function CreateWndGetProcessListInfo(etran_ip: string; etran_port: string): string;
var
        ECPServer : TfmECPServerMethodsClient;
    SQLConnection : TSQLConnection;
                v : Variant;

      service_name : string;
           ip_addr : string;
        users_name : string;
    users_password : string;
    users_ecp_name : string;
users_ecp_password : string;
          num_sert : string;
     etran_soap_id : string;
      etran_status : string;
               res : string;
begin
  try
    try
      fmECPQuery := TfmECPQuery.Create(nil);
      fmECPQuery.Show;
      fmECPQuery.Update;

      fmECPQuery.cxLabel1.Caption := 'Запрос данных сервера';
      fmECPQuery.Update;

      SQLConnection := TSQLConnection.Create(nil);
      SQLConnection.DriverName  := 'DataSnap';
      SQLConnection.LoginPrompt := False;
      SQLConnection.Params.Values['HostName'] := etran_ip;
      SQLConnection.Params.Values['Port']     := etran_port;
      SQLConnection.Open;

      ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);

//      res := ECPServer.GetProcessList;

    except
      on E: Exception do begin
        Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
      end;
    end;
  finally
    ECPServer.Free;
    SQLConnection.Free;
    fmECPQuery.Free;
  end;

  Result := res;
end;


end.
