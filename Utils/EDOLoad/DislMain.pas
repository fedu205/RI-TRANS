unit DislMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, ImgList, cxGraphics, cxClasses, EDOThread, DB, ADODB,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  ExtCtrls, cxTextEdit, cxMemo, cxRichEdit, cxLabel, cxPC, SOAPHTTPTrans,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxBarBuiltInMenu, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinTheBezier, System.ImageList, cxImageList;

type
  TfmDislMain = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxImageList1: TcxImageList;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    EDOConnection: TADOConnection;
    Panel1: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxRichEdit1: TcxRichEdit;
    cxRichEdit2: TcxRichEdit;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    dxBarButton3: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    Timer2: TTimer;
    dxBarButton7: TdxBarButton;
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
  private
    ThreadEDO : TThreadEDO;
    procedure OnTerminateThread(Sender: TObject);
  public
    { Public declarations }
  end;

var
  fmDislMain: TfmDislMain;

implementation



{$R *.dfm}

procedure TfmDislMain.dxBarButton1Click(Sender: TObject);
begin
  ThreadEDO := TThreadEDO.Create(EDOConnection.ConnectionString);
  ThreadEDO.OnTerminate := OnTerminateThread;
  dxBarButton1.Enabled := False;
  dxBarButton2.Enabled := True;
end;

procedure TfmDislMain.dxBarButton2Click(Sender: TObject);
begin
  dxBarButton2.Enabled := False;
//  Panel3.Visible := True;
//  Timer1.Enabled := True;
  ThreadEDO.Terminate;
end;

procedure TfmDislMain.OnTerminateThread(Sender: TObject);
begin
  dxBarButton1.Enabled := True;
//  Panel3.Visible := False;
//  Timer1.Enabled := False;
end;

procedure TfmDislMain.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;
  dxBarButton1Click(nil);
end;

procedure TfmDislMain.dxBarButton3Click(Sender: TObject);
var   HTTP : THTTPReqResp;
      resp : TStringStream;
      xml  : RawByteString;
 soap_send : RawByteString;
begin
  soap_send :=  '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:con="http://iit.ru/portal/Contraginvoice">' +
                '<soapenv:Header/>' +
                '<soapenv:Body>' +
                '<con:DocListRequest>' +
                '<cert_sn>239899AD000000017A19</cert_sn>' +
                '<inn>7702059030</inn>' +
                '<kpp>770201001</kpp>' +
                '<dateafter>10.11.2015</dateafter>' +
                '<datebefore>11.11.2015</datebefore>' +
                '</con:DocListRequest>' +
                '</soapenv:Body></soapenv:Envelope>';
  HTTP := THTTPReqResp.Create(nil);
  HTTP.UserName := 'RZD_WEB_SOVFRAHT';
  HTTP.Password := 'aj0Aeghi';
  resp := TStringStream.Create;
  xml  := UTF8Encode(soap_send);
//  HTTP.URL := 'http://188.127.243.105/IIT.test/ContrAgInvoice/services';
  HTTP.URL := 'http://iit.ru:80/IIT/ContrAgInvoice/services';
  HTTP.Execute(xml, resp);
  xml := UTF8ToString(resp.DataString);
  cxRichEdit1.Lines.Clear;
  cxRichEdit1.Lines.Add(xml);
end;

procedure TfmDislMain.dxBarButton4Click(Sender: TObject);
begin
//
end;

procedure TfmDislMain.dxBarButton5Click(Sender: TObject);
begin
//
end;

procedure TfmDislMain.dxBarButton6Click(Sender: TObject);
var   HTTP : THTTPReqResp;
      resp : TStringStream;
      xml  : RawByteString;
 soap_send : RawByteString;
begin
  soap_send :=  '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:con="http://iit.ru/portal/Contraginvoice">'+
                ' <soapenv:Header/>'+
                '   <soapenv:Body>'+
                '      <con:DocListRequest>'+
                '         <cert_sn>2e1dec370000000041f8</cert_sn>'+
                '         <inn>7702059030</inn>'+
                '         <kpp>770201001</kpp>'+
                '         <dateafter>15.12.2014</dateafter>'+
                '         <datebefore>15.12.2014</datebefore>'+
                '         <dateizmafter>15.12.2014</dateizmafter>'+
                '         <dateizmbefore>15.12.2014</dateizmbefore>'+
                '      </con:DocListRequest>'+
                '   </soapenv:Body>'+
                '</soapenv:Envelope>';
  HTTP := THTTPReqResp.Create(nil);
  HTTP.UserName := 'RZD_WEB_SOVFRAHT';
  HTTP.Password := 'aj0Aeghi';
  resp := TStringStream.Create;
  xml  := UTF8Encode(soap_send);
//  HTTP.URL := 'http://188.127.243.105/IIT.test/ContrAgInvoice/services';
  HTTP.URL := 'http://iit.ru:80/IIT/ContrAgInvoice/services';
  HTTP.Execute(xml, resp);
  xml := UTF8ToString(resp.DataString);
  cxRichEdit1.Lines.Clear;
  cxRichEdit1.Lines.Add(xml);
end;

procedure TfmDislMain.dxBarButton7Click(Sender: TObject);
var   HTTP : THTTPReqResp;
      resp : TStringStream;
      xml  : RawByteString;
 soap_send : RawByteString;
begin
  soap_send :=  '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:con="http://iit.ru/portal/Contraginvoice">'+
				'<soapenv:Header/>'+
				'<soapenv:Body>'+
				'<con:DocDataRequest>'+
				'<cert_sn>2e1dec370000000041f8</cert_sn>'+
				'<docid>85083212</docid>'+
				'<inn>7702059030</inn>'+
				'<kpp>770201001</kpp>'+
				'</con:DocDataRequest>'+
				'</soapenv:Body>'+
				'</soapenv:Envelope>';

  HTTP := THTTPReqResp.Create(nil);
  HTTP.UserName := 'RZD_WEB_SOVFRAHT';
  HTTP.Password := 'aj0Aeghi';
  resp := TStringStream.Create;
  xml  := UTF8Encode(soap_send);
//  HTTP.URL := 'http://188.127.243.105/IIT.test/ContrAgInvoice/services';
  HTTP.URL := 'http://iit.ru:80/IIT/ContrAgInvoice/services';
  HTTP.Execute(xml, resp);
  xml := UTF8ToString(resp.DataString);
  cxRichEdit1.Lines.Clear;
  cxRichEdit1.Lines.Add(xml);
end;

end.
