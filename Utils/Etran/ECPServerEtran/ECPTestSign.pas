unit ECPTestSign;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxControls, cxContainer, cxEdit, dxBarBuiltInMenu, cxPC, cxLabel, cxTextEdit,
  cxMemo, Soap.EncdDecd, CAPICOM_TLB, TSPCOM_TLB,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, ECPServerUtils,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Data.DBXDataSnap, Data.DBXCommon, IPPeerClient, Data.DB, Data.SqlExpr, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TfmECPTestSign = class(TForm)
    Panel1: TPanel;
    cxButton4: TcxButton;
    cxLabel1: TcxLabel;
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
    procedure cxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    Fdoc1 : string;
  public
    constructor Create(AOwner: TApplication); reintroduce;
  end;

var
  fmECPTestSign: TfmECPTestSign;

implementation

{$R *.dfm}

uses ECPServerMain, ECPServerMethods, fmECPServerMethodsClient, ECPServerContainer, Wcrypt2;

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
  SQLConnection.Params.Values['HostName'] := fmECPServerMain.GetLocalIP;
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
var doc_text        : string;
    doc_base64      : string;
    doc_base64_text : string;

    doc_sig1 : string;
    doc_sig2 : string;
    doc_sig3 : string;

    doc_tsp1 : string;
    doc_tsp2 : string;
    doc_tsp3 : string;

    result_xml : string;

    query_xml     : string;
    message_error : string;

    AStream       : TStringStream;
    MessageBASE64 : TStringStream;
    f             : TStringStream;

    doc_id : integer;
    fl : TStringStream;
begin
  doc_id := StrToInt(cxTextEdit1.Text);

  // Получить Binnary
  query_xml := '<getTextForECP version="1.0"><docID value="' + IntToStr(doc_id) + '"/><useBinary/></getTextForECP>';
  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_1_gettext_query.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranUsers, fmECPServerMain._GetEtranPassword, query_xml, message_error);
  doc_base64 := ParserECPBinary(query_xml);

  fl := TStringStream.Create(doc_base64);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_2_gettext_result.txt');
  fl.Free;

  // Получить Text
  query_xml := '<getTextForECP version="1.0"><docID value="' + IntToStr(doc_id) + '"/></getTextForECP>';

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_3_gettext_query.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranUsers, fmECPServerMain._GetEtranPassword, query_xml, message_error);
  doc_text := ParserECPText(query_xml);

  fl := TStringStream.Create(doc_text);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_4_gettext_result.txt');
  fl.Free;


  // Преобразовать в Text
  AStream  := TStringStream.Create(doc_base64);
  MessageBASE64 := TStringStream.Create;
  DecodeStream(AStream, MessageBASE64);
  doc_base64_text := MessageBASE64.DataString;
  MessageBASE64.Free;
  AStream.Free;

  // Подписать Text1
  f := TStringStream.Create(doc_text);
  Diadoc_SignBASE64(fmECPServerMain._GetCertNum, f, result_xml, message_error);
  doc_sig1 := result_xml;
  f.Free;

  fl := TStringStream.Create(doc_sig1);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_5_sig1.txt');
  fl.Free;

  // Подписать Binary
  f := TStringStream.Create(doc_base64);
  Diadoc_SignBASE64(fmECPServerMain._GetCertNum, f, result_xml, message_error);
  doc_sig2 := result_xml;
  f.Free;

  fl := TStringStream.Create(doc_sig2);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_6_sig2.txt');
  fl.Free;

  // Подписать Text2
  f := TStringStream.Create(doc_base64_text);
  Diadoc_SignBASE64(fmECPServerMain._GetCertNum, f, result_xml, message_error);
  doc_sig3 := result_xml;
  f.Free;

  fl := TStringStream.Create(doc_sig3);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_7_sig3.txt');
  fl.Free;

  // Поставить штамп времени1
  GetECPTSP(doc_sig1, result_xml, message_error);
  doc_tsp1 := result_xml;
  // Поставить штамп времени2
  GetECPTSP(doc_sig2, result_xml, message_error);
  doc_tsp2 := result_xml;
  // Поставить штамп времени3
  GetECPTSP(doc_sig3, result_xml, message_error);
  doc_tsp3 := result_xml;

  fl := TStringStream.Create(doc_tsp1);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_8_tsp1.txt');
  fl.Free;
  fl := TStringStream.Create(doc_tsp2);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_9_tsp2.txt');
  fl.Free;
  fl := TStringStream.Create(doc_tsp3);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_10_tsp3.txt');
  fl.Free;

  // Отправить 1
  query_xml := '<setECP version="1.0">' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<text value="' + ReplaceStr(doc_text, '"', '&quot;') + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sig1 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp1 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_11_setECP_query1.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranECPUsers, fmECPServerMain._GetEtranECPPassword, query_xml, message_error);

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_12_setECP_result1.txt');
  fl.Free;

  ShowMessage(query_xml);

  // Отправить 2
  query_xml := '<setECP version="1.0">' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<text value="' + ReplaceStr(doc_text, '"', '&quot;') + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sig2 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp2 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_13_setECP_query1.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranECPUsers, fmECPServerMain._GetEtranECPPassword, query_xml, message_error);

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_14_setECP_result1.txt');
  fl.Free;

  ShowMessage(query_xml);

  // Отправить 3
  query_xml := '<setECP version="1.0">' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<text value="' + ReplaceStr(doc_text, '"', '&quot;') + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sig3 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp3 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_15_setECP_query1.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranECPUsers, fmECPServerMain._GetEtranECPPassword, query_xml, message_error);

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_16_setECP_result1.txt');
  fl.Free;

  ShowMessage(query_xml);
