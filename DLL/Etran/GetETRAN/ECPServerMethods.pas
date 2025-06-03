unit ECPServerMethods;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter, Dialogs,
    Datasnap.DSServer, Datasnap.DSAuth, Winapi.ActiveX,
    Datasnap.DSSession, Datasnap.DSTCPServerTransport,
    DateUtils, StrUtils,
    Data.DB, Datasnap.DBClient, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, Soap.EncdDecd, Wcrypt2,
     Data.Win.ADODB;

type
  TfmECPServerMethods = class(TDSServerModule)
  private
    procedure MonitorBegin;
    procedure MonitorEnd(proc_name: string; proc_duration: integer; proc_result: boolean; proc_error: string);
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;


    function GetVersion(): string;
    function GetServiceName(): string;
    function GetUsersName(): string;
    function GetUsersPassword(): string;
    function GetECPUsersName(): string;
    function GetECPUsersPassword(): string;
    function GetEtranStatus(): string;
    function GetEtranIP(): string;
    function GetCertNum(): string;



    // Запрос данных из ЭТРАНА
    //  users_name - пользователь АСУ-АСУ
    //  users_password - пароль АСУ-АСУ
    //  ip_address - адрес ЭТРАН SOAP
    //  query_xml - запрос
    //  result_xml    - результат выполнения запроса
    //  message_error - если произошла ошибка то переменная заполнена
    //
    //  Result = True-все хорошо, False-ошибка см message_error
    function GetQuery(users_name: string; users_password: string; ip_address: string; query_xml: string; var result_xml: string; var message_error: string): boolean;

    // Запросить НСИ вагона
    //  str_num_vagon - список вагонов через ,
    //  result_xml    - результат выполнения запроса в формате TClientDataSet.XMLData
    //  message_error - если произошла ошибка то переменная заполнена
    //
    //  Result = True-все хорошо, False-ошибка см message_error
    function GetNSIVagon(users_name: string; users_password: string; str_num_vagon: string; var result_xml: string; var result_query_xml: string; var message_error: string): boolean;

    // Запросить Паспорт организации
    //  org_name - название организации (ищется по маске %org_name%)
    //  org_okpo - ОКПО организации
    //  result_xml    - результат выполнения запроса в формате TClientDataSet.XMLData
    //  message_error - если произошла ошибка то переменная заполнена
    //
    //  Result = True-все хорошо, False-ошибка см message_error
    function GetPassport(org_name: string; org_okpo: string; var result_xml: string; var message_error: string): boolean;


    // Запросить Документы ожидающие ЭЦП
    //  date_ecp      - дата запроса (запросить документы можно только за 1 день)
    //  result_xml    - результат выполнения запроса в формате TClientDataSet.XMLData
    //  message_error - если произошла ошибка то переменная заполнена
    //
    //  Result = True-все хорошо, False-ошибка см message_error
    function GetECPList(date_ecp: TDateTime; var result_xml: string; var message_error: string): boolean;


    // Запросить данные для подписи
    //  doc_id        - id документа
    //  result_xml    - результат выполнения запроса текст (string)
    //  message_error - если произошла ошибка то переменная заполнена
    //
    //  Result = True-все хорошо, False-ошибка см message_error
    function GetECPText  (doc_id: integer; var result_xml: string; var message_error: string): boolean; // формат возвращаемых данны Text
    function GetECPBinary(doc_id: integer; var result_xml: string; var message_error: string): boolean; // формат возвращаемых данны Base64

    function SetEGK(doc_id: integer; var result_xml: string; var message_error: string): boolean;


    function GetPrintForm(doc_id: integer; var result_xml: string; var message_error: string): boolean; // формат возвращаемых данны Text


    // Подписать данные
    //  doc_text      - данные для подписи
    //  result_xml    - результат выполнения запроса текст (string), формат Base64
    //  message_error - если произошла ошибка то переменная заполнена
    //
    //  Result = True-все хорошо, False-ошибка см message_error
    function GetECPSign(doc_id: integer; doc_text: string; var result_xml: string; var message_error: string): boolean;

    // Получить штамп времени
    //  doc_text      - данные для штампа
    //  result_xml    - результат выполнения запроса текст (string), формат Base64
    //  message_error - если произошла ошибка то переменная заполнена
    //
    //  Result = True-все хорошо, False-ошибка см message_error
    function GetECPTSP(doc_id: integer; doc_text: string; var result_xml: string; var message_error: string): boolean;

    // Отправить подписанные данные
    //  doc_text      - подписанные данные
    //  doc_sign      - подпись формат base64
    //  doc_tsp       - штамп времени формат base64
    //  result_xml    - результат выполнения запроса текст (string), формат Base64
    //  message_error - если произошла ошибка то переменная заполнена
    //
    //  Result = True-все хорошо, False-ошибка см message_error
    function SendECP(doc_id: integer; doc_text: string; doc_sign: string; doc_tsp: string; var result_xml: string; var message_error: string): boolean;
    function SendECPBinary(doc_id: integer; doc_text: string; doc_sign: string; doc_tsp: string; var result_xml: string; var message_error: string): boolean;


    // Запрос справочников НСИ
    //  table_name    - таблица
    //  trans_id      -
    //  result_xml    - результат выполнения запроса текст (XML)
    //  message_error - если произошла ошибка то переменная заполнена
    //
    //  Result = True-все хорошо, False-ошибка см message_error
    function GetNSI(table_name: string; trans_id: integer; var result_xml: string; var message_error: string): boolean;



    // Отправить докумень в ЭТРАН (накладная)
    //  doc_text      - данные документа
    //  result_xml    - результат выполнения запроса текст (string)
    //  message_error - если произошла ошибка то переменная заполнена
    //
    //  Result = True-все хорошо, False-ошибка см message_error
    function SendDocs(doc_text: string; var result_xml: string; var message_error: string): boolean;

    function SendDocsVagon(doc_text: string; var result_xml: string; var message_error: string): boolean;


    function CancelDocs(doc_id: integer; var result_xml: string; var message_error: string): boolean;
    function RejectDocs(doc_id: integer; var result_xml: string; var message_error: string): boolean;

  end;

