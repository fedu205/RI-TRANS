unit ECPTestSign;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxControls, cxContainer, cxEdit, dxBarBuiltInMenu, cxPC, cxLabel, cxTextEdit,
  cxMemo, Soap.EncdDecd, CAPICOM_TLB, TSPCOM_TLB, Soap.SOAPHTTPTrans,
  DataSnap.DSProviderDataModuleAdapter, StrUtils,
  Datasnap.DSServer, Datasnap.DSAuth, Winapi.ActiveX,
  Datasnap.DSSession, Datasnap.DSTCPServerTransport, IdGlobal, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, ECPServerUtils,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Data.DBXDataSnap, Data.DBXCommon, IPPeerClient, Data.DB, Data.SqlExpr, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, Soap.InvokeRegistry, System.Net.URLClient, Soap.Rio, Soap.SOAPHTTPClient,
  Data.Win.ADODB, dxSkinWXI;

type
  TfmECPTestSign = class(TForm)
    Panel1: TPanel;
    cxButton4: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxMemo1: TcxMemo;
    cxMemo2: TcxMemo;
    cxMemo3: TcxMemo;
    cxMemo4: TcxMemo;
    cxMemo5: TcxMemo;
    cxTextEdit1: TcxTextEdit;
    Panel2: TPanel;
    Button1: TButton;
    cxButton1: TcxButton;
    Button2: TButton;
    SQLConnection1: TSQLConnection;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    HTTPRIO1: THTTPRIO;
    cxTextEdit2: TcxTextEdit;
    cxButton2: TcxButton;
    procedure cxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure HTTPRIO1AfterExecute(const MethodName: string; SOAPResponse: TStream);
    procedure HTTPRIO1BeforeExecute(const MethodName: string; SOAPRequest: TStream);
    procedure cxButton2Click(Sender: TObject);
  private
    Fdoc1 : string;
  public
    constructor Create(AOwner: TApplication); reintroduce;
  end;

var
  fmECPTestSign: TfmECPTestSign;

implementation

{$R *.dfm}

uses EtranMain, ECPServerMethods, fmECPServerMethodsClient, ECPServerContainer, Wcrypt2, IEtranSysservice;

procedure TfmECPTestSign.Button1Click(Sender: TObject);
var AStream : TStringStream;
    MessageBASE64 : TMemoryStream;
begin
  AStream       := TStringStream.Create(Fdoc1);
  MessageBASE64 := TMemoryStream.Create;
  DecodeStream(AStream, MessageBASE64);
  MessageBASE64.SaveToFile('c:\1\xxx.txt');
  MessageBASE64.Free;
  AStream.Free;
end;

procedure TfmECPTestSign.Button2Click(Sender: TObject);
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
  doc_id : integer;