//
//
   // Отправить 4
  query_xml := '<setECP version="1.0">' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<textBinary value="' + doc_base64 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sig1 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp1 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '<useBinary/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_17_setECP_query1.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranECPUsers, fmECPServerMain._GetEtranECPPassword, query_xml, message_error);

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_18_setECP_result1.txt');
  fl.Free;

  ShowMessage(query_xml);

  // Отправить 5
  query_xml := '<setECP version="1.0">' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<textBinary value="' + doc_base64 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sig2 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp2 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '<useBinary/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_19_setECP_query1.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranECPUsers, fmECPServerMain._GetEtranECPPassword, query_xml, message_error);

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_20_setECP_result1.txt');
  fl.Free;

  ShowMessage(query_xml);

  // Отправить 6
  query_xml := '<setECP version="1.0">' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<textBinary value="' + doc_base64 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sig3 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp3 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '<useBinary/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_21_setECP_query1.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranECPUsers, fmECPServerMain._GetEtranECPPassword, query_xml, message_error);

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_22_setECP_result1.txt');
  fl.Free;

  ShowMessage(query_xml);
//
  // Отправить 7
  query_xml := '<setECP version="1.0">' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<text value="' + ReplaceStr(doc_base64_text, '"', '&quot;') + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sig1 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp1 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_23_setECP_query1.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranECPUsers, fmECPServerMain._GetEtranECPPassword, query_xml, message_error);

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_24_setECP_result1.txt');
  fl.Free;

  ShowMessage(query_xml);

  // Отправить 8
  query_xml := '<setECP version="1.0">' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<text value="' + ReplaceStr(doc_base64_text, '"', '&quot;') + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sig2 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp2 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_25_setECP_query1.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranECPUsers, fmECPServerMain._GetEtranECPPassword, query_xml, message_error);

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_26_setECP_result1.txt');
  fl.Free;

  ShowMessage(query_xml);

  // Отправить 9
  query_xml := '<setECP version="1.0">' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<text value="' + ReplaceStr(doc_base64_text, '"', '&quot;') + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sig3 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp3 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_27_setECP_query1.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranECPUsers, fmECPServerMain._GetEtranECPPassword, query_xml, message_error);

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_28_setECP_result1.txt');
  fl.Free;

  ShowMessage(query_xml);


  doc_base64_text := ReplaceStr(doc_base64_text, char(2), '&#2');
  // Отправить 10
  query_xml := '<setECP version="1.0">' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<text value="' + ReplaceStr(doc_base64_text, '"', '&quot;') + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sig1 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp1 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_29_setECP_query1.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranECPUsers, fmECPServerMain._GetEtranECPPassword, query_xml, message_error);

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_30_setECP_result1.txt');
  fl.Free;

  ShowMessage(query_xml);

  // Отправить 11
  query_xml := '<setECP version="1.0">' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<text value="' + ReplaceStr(doc_base64_text, '"', '&quot;') + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sig2 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp2 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_31_setECP_query1.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranECPUsers, fmECPServerMain._GetEtranECPPassword, query_xml, message_error);

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_32_setECP_result1.txt');
  fl.Free;

  ShowMessage(query_xml);

  // Отправить 12
  query_xml := '<setECP version="1.0">' + char(13) + char(10);
  query_xml := query_xml + '<docID value="' + IntToStr(doc_id) + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<text value="' + ReplaceStr(doc_base64_text, '"', '&quot;') + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<ecp value="' + doc_sig3 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<tsp value="' + doc_tsp3 + '"/>'  + char(13) + char(10);
  query_xml := query_xml + '<version value="1"/>' + char(13) + char(10);
  query_xml := query_xml + '</setECP>';

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_33_setECP_query1.txt');
  fl.Free;

  GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranECPUsers, fmECPServerMain._GetEtranECPPassword, query_xml, message_error);

  fl := TStringStream.Create(query_xml);
  fl.SaveToFile('c:\www\test\' + IntToStr(doc_id) + '_34_setECP_result1.txt');
  fl.Free;

  ShowMessage(query_xml);

end;

procedure TfmECPTestSign.cxButton4Click(Sender: TObject);
var res           : boolean;
    query_xml     : string;
    doc_id        : integer;
    message_error : string;
    result_xml    : string;
    f             : TStringStream;

    doc1 : string;
    doc2 : string;
    doc3 : string;
    doc4 : string;
begin
  cxMemo1.Lines.Clear;
  cxMemo2.Lines.Clear;
  cxMemo3.Lines.Clear;
  cxMemo4.Lines.Clear;
  cxMemo5.Lines.Clear;

  doc_id := StrToInt(cxTextEdit1.Text);
  query_xml := '<getTextForECP version="1.0"><docID value="' + IntToStr(doc_id) + '"/><useBinary/></getTextForECP>';
//  query_xml := '<getTextForECP version="1.0"><docID value="' + IntToStr(doc_id) + '"/></getTextForECP>';

  cxMemo5.Lines.Add('ЗАПРОС ДАННЫХ ДЛЯ ПОДПИСИ');
  cxMemo5.Lines.Add(query_xml);

  res := GetEtran(fmECPServerMain._GetEtranIP, fmECPServerMain._GetEtranUsers, fmECPServerMain._GetEtranPassword, query_xml, message_error);

  cxMemo5.Lines.Add('ЗАПРОС ДАННЫХ ДЛЯ ПОДПИСИ: РЕЗУЛЬТАТ');
  cxMemo5.Lines.Add(query_xml);

  result_xml := ParserECPBinary(query_xml);

  doc1 := result_xml;
  cxMemo1.Lines.Add(doc1);
  Fdoc1 := doc1;

  f := TStringStream.Create(doc1);
  res := Diadoc_SignBASE64(fmECPServerMain._GetCertNum, f, result_xml, message_error);

  cxMemo5.Lines.Add('ЗАПРОС ДАННЫХ ДЛЯ ПОДПИСИ: РЕЗУЛЬТАТ');
  cxMemo5.Lines.Add(result_xml);
  doc2 := result_xml;
  cxMemo1.Lines.Add(doc2);
end;

procedure TfmECPTestSign.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