implementation


{$R *.dfm}


uses EtranMain, ECPServerUtils, CAPICOM_TLB, TSPCOM_TLB;

function TfmECPServerMethods.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TfmECPServerMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

procedure TfmECPServerMethods.MonitorBegin;
var Session: TDSSession;
    IPAddr : string;
begin
//  Session := TDSSessionManager.Instance.GetThreadSession;
//
//  // Синхронизируем данные с основным потоком
//  TThread.Synchronize(nil,
//      procedure
//      var i : integer;
//      begin
//        for i := 0 to fmECPServerMain.ListBox1.Items.Count-1 do begin
//          if TDSTCPChannel(fmECPServerMain.ListBox1.Items.Objects[i]).SessionId = Session.SessionName then begin
//            IPAddr := fmECPServerMain.ListBox1.Items.Strings[i];
//          end;
//        end;
//      end);
//
//  if Session <> nil then begin
//    fmECPServerMain.cxMemo1.Lines.Add('GetVersion '  + Session.SessionName + ',' + IPAddr);
//  end else begin
//    fmECPServerMain.cxMemo1.Lines.Add('GetVersion');
//  end;

end;

procedure TfmECPServerMethods.MonitorEnd(proc_name: string; proc_duration: integer; proc_result: boolean; proc_error: string);
var Session: TDSSession;
    IPAddr : string;
begin
  Session := TDSSessionManager.Instance.GetThreadSession;

  // Синхронизируем данные с основным потоком
  TThread.Synchronize(nil,
      procedure
      var i : integer;
      begin
        for i := 0 to fmEtranMain.ListBox1.Items.Count-1 do begin
          if TDSTCPChannel(fmEtranMain.ListBox1.Items.Objects[i]).SessionId = Session.SessionName then begin
            IPAddr := fmEtranMain.ListBox1.Items.Strings[i];

            fmEtranMain.ClientDS_Query.Append;
            fmEtranMain.ClientDS_Query.FieldByName('query_date'          ).Value := Now;
            fmEtranMain.ClientDS_Query.FieldByName('query_ip'            ).Value := IPAddr;
            fmEtranMain.ClientDS_Query.FieldByName('query_type'          ).Value := proc_name;
//            fmEtranMain.ClientDS_Query.FieldByName('query_etran_task'    ).Value := Q.FieldByName('query_etran_task').Value;
//            fmEtranMain.ClientDS_Query.FieldByName('query_etran_result'  ).Value := Q.FieldByName('query_etran_result').Value;
            fmEtranMain.ClientDS_Query.FieldByName('query_result'        ).Value := proc_result;
            fmEtranMain.ClientDS_Query.FieldByName('query_error_message' ).Value := proc_error;
            fmEtranMain.ClientDS_Query.FieldByName('query_duration'      ).Value := proc_duration;
            fmEtranMain.ClientDS_Query.Post;

            fmEtranMain.ClientDS_Query.First;
            while fmEtranMain.ClientDS_Query.RecordCount > 10 do begin
              fmEtranMain.ClientDS_Query.Delete;
            end;

          end;
        end;
      end);