begin
  SQLConnection := TSQLConnection.Create(nil);
  SQLConnection.DriverName  := 'DataSnap';
  SQLConnection.LoginPrompt := False;
  SQLConnection.Params.Values['HostName'] := fmEtranMain.GetLocalIP;
  SQLConnection.Params.Values['Port']     := IntToStr(fmECPServerContainer.DSTCPServerTransport1.Port);
  SQLConnection.Open;

  ECPServer := TfmECPServerMethodsClient.Create(SQLConnection.DBXConnection, True);
  cxMemo1.Lines.Clear;
  cxMemo1.Lines.Add(' [Сервер ' + ECPServer.GetVersion + ']');

  doc_id := StrToInt(cxTextEdit1.Text);

  if ECPServer.GetECPText(doc_id, result_xml, message_error) then begin
    doc_text := result_xml;

    cxMemo1.Lines.Add('GetECPSign. Подписать документа №' + IntToStr(doc_id) + '...');
    if ECPServer.GetECPSign(doc_id, doc_text, result_xml, message_error) then begin
      doc_sign := result_xml;

      cxMemo1.Lines.Add('GetECPTSP. Запрос штампа времени для документа №' + IntToStr(doc_id) + '...');
      if ECPServer.GetECPTSP(doc_id, doc_sign, result_xml, message_error) then begin
        doc_tsp := result_xml;

        cxMemo1.Lines.Add('SendECP. Отправка документа №' + IntToStr(doc_id) + ' в ЭТРАН...');
        if ECPServer.SendECP(doc_id, doc_text, doc_sign, doc_tsp, result_xml, message_error) then begin
          cxMemo1.Lines.Add('OK:' + #10 + result_xml);
        end else begin
          cxMemo1.Lines.Add('ERROR:' + #10 + message_error);
        end;

      end else begin
        cxMemo1.Lines.Add('ERROR:' + #10 + message_error);
      end;

    end else begin
      cxMemo1.Lines.Add('ERROR:' + #10 + message_error);
    end;

  end else begin
    cxMemo1.Lines.Add('ERROR:' + #10 + message_error);
  end;
end;

procedure TfmECPTestSign.Button3Click(Sender: TObject);
var hCert         : PCCERT_CONTEXT; // Handle сертификата

    MessageArray  : array of PByte; // Структура ссылок на подписываемые файлы
    MessageSize   : array of DWORD; // Структура ссылок на размер подписываемых файлов

    SigParams     : CRYPT_SIGN_MESSAGE_PARA; // Структура параметров для подписи

    cbSignedMessageBlob : DWORD; // Размер подписи

    pStreamOut    : TMemoryStream; // Подписанные данных

    MessageBASE64 : TStringStream; // Поток для сохранения данных в формате BASE64

    res           : string;

    hStoreHandle : HCERTSTORE; // ссылка на хранилище

    contner_name   : PChar; // Имя провайдера
    store_name     : PChar; // Имя хранилища
//    cert_name      : PChar; // Имя сертификата
    hProvHandle  : HCRYPTPROV;     // ссылка на провайдер

//    Attr    : CRYPT_ATTRIBUTE;
//    FTime   : TFileTime;
//    NowTime : CRYPT_ATTR_BLOB;
//    pbAuth  : PBYTE;
//    cbAuth  : DWORD;
begin
  // Получаем handle на сертификат

  cxMemo1.Lines.Add('Старт');

  // Получение дескриптора криптографического провайдера
  contner_name := nil;
  if not CryptAcquireContext(@hProvHandle, contner_name, nil, PROV_RSA_FULL, 0) then begin
    cxMemo1.Lines.Add('Криптографический провайдер не найден!');
    cxMemo1.Lines.Add('Ошибка:' + IntToHex(HRESULT(GetLastError),8) + '(' + IntToStr(HRESULT(GetLastError)) + ')');

    if not CryptAcquireContext(@hProvHandle, nil, nil, PROV_RSA_FULL, CRYPT_NEWKEYSET) then begin
      cxMemo1.Lines.Add('Криптографический провайдер не создан [1 - CRYPT_NEWKEYSET]!');
      cxMemo1.Lines.Add('Ошибка:' + IntToHex(HRESULT(GetLastError),8) + '(' + IntToStr(HRESULT(GetLastError)) + ')');
    end else
    if not CryptAcquireContext(@hProvHandle, nil, nil, PROV_RSA_FULL, CRYPT_MACHINE_KEYSET) then begin
      cxMemo1.Lines.Add('Криптографический провайдер не создан [2 - CRYPT_MACHINE_KEYSET]!');
      cxMemo1.Lines.Add('Ошибка:' + IntToHex(HRESULT(GetLastError),8) + '(' + IntToStr(HRESULT(GetLastError)) + ')');
    end;

  end;
//  if (not CryptAcquireContext(@hProvHandle, nil, nil, PROV_RSA_FULL, 0)) then
//  begin
//    cxMemo1.Lines.Add('Криптографический провайдер не найден! Создаем новый...' + IntToHex(HRESULT(GetLastError),8));

//    if HRESULT(GetLastError) = NTE_BAD_KEYSET then

//    if (not CryptAcquireContext(@hProvHandle, nil, nil, PROV_RSA_FULL, CRYPT_NEWKEYSET)) then
//    begin
//      cxMemo1.Lines.Add('Криптографический провайдер не найден!');
//      RaiseLastOSError;
//    end;

//  end;

  // Открытие системного хранилища сертификатов.
  store_name := StrAlloc(length('MY') + 1);
  StrPCopy(store_name, 'MY');
  hStoreHandle := CertOpenSystemStore(hProvHandle, store_name);
  StrDispose(store_name);

  if hStoreHandle = nil then begin
    cxMemo1.Lines.Add('Ошибка при открытии системного хранилища сертификатов!' + #10 + SysErrorMessage(GetLastError));
    CryptReleaseContext(hProvHandle, 0);
    exit;
  end;

  hCert := nil;
  hCert := CertEnumCertificatesInStore(hStoreHandle, hCert);

  while hCert <> nil do begin
    res := GetSerialNumber(hCert);
//442036339052364662811335995795471071080
//03 80BF A4BA 99B4 C880 ED11 76AB 93B0 E6D4
    cxMemo1.Lines.Add(res);
    hCert := CertEnumCertificatesInStore(hStoreHandle, hCert);
  end;

end;

procedure TfmECPTestSign.Button4Click(Sender: TObject);
var hCert         : PCCERT_CONTEXT; // Handle сертификата

    MessageArray  : array of PByte; // Структура ссылок на подписываемые файлы
    MessageSize   : array of DWORD; // Структура ссылок на размер подписываемых файлов

    SigParams     : CRYPT_SIGN_MESSAGE_PARA; // Структура параметров для подписи

    cbSignedMessageBlob : DWORD; // Размер подписи

    pStreamOut    : TMemoryStream; // Подписанные данных

    MessageBASE64 : TStringStream; // Поток для сохранения данных в формате BASE64

    res           : string;

    hStoreHandle : HCERTSTORE; // ссылка на хранилище

    contner_name   : PChar; // Имя провайдера
    store_name     : PChar; // Имя хранилища
//    cert_name      : PChar; // Имя сертификата
    hProvHandle  : HCRYPTPROV;     // ссылка на провайдер

//    Attr    : CRYPT_ATTRIBUTE;
//    FTime   : TFileTime;
//    NowTime : CRYPT_ATTR_BLOB;
//    pbAuth  : PBYTE;
//    cbAuth  : DWORD;
begin
  // Получаем handle на сертификат

  // Получение дескриптора криптографического провайдера
  contner_name := nil;
  if not CryptAcquireContext(@hProvHandle, contner_name, nil, PROV_RSA_FULL, 0) then begin
    cxMemo1.Lines.Add('Криптографический провайдер не найден!');
    cxMemo1.Lines.Add('Ошибка:' + IntToHex(HRESULT(GetLastError),8) + '(' + IntToStr(HRESULT(GetLastError)) + ')');

    if not CryptAcquireContext(@hProvHandle, nil, nil, PROV_RSA_FULL, CRYPT_NEWKEYSET) then begin
      cxMemo1.Lines.Add('Криптографический провайдер не создан [1 - CRYPT_NEWKEYSET]!');
      cxMemo1.Lines.Add('Ошибка:' + IntToHex(HRESULT(GetLastError),8) + '(' + IntToStr(HRESULT(GetLastError)) + ')');
      if not CryptAcquireContext(@hProvHandle, nil, nil, PROV_RSA_FULL, CRYPT_MACHINE_KEYSET) then begin
        cxMemo1.Lines.Add('Криптографический провайдер не создан [2 - CRYPT_MACHINE_KEYSET]!');
        cxMemo1.Lines.Add('Ошибка:' + IntToHex(HRESULT(GetLastError),8) + '(' + IntToStr(HRESULT(GetLastError)) + ')');
      end else begin
        cxMemo1.Lines.Add('Контейнер открыт [3]...');
      end;
    end else begin
      cxMemo1.Lines.Add('Контейнер открыт [2]...');
    end;

  end else begin
    cxMemo1.Lines.Add('Контейнер открыт [1]...');
  end;

//  if not CryptAcquireContext(@hProvHandle, nil, nil, PROV_RSA_FULL, CRYPT_DELETEKEYSET) then begin
//    cxMemo1.Lines.Add('Ошибка:' + IntToHex(HRESULT(GetLastError),8) + '(' + IntToStr(HRESULT(GetLastError)) + ')');
//  end else begin
//    cxMemo1.Lines.Add('Контейнер удален...');
//  end;

end;


constructor TfmECPTestSign.Create(AOwner: TApplication);
begin
  Screen.Cursor := crHourglass;
  inherited Create(AOwner);

  Screen.Cursor := crDefault;
end;


function GetECPTSP(doc_text: string; var result_xml: string; var message_error: string): boolean;
var  oRequest : TSPCOM_TLB.ITSPRequest2;
     oStamp   : TSPCOM_TLB.ITSPStamp2;
     oHash    : CAPICOM_TLB.IHashedData;

     data3    : PSafeArray;
     f2       : TMemoryStream;
     data5    : WideString;
     res      : boolean;

     m : integer;
     cmin, cmax, i, wsRead : integer;
begin
  try
    try
      m := 1;
      oRequest := CoTSPRequest.Create as ITSPRequest2;
      m := 2;
      oStamp   := CoTSPStamp.Create as ITSPStamp2;
      m := 3;

      data5  := doc_text;
      m := 4;
      oHash  := CoHashedData.Create;
      m := 5;
      oHash.Algorithm := CAPICOM_HASH_ALGORITHM_SHA1;
      m := 6;
      oHash.Hash(data5);
      m := 7;

      oRequest.Hash := oHash;
      m := 8;
      oRequest.TSAAddress := 'http://pkitrans.ru/tspca1_niias/tsp.srf';
      m := 9;

      oStamp := oRequest.Send(false) as ITSPStamp2;

      m := 10;
      data3 := oStamp.Export2;
      m := 11;

      SafeArrayGetLBound(data3, 1, cmin);
      m := 12;
      SafeArrayGetUBound(data3, 1, cmax);
      m := 13;

      f2 := TMemoryStream.Create;
      m := 14;
      for i := cmin to cmax do begin
        SafeArrayGetElement(data3, i, wsRead);
        f2.Write(wsRead, 1);
      end;
      m := 15;

      f2.Seek(0,0);

      m := 16;
      result_xml := Diadoc_StreamToBASE64(f2);

      m := 17;
      f2.Free;

      res := True;
    except
      on E: Exception do begin
        res := False;
        message_error := E.Message;
        ShowMessage(IntToStr(m) + ':' + message_error);
      end;
    end;
  finally
  end;

  Result := res;
end;


procedure TfmECPTestSign.Button5Click(Sender: TObject);
var
    result_xml: string;
    message_error: string;
begin
  GetECPTSP('111222333', result_xml, message_error);
end;

procedure TfmECPTestSign.cxButton1Click(Sender: TObject);
var doc_id: integer;
    query_xml: string;
    ip, login, password: string;

    cer_num : string;
    doc_text: UTF8String;
    result_xml, message_error: string;
    f : TStringStream;
    doc_sign, doc_tsp : string;

    oRequest : TSPCOM_TLB.ITSPRequest2;
    oStamp   : TSPCOM_TLB.ITSPStamp2;
    oHash    : CAPICOM_TLB.IHashedData;

    data3    : PSafeArray;
    f2       : TMemoryStream;
    data5    : WideString;
    res      : boolean;

    cmin, cmax, i, wsRead : integer;

    ss : integer;
    dt : TDateTime;

    HTTP : THTTPReqResp;
    resp : TStringStream;
    s : TStringList;
    xml  : RawByteString;
    soap_send : RawByteString;

    sm : TStringStream;

begin
  ip       := fmEtranMain._GetEtranIP;
  login    := fmEtranMain._GetEtranUsers;
  password := fmEtranMain._GetEtranPassword;
  cer_num  := fmEtranMain._GetCertNum;

  doc_id := StrToInt(cxTextEdit2.Text);

  query_xml := '<getTextForECP version="1.0"><docID value="' + IntToStr(doc_id) + '"/></getTextForECP>';

//  MSG := query_xml;
  GetIEtranSys(False, ip, HTTPRIO1).GetBlock(login, password, query_xml);
//  query_xml := MSG;

  sm := TStringStream.Create(query_xml);
  sm.SaveToFile('01query_xml.txt');
  sm.Free;

  doc_text  := ParserECPText(query_xml);

  sm := TStringStream.Create(doc_text);
  sm.SaveToFile('02doc_text.txt');
  sm.Free;


  f := TStringStream.Create(doc_text);
  Diadoc_SignBASE64(cer_num, f, result_xml, message_error);
  doc_sign := result_xml;

  sm := TStringStream.Create(doc_sign);
  sm.SaveToFile('03doc_sign.sig');
  sm.Free;

  oRequest := CoTSPRequest.Create as ITSPRequest2;
  oStamp   := CoTSPStamp.Create as ITSPStamp2;

  data5  := doc_sign;
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

  doc_tsp := Diadoc_StreamToBASE64(f2);

  query_xml := '<setECP version="1.0" encoding=''UTF-8''>' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<text value="' + ReplaceStr(doc_text, '"', '&quot;') + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sign + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';


  sm := TStringStream.Create(query_xml);
  sm.SaveToFile('04query_xml.txt');
  sm.Free;

  GetIEtranSys(False, ip, HTTPRIO1).GetBlock(login, password, query_xml);


  ShowMessage(query_xml);
end;

procedure TfmECPTestSign.cxButton2Click(Sender: TObject);
var doc_id: integer;
    query_xml: string;
    ip, login, password: string;

    cer_num : string;
    doc_text: string;
    doc_text2: string;
    result_xml, message_error: string;
    f : TStringStream;
    doc_sign, doc_tsp : string;

    oRequest : TSPCOM_TLB.ITSPRequest2;
    oStamp   : TSPCOM_TLB.ITSPStamp2;
    oHash    : CAPICOM_TLB.IHashedData;

    data3    : PSafeArray;
    f2       : TMemoryStream;
    data5    : WideString;
    res      : boolean;

    cmin, cmax, i, wsRead : integer;

    ss : integer;
    dt : TDateTime;

    HTTP : THTTPReqResp;
    resp : TStringStream;
    s : TStringList;
    xml  : RawByteString;
    soap_send : RawByteString;

    sm : TStringStream;

    sp_get_ecp_text: TADOStoredProc;

begin

  cxMemo1.Lines.Clear;
  cxMemo1.Lines.Add('Start...');

  ip       := fmEtranMain._GetEtranIP;
  login    := fmEtranMain._GetEtranUsers;
  password := fmEtranMain._GetEtranPassword;
  cer_num  := fmEtranMain._GetCertNum;

  doc_id := StrToInt(cxTextEdit2.Text);

  query_xml := '<getTextForECP version="1.0"><docID value="' + IntToStr(doc_id) + '"/></getTextForECP>';

  cxMemo1.Lines.Add('Query1 start');

//  MSG := query_xml;
  GetIEtranSys(False, ip, HTTPRIO1).GetBlock(login, password, query_xml);
//  query_xml := MSG;

  cxMemo1.Lines.Add('Query1 end');
  cxMemo1.Lines.Add(query_xml);



  sp_get_ecp_text := TADOStoredProc.Create(nil);
  sp_get_ecp_text.ConnectionString := fmEtranMain._GetConnectString;
  sp_get_ecp_text.ProcedureName := 'sp_get_ecp_text';
  sp_get_ecp_text.Parameters.Refresh;
  sp_get_ecp_text.Parameters.ParamByName('@xml').Value := ReplaceStr(query_xml, 'encoding="utf-8"', '');
  sp_get_ecp_text.Open;
  doc_text := sp_get_ecp_text.FieldByName('ecp_text').AsString;

  cxMemo1.Lines.Add('Proc end');
  cxMemo1.Lines.Add('======================================================');
  cxMemo1.Lines.Add(doc_text);

//  sm := TStringStream.Create(query_xml);
//  sm.SaveToFile('11query_xml.txt');
//  sm.Free;
//
  doc_text2 := ParserECPText(query_xml);
  cxMemo1.Lines.Add('======================================================');
  cxMemo1.Lines.Add(doc_text2);
//
//  sm := TStringStream.Create(doc_text);
//  sm.SaveToFile('12doc_text.txt');
//  sm.Free;


  f := TStringStream.Create(doc_text);
  Diadoc_SignBASE64(cer_num, f, result_xml, message_error);
  doc_sign := result_xml;

  cxMemo1.Lines.Add('Sing end');
  cxMemo1.Lines.Add(doc_sign);

//  sm := TStringStream.Create(doc_sign);
//  sm.SaveToFile('13doc_sign.sig');
//  sm.Free;

  oRequest := CoTSPRequest.Create as ITSPRequest2;
  oStamp   := CoTSPStamp.Create as ITSPStamp2;

  data5  := doc_sign;
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

  doc_tsp := Diadoc_StreamToBASE64(f2);

  cxMemo1.Lines.Add('Time end');

  query_xml := '<setECP version="1.0">' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<text value="' + ReplaceStr(doc_text2, '"', '&quot;') + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sign + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';


//  sm := TStringStream.Create(query_xml);
//  sm.SaveToFile('14query_xml.txt');
//  sm.Free;

  cxMemo1.Lines.Add(query_xml);
  GetIEtranSys(False, ip, HTTPRIO1).GetBlock(login, password, query_xml);


  cxMemo1.Lines.Add('Query2 end');

  ShowMessage(query_xml);
end;

procedure TfmECPTestSign.cxButton4Click(Sender: TObject);
var        res : boolean;
             f : TStringStream;
      log_path : string;
    log_stream : TStringStream;
    point : string;
    dt : TDateTime;
    ss : integer;
    result_xml: string;
    message_error: string;
begin
  f := TStringStream.Create();
  f.LoadFromFile('test.txt');
  res := Diadoc_SignBASE64(cxtextedit1.Text, f, result_xml, message_error);
  f.Free;
  f := TStringStream.Create(result_xml);
  f.SaveToFile('sign.txt');
end;

procedure TfmECPTestSign.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmECPTestSign.HTTPRIO1AfterExecute(const MethodName: string; SOAPResponse: TStream);
begin
  TMemoryStream(SOAPResponse).SaveToFile('SOAPResponse.txt');
end;

procedure TfmECPTestSign.HTTPRIO1BeforeExecute(const MethodName: string; SOAPRequest: TStream);
begin
  TMemoryStream(SOAPRequest).SaveToFile('SOAPRequest.txt');
end;

end.