//  if Session <> nil then begin
//    fmECPServerMain.cxMemo1.Lines.Add('GetVersion '  + Session.SessionName + ',' + IPAddr);
//  end else begin
//    fmECPServerMain.cxMemo1.Lines.Add('GetVersion');
//  end;
end;


function TfmECPServerMethods.GetVersion(): string;
begin
  Result := '0.17';
end;


function TfmECPServerMethods.GetServiceName(): string;
begin
  Result := fmEtranMain._GetServiceName;
end;

function TfmECPServerMethods.GetUsersName(): string;
begin
  Result := fmEtranMain._GetEtranUsers;
end;

function TfmECPServerMethods.GetUsersPassword(): string;
begin
  Result := fmEtranMain._GetEtranPassword;
end;

function TfmECPServerMethods.GetECPUsersName(): string;
begin
  Result := fmEtranMain._GetEtranECPUsers;
end;

function TfmECPServerMethods.GetECPUsersPassword(): string;
begin
  Result := fmEtranMain._GetEtranECPPassword;
end;

function TfmECPServerMethods.GetEtranIP(): string;
begin
  Result := fmEtranMain._GetEtranIP;
end;

function TfmECPServerMethods.GetCertNum(): string;
begin
  Result := fmEtranMain._GetCertNum;
end;

function TfmECPServerMethods.GetEtranStatus(): string;
var   query_xml : string;
            res : boolean;
            ver : string;
      error_cod : string;
  message_error : string;
begin
  try
    try
      query_xml := '<test version="1.0"></test>';
      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranUsers, fmEtranMain._GetEtranPassword, query_xml, message_error);

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);
        if res = True then begin
           ver := 'Работает. Версия №' + ParserEtranVersion(query_xml);
        end else begin
          ver := 'Ошибка ЭТРАН (1):' + message_error;
        end;
      end else begin
        ver := 'Ошибка ЭТРАН (2):' + message_error;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
        ver := 'Ошибка ЛИС:' + E.Message;
      end;
    end;
  finally
  end;

  Result := ver;
end;



function TfmECPServerMethods.GetNSIVagon(users_name: string; users_password: string; str_num_vagon: string; var result_xml: string; var result_query_xml: string; var message_error: string): boolean;
var str_vagon_list : TStringList;
                 i : integer;
         query_xml : string;
         error_cod : string;
               res : boolean;
begin
  try
    try
      str_vagon_list := TStringList.Create;
      str_vagon_list.CommaText := str_num_vagon;
      str_vagon_list.Delimiter := ',';

      query_xml := '<getCarNSI version="1.0">' + char(13) + char(10);

      for i := 0 to str_vagon_list.Count-1 do begin
        query_xml := query_xml + '<car><carNumber value="' + str_vagon_list.Strings[i] + '"/></car>'  + char(13) + char(10);
      end;

      query_xml := query_xml + '<useLocalNsi/>' + char(13) + char(10);
      query_xml := query_xml + '<useCond/>' + char(13) + char(10);
      query_xml := query_xml + '<useMod11/>' + char(13) + char(10);
      query_xml := query_xml + '</getCarNSI>';

      res := GetEtran(fmEtranMain._GetEtranIP, users_name, users_password, query_xml, message_error);

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);
        if res = True then begin
          result_xml := ParserVagonNSI(query_xml);
        end;
        result_query_xml := query_xml;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
    str_vagon_list.Free;
  end;
  Result := res;
end;

function TfmECPServerMethods.GetPassport(org_name: string; org_okpo: string; var result_xml: string; var message_error: string): boolean;
var   query_xml : string;
            res : boolean;
      error_cod : string;
      t1 : string;
      dt : TdateTime;
      ss : integer;

      str : TStringList;
begin
  try
    try
      query_xml := '<getOrgPassport version="1.0">' + char(13) + char(10);
      query_xml := query_xml + '<orgNAME value="' + org_name + '"/>' + char(13) + char(10);
      query_xml := query_xml + '<orgOKPO value="' + org_okpo + '"/>' + char(13) + char(10);
      query_xml := query_xml + '</getOrgPassport>';

      t1  := query_xml;
      dt  := Now;
      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranUsers, fmEtranMain._GetEtranPassword, query_xml, message_error);

      ss  := MilliSecondsBetween(Now, dt);

      str := TStringList.Create;
      str.Text :=query_xml;
      str.SaveToFile('C:\LisService\log\passport.txt');
      str.Free;




      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);
        if res = True then begin
          result_xml := ParserPassport(query_xml);
        end;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  MonitorEnd('Запрос паспорта организации', 0, res, message_error);

  Result := res;
end;


function TfmECPServerMethods.GetQuery(users_name: string; users_password: string; ip_address: string; query_xml: string; var result_xml: string; var message_error: string): boolean;
var         res : boolean;
      error_cod : string;
begin
 try
    try
      res := GetEtran(ip_address, users_name, users_password, query_xml, message_error);

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);
        if res = True then begin
          result_xml := query_xml;
        end;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  Result := res;
end;


function TfmECPServerMethods.GetECPList(date_ecp: TDateTime; var result_xml: string; var message_error: string): boolean;
var   query_xml : string;
            res : boolean;
      error_cod : string;
      dt : TdateTime;
      ss : integer;
begin
  try
    try
      query_xml := '<ECPWaitDocStatus>' + char(13) + char(10);
      query_xml := query_xml + '<fromDate>' + FormatDateTime('dd.mm.yyyy', date_ecp) + ' 00:00' + '</fromDate>' + char(13) + char(10);
      query_xml := query_xml + '<toDate>' +  FormatDateTime('dd.mm.yyyy', date_ecp+1) + ' 00:00' + '</toDate>' + char(13) + char(10);
      query_xml := query_xml + '</ECPWaitDocStatus>';

      dt  := Now;
      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranUsers, fmEtranMain._GetEtranPassword, query_xml, message_error);
      ss  := MilliSecondsBetween(Now, dt);
      SQLLogBegin('GetECPList', ss, '', '');

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);
        if res = True then begin
          result_xml := ParserECPList(query_xml);
        end;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  Result := res;
end;




// Запросить данные для подписи
function TfmECPServerMethods.SetEGK(doc_id: integer; var result_xml: string; var message_error: string): boolean;
var   query_xml : string;
            res : boolean;
      error_cod : string;
       log_path : string;
     log_stream : TStringStream;

     t1 : string;
     ss : integer;
     dt : TDateTime;
begin
  try
    try
      query_xml := GetDoument(doc_id);

      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranUsers, fmEtranMain._GetEtranPassword, query_xml, message_error);

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);

        if res = True then begin
          result_xml := query_xml;
        end;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  Result := res;
end;

// Запросить данные для подписи
function TfmECPServerMethods.GetECPText(doc_id: integer; var result_xml: string; var message_error: string): boolean;
var   query_xml : string;
            res : boolean;
      error_cod : string;
       log_path : string;
     log_stream : TStringStream;

     t1 : string;
     ss : integer;
     dt : TDateTime;
begin
  try
    try
      query_xml := '<getTextForECP version="1.0"><docID value="' + IntToStr(doc_id) + '"/></getTextForECP>';

      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranUsers, fmEtranMain._GetEtranPassword, query_xml, message_error);

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);

        if res = True then begin
          result_xml := query_xml;
        end;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  Result := res;
end;

function TfmECPServerMethods.GetPrintForm(doc_id: integer; var result_xml: string; var message_error: string): boolean;
var   query_xml : string;
            res : boolean;
      error_cod : string;

      str : TStringList;

      s:  string;
    str_list : TStringList;
    MessageBASE64 : TMemoryStream;
    file_blob     : TStringStream;

    sp_etran_invPrint : TADOStoredProc;
    Doc_ID2, doctype: string;
    v : Variant;

    str_query : string;
    ss : string;
begin
  try
    try
      query_xml := '<getPrintForm><Doc_ID>' + IntToStr(doc_id) + '</Doc_ID><usePay>1</usePay></getPrintForm>';

//      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranUsers, fmEtranMain._GetEtranPassword, query_xml, message_error);

//      str := TStringList.Create;
//      str.Text :=query_xml;
//      str.SaveToFile('C:\LisService\log\printForm' + IntToStr(doc_id) + '.txt');
//      str.Free;

      res := True;
      str := TStringList.Create;
      str.LoadFromFile('C:\LisService\log\printForm1528992703.txt');
      query_xml := str.Text;
      str.Free;


      // Создать директорию и записать результат запроса
      //

      ss := '1';
      if res = True then begin
//        res := CheckEtranXML(query_xml, message_error, error_cod);
//        if res = True then begin
//          result_xml := query_xml;

          ss := '2';
          s := query_xml;
          s := AnsiRightStr(s, Length(s) - AnsiPos('<PrintFormPDF>', s)+1);
          s := AnsiReplaceStr(s, '</PrintFormPDF>', '');
          s := AnsiReplaceStr(s, '</getPrintFormReply>', '');
          s := AnsiReplaceStr(s, '<PrintFormPDF>', '');

          ss := '3';
          Doc_ID2 := query_xml;
          Doc_ID2 := AnsiRightStr(Doc_ID2, Length(Doc_ID2) - AnsiPos('<Doc_ID>', Doc_ID2)+1-8);
          Doc_ID2 := AnsiLeftStr (Doc_ID2, AnsiPos('</Doc_ID>', Doc_ID2)-1);

          ss := '4';
          doctype := query_xml;
          doctype := AnsiRightStr(doctype, Length(doctype) - AnsiPos('<doctype>', doctype)+1-9);
          doctype := AnsiLeftStr (doctype, AnsiPos('</doctype>', doctype)-1);



          ss := '5';
          file_blob := TStringStream.Create(s);
          ss := '6';
          MessageBASE64 := TMemoryStream.Create;
          ss := '7';
          DecodeStream(file_blob, MessageBASE64);


          ss := '8';
          sp_etran_invPrint := TADOStoredProc.Create(nil);
          sp_etran_invPrint.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;Password=QAZ123qaz;Initial Catalog=Lis_Etran;Data Source=(local);';
          sp_etran_invPrint.ProcedureName := 'sp_etran_invPrint';
          sp_etran_invPrint.Parameters.Refresh;
          sp_etran_invPrint.Parameters.ParamByName('@Doc_ID'        ).Value := Doc_ID2;
          sp_etran_invPrint.Parameters.ParamByName('@doctype'       ).Value := doctype;
          sp_etran_invPrint.Parameters.ParamByName('@PrintFormPDF'  ).Value := s;
          sp_etran_invPrint.Parameters.ParamByName('@PrintFormBlob' ).LoadFromStream(MessageBASE64, ftBlob);
          sp_etran_invPrint.ExecProc;
          sp_etran_invPrint.Free;


          ss := '9';
          MessageBASE64.Free;
          file_blob.Free;


          ss := '10';
          result_xml := 'Ok';

//        end;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
        ShowMessage(ss + ' ' + E.Message);
      end;
    end;
  finally
  end;

  Result := res;
end;


function TfmECPServerMethods.GetECPBinary(doc_id: integer; var result_xml: string; var message_error: string): boolean;
var   query_xml : string;
            res : boolean;
      error_cod : string;
begin
  try
    try
      query_xml := '<getTextForECP version="1.0"><docID value="' + IntToStr(doc_id) + '"/><useBinary/></getTextForECP>';

      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranUsers, fmEtranMain._GetEtranPassword, query_xml, message_error);

      // Создать директорию и записать результат запроса

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);
        if res = True then begin
          result_xml := ParserECPBinary(query_xml);
        end;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  Result := res;
end;


// Подписать данные
function TfmECPServerMethods.GetECPSign(doc_id: integer; doc_text: string; var result_xml: string; var message_error: string): boolean;
var        res : boolean;
             f : TStringStream;
      log_path : string;
    log_stream : TStringStream;
    point : string;
    dt : TDateTime;
    ss : integer;
begin
  try
    try
      point := '001';
      f := TStringStream.Create(doc_text);

//      point := '002';
//      log_path := ExtractFilePath(ParamStr(0)) + '\LOG_ECP\' + IntToStr(doc_id);
//      if not DirectoryExists(log_path) then ForceDirectories(log_path);
//      f.SaveToFile(log_path + '\' + 'ecp_sign_query_1_' + FormatDateTime('yyyymmddhhnnss', Now) + '.txt');

//      point := '003';
//      log_stream := TStringStream.Create(doc_text);
//      log_stream.SaveToFile(log_path + '\' + 'ecp_sign_query_2_' + FormatDateTime('yyyymmddhhnnss', Now) + '.txt');
//      log_stream.Free;

//      point := '004';


//      dt  := Now;

      point := '002';

      point := '002 >> ' + fmEtranMain._GetCertNum;
      res := Diadoc_SignBASE64(fmEtranMain._GetCertNum, f, result_xml, message_error);

      point := '003';

//      ss  := MilliSecondsBetween(Now, dt);
//      SQLLogBegin('GetECPSign', ss, '', '');

//      point := '005';
//      log_stream := TStringStream.Create(result_xml);
//      log_stream.SaveToFile(log_path + '\' + 'ecp_sign_result_' + FormatDateTime('yyyymmddhhnnss', Now) + '.txt');
//      log_stream.Free;
//
//      point := '006';
    except
      on E: Exception do begin
        res := False;
        message_error := point + '. Error:' + E.Message;
      end;
    end;
  finally
  end;

  if (res = False) and (message_error = '') then message_error := point;
  
  Result := res;
end;

// Получить штамп времени
function TfmECPServerMethods.GetECPTSP(doc_id: integer; doc_text: string; var result_xml: string; var message_error: string): boolean;
var  oRequest : TSPCOM_TLB.ITSPRequest2;
     oStamp   : TSPCOM_TLB.ITSPStamp2;
     oHash    : CAPICOM_TLB.IHashedData;

     data3    : PSafeArray;
     f2       : TMemoryStream;
     data5    : WideString;
     res      : boolean;

     cmin, cmax, i, wsRead : integer;

     ss : integer;
     dt : TDateTime;
begin
  try
    try

      dt := Now;

      oRequest := CoTSPRequest.Create as ITSPRequest2;
      oStamp   := CoTSPStamp.Create as ITSPStamp2;

      data5  := doc_text;
      oHash  := CoHashedData.Create;
      oHash.Algorithm := CAPICOM_HASH_ALGORITHM_SHA1;
      oHash.Hash(data5);

      oRequest.Hash := oHash;
      oRequest.TSAAddress := 'http://pkitrans.ru/tspca1_niias/tsp.srf';

      oStamp := oRequest.Send(false) as ITSPStamp2;
      data3 := oStamp.Export2;

      SafeArrayGetLBound(data3, 1, cmin);
      SafeArrayGetUBound(data3, 1, cmax);

      f2 := TMemoryStream.Create;
      for i := cmin to cmax do begin
        SafeArrayGetElement(data3, i, wsRead);
        f2.Write(wsRead, 1);
      end;

      f2.Seek(0,0);

      result_xml := Diadoc_StreamToBASE64(f2);

      ss  := MilliSecondsBetween(Now, dt);
      SQLLogBegin('GetECPTSP', ss, '', '');

      f2.Free;

      res := True;
    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  Result := res;
end;

// Отправить подписанные данные
function TfmECPServerMethods.SendECP(doc_id: integer; doc_text: string; doc_sign: string; doc_tsp: string; var result_xml: string; var message_error: string): boolean;
var   query_xml : string;
            res : boolean;
      error_cod : string;
       log_path : string;
     log_stream : TStringStream;

          t1 : string;
     ss : integer;
     dt : TDateTime;

     sm : TStringStream;
begin
  try
    try

      sm := TStringStream.Create(doc_text);
      sm.SaveToFile('C:\GetEtran\log\send_text.txt');
      sm.Free;

      sm := TStringStream.Create(doc_sign);
      sm.SaveToFile('C:\GetEtran\log\send_sign.sig');
      sm.Free;

      sm := TStringStream.Create(doc_tsp);
      sm.SaveToFile('C:\GetEtran\log\send_tsp.sig');
      sm.Free;


      query_xml := '<setECP version="1.0">' + char(13) + char(10);
      query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
      query_xml := query_xml + '<text value="' + ReplaceStr(doc_text, '"', '&quot;') + '"/>'  + char(13) + char(10);
      query_xml := query_xml + '<ecp value="' + doc_sign + '"/>'  + char(13) + char(10);
      query_xml := query_xml + '<tsp value="' + doc_tsp + '"/>'  + char(13) + char(10);
      query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
      query_xml := query_xml + '</setECP>';

//      log_path := ExtractFilePath(ParamStr(0)) + '\LOG_ECP\' + IntToStr(doc_id);
//      if not DirectoryExists(log_path) then ForceDirectories(log_path);
//      log_stream := TStringStream.Create(query_xml);
//      log_stream.SaveToFile(log_path + '\' + 'sendecp_query_' + FormatDateTime('yyyymmddhhnnss', Now) + '.txt');
//      log_stream.Free;


      t1  := query_xml;
      dt  := Now;


      sm := TStringStream.Create(query_xml);
      sm.SaveToFile('C:\GetEtran\log\send.txt');
      sm.Free;



      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranECPUsers, fmEtranMain._GetEtranECPPassword, query_xml, message_error);

      ss  := MilliSecondsBetween(Now, dt);
//      SQLLogBegin('GetECPText', ss, t1, query_xml);

//      log_stream := TStringStream.Create(query_xml);
//      log_stream.SaveToFile(log_path + '\' + 'sendecp_result_' + FormatDateTime('yyyymmddhhnnss', Now) + '.txt');
//      log_stream.Free;

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);
        if res = True then begin
          result_xml := query_xml;
        end;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  Result := res;
end;

function TfmECPServerMethods.SendECPBinary(doc_id: integer; doc_text: string; doc_sign: string; doc_tsp: string; var result_xml: string; var message_error: string): boolean;
var   query_xml : string;
            res : boolean;
      error_cod : string;
begin
  try
    try
      query_xml := '<setECP version="1.0">' + char(13) + char(10);
      query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
      query_xml := query_xml + '<textBinary value="' + ReplaceStr(doc_text, '"', '&quot;') + '"/>'  + char(13) + char(10);
      query_xml := query_xml + '<ecp value="' + doc_sign + '"/>'  + char(13) + char(10);
      query_xml := query_xml + '<tsp value="' + doc_tsp + '"/>'  + char(13) + char(10);
      query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
      query_xml := query_xml + '<useBinary/>' + char(13) + char(10);
      query_xml := query_xml + '</setECP>';

      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranECPUsers, fmEtranMain._GetEtranECPPassword, query_xml, message_error);

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);
        if res = True then begin
//          result_xml := ParserPassport(query_xml);
          result_xml := query_xml;
        end;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  Result := res;
end;


function TfmECPServerMethods.SendDocs(doc_text: string; var result_xml: string; var message_error: string): boolean;
var   query_xml : string;
            res : boolean;
      error_cod : string;
             dt : TDateTime;
             ss : Integer;
             t1, t2 : string;
         log_path : string;
         log_stream : TStringStream;
begin
  try
    try
      query_xml     := doc_text;
      result_xml    := '';
      message_error := '';

      t1  := query_xml;
      dt  := Now;
      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranECPUsers, fmEtranMain._GetEtranECPPassword, query_xml, message_error);
      ss  := MilliSecondsBetween(Now, dt);

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);
        if res = True then begin
          result_xml := query_xml;
        end else begin
          result_xml := query_xml;
        end;
      end;

      SQLLogBegin('SendDocs', ss, t1, query_xml);

//      log_path := ExtractFilePath(ParamStr(0)) + '\time\';
//      if not DirectoryExists(log_path) then ForceDirectories(log_path);
//      t1 := IntToStr(ss) + ';' + t1 + ';' + t2;
//      log_stream := TStringStream.Create(t1);
//      log_stream.SaveToFile(log_path + '\' + 'tm_' + RightStr('000' + IntToStr(Random(100)),3) + '_' + FormatDateTime('yyyymmddhhnnss', Now) + '.txt');
//      log_stream.Free;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  Result := res;
end;


function TfmECPServerMethods.SendDocsVagon(doc_text: string; var result_xml: string; var message_error: string): boolean;
var   query_xml : string;
            res : boolean;
      error_cod : string;
             dt : TDateTime;
             ss : Integer;
             t1, t2 : string;
         log_path : string;
         log_stream : TStringStream;
begin
  try
    try
      query_xml     := doc_text;
      result_xml    := '';
      message_error := '';

      t1  := query_xml;
      dt  := Now;
      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranECPUsers, fmEtranMain._GetEtranECPPassword, query_xml, message_error);
      ss  := MilliSecondsBetween(Now, dt);

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);
        if res = True then begin
          result_xml := query_xml;
        end else begin
          result_xml := query_xml;
        end;
      end;

      SQLLogBegin('SendDocs', ss, t1, query_xml);

//      log_path := ExtractFilePath(ParamStr(0)) + '\time\';
//      if not DirectoryExists(log_path) then ForceDirectories(log_path);
//      t1 := IntToStr(ss) + ';' + t1 + ';' + t2;
//      log_stream := TStringStream.Create(t1);
//      log_stream.SaveToFile(log_path + '\' + 'tm_' + RightStr('000' + IntToStr(Random(100)),3) + '_' + FormatDateTime('yyyymmddhhnnss', Now) + '.txt');
//      log_stream.Free;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  Result := res;
end;


function TfmECPServerMethods.RejectDocs(doc_id: integer; var result_xml: string; var message_error: string): boolean;
var   query_xml : string;
            res : boolean;
      error_cod : string;
begin
  try
    try
      query_xml := '<rejectECP version="1.0">' + char(13) + char(10);
      query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
      query_xml := query_xml + '<remark value=""/>' + char(13) + char(10);
      query_xml := query_xml + '</rejectECP>';


      result_xml    := '';
      message_error := '';

      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranECPUsers, fmEtranMain._GetEtranECPPassword, query_xml, message_error);

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);
        if res = True then begin
          result_xml := query_xml;
        end else begin
          result_xml := query_xml;
        end;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  Result := res;
end;

function TfmECPServerMethods.CancelDocs(doc_id: integer; var result_xml: string; var message_error: string): boolean;
var   query_xml : string;
            res : boolean;
      error_cod : string;
begin
  try
    try
      query_xml := '<rejectECP version="1.0">' + char(13) + char(10);
      query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
      query_xml := query_xml + '<remark value=""/>' + char(13) + char(10);
      query_xml := query_xml + '</rejectECP>';


      result_xml    := '';
      message_error := '';

      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranECPUsers, fmEtranMain._GetEtranECPPassword, query_xml, message_error);


      query_xml := '<invoiceCancel version="1.0">' + char(13) + char(10);
      query_xml := query_xml + '<invoiceID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
      query_xml := query_xml + '<useWarning/>' + char(13) + char(10);
      query_xml := query_xml + '</invoiceCancel>';


      result_xml    := '';
      message_error := '';

      res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranECPUsers, fmEtranMain._GetEtranECPPassword, query_xml, message_error);

      if res = True then begin
        res := CheckEtranXML(query_xml, message_error, error_cod);
        if res = True then begin
          result_xml := query_xml;
        end else begin
          result_xml := query_xml;
        end;
      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  Result := res;
end;

// Запрос справочников НСИ
function TfmECPServerMethods.GetNSI(table_name: string; trans_id: integer; var result_xml: string; var message_error: string): boolean;
var   query_xml : string;
            res : boolean;
      error_cod : string;
           done : boolean;
      cnt_query : integer;
      s : string;
begin
  try
    try
      done := True;
      cnt_query := 0;

      while done do begin

        if trans_id = 0 then
          query_xml := '<getNSI version="1.0"><tableName value="' + table_name + '"/><fromTransID value=""/><useMod11/></getNSI>'
        else
          query_xml := '<getNSI version="1.0"><tableName value="' + table_name + '"/><fromTransID value="' + IntToStr(trans_id) + '"/><useMod11/></getNSI>';

        s := query_xml;

        res := GetEtran(fmEtranMain._GetEtranIP, fmEtranMain._GetEtranUsers, fmEtranMain._GetEtranPassword, query_xml, message_error);
        cnt_query := cnt_query + 1;

        if res = True then begin

          res := CheckEtranXML(query_xml, message_error, error_cod);

          if res = True then begin
            result_xml := query_xml;
            done := False;
          end else begin
            if error_cod = '100' then begin
              if cnt_query < 5 then Sleep(2500)
              else done := False;
            end else done := False;

          end;

        end else done := False;

      end;

    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
      end;
    end;
  finally
  end;

  if message_error <> '' then begin
    message_error := s + char(10) + query_xml + char(10) + message_error;
  end;


  Result := res;
end;

end.

