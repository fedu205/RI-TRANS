unit ServerMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScktComp, ComCtrls, DB, ADODB, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, StrUtils, ExtCtrls, xmldom,
  XMLIntf, msxmldom, XMLDoc;

type
  TForm1 = class(TForm)
    ServerSocket1: TServerSocket;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    XMLDocument1: TXMLDocument;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function GetExchangeFromInet(dat:TDateTime; type_currency:integer) : real;
  end;

var
  Form1: TForm1;

implementation

uses IEHTTP3;


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(FloatToStr(GetExchangeFromInet(Date, 1)));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage(FloatToStr(GetExchangeFromInet(Date, 3)));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ShowMessage(FloatToStr(GetExchangeFromInet(Date, 6)));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ServerSocket1.Active := True;
end;

procedure TForm1.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
  msg    :string;
  s      :WideString;
begin
  msg := Socket.ReceiveText;

  s := LeftStr(msg,3);
  if s = '001' then begin
    try
      s := FloatToStr(GetExchangeFromInet(StrToDate(LeftStr(RightStr(msg,11),10)), 1));
      s := s + '#' + FloatToStr(GetExchangeFromInet(StrToDate(LeftStr(RightStr(msg,11),10)), StrToInt(RightStr(msg,1))));
    except
      s := '-9';
    end;
  end;

  if s = '003' then begin
    try
      s := FloatToStr(GetExchangeFromInet(StrToDate(LeftStr(RightStr(msg,11),10)), StrToInt(RightStr(msg,1))));
    except
      s := '-9';
    end;
  end;

  if s = '006' then begin
    try
      s := FloatToStr(GetExchangeFromInet(StrToDate(LeftStr(RightStr(msg,11),10)), 6));
      s := s + '#' + FloatToStr(GetExchangeFromInet(StrToDate(LeftStr(RightStr(msg,11),10)), StrToInt(RightStr(msg,1))));
    except
      s := '-9';
    end;
  end;

  if s = '007' then begin
    try
      s := FloatToStr(GetExchangeFromInet(StrToDate(LeftStr(RightStr(msg,11),10)), 7));
      s := s + '#' + FloatToStr(GetExchangeFromInet(StrToDate(LeftStr(RightStr(msg,11),10)), StrToInt(RightStr(msg,1))));
    except
      s := '-9';
    end;
  end;

  if s = '008' then begin
    try
      s := FloatToStr(GetExchangeFromInet(StrToDate(LeftStr(RightStr(msg,11),10)), 8));
      s := s + '#' + FloatToStr(GetExchangeFromInet(StrToDate(LeftStr(RightStr(msg,11),10)), StrToInt(RightStr(msg,1))));
    except
      s := '-9';
    end;
  end;

  Socket.SendText(s);
end;


function TForm1.GetExchangeFromInet(dat:TDateTime; type_currency:integer) : real;
var
  iehttp : TIEHTTP;
  st_day, st_month, st_year, str: string;
  i : integer;
  XMLNode : IXMLNode;
begin
  st_Day   := FormatDateTime('dd', dat);
  st_Month := FormatDateTime('mm', dat);
  st_year  := FormatDateTime('yyyy', dat);


  iehttp := TIEHTTP.Create(nil);
  iehttp.RequestMethod := 'GET';

  case type_currency of
    1 : begin
          iehttp.ExecuteURL('http://www.cbr.ru/scripts/XML_daily.asp?date_req='+st_Day +'%2F'+ st_month +'%2F'+ st_year);
          str := iehttp.result_sl.Text;

          XMLDocument1.XML.Text := str;
          XMLDocument1.Active   := True;

          for i := 0 to XMLDocument1.DocumentElement.ChildNodes.Count -1 do begin
            XMLNode := XMLDocument1.DocumentElement.ChildNodes.Nodes[i];
            if UpperCase(XMLNode.ChildNodes.Nodes[XMLNode.ChildNodes.IndexOf('CharCode')].NodeValue) = 'USD' then
              result := XMLNode.ChildNodes.Nodes[XMLNode.ChildNodes.IndexOf('Value')].NodeValue;
          end;
          XMLDocument1.Active := False;
        end;
    3 : begin
          result := 1;
        end;
    6 : begin
          iehttp.ExecuteURL('http://www.cbr.ru/scripts/XML_daily.asp?date_req='+st_Day +'%2F'+ st_month +'%2F'+ st_year);
          str := iehttp.result_sl.Text;

          XMLDocument1.XML.Text := str;
          XMLDocument1.Active   := True;

          for i := 0 to XMLDocument1.DocumentElement.ChildNodes.Count -1 do begin
            XMLNode := XMLDocument1.DocumentElement.ChildNodes.Nodes[i];
            if UpperCase(XMLNode.ChildNodes.Nodes[XMLNode.ChildNodes.IndexOf('CharCode')].NodeValue) = 'EUR' then
              result := XMLNode.ChildNodes.Nodes[XMLNode.ChildNodes.IndexOf('Value')].NodeValue;
          end;
          XMLDocument1.Active := False;
        end;
    5 : begin
          iehttp.ExecuteURL('http://www.cbr.ru/scripts/XML_daily.asp?date_req='+st_Day +'%2F'+ st_month +'%2F'+ st_year);
          str := iehttp.result_sl.Text;

          XMLDocument1.XML.Text := str;
          XMLDocument1.Active   := True;

          for i := 0 to XMLDocument1.DocumentElement.ChildNodes.Count -1 do begin
            XMLNode := XMLDocument1.DocumentElement.ChildNodes.Nodes[i];
            if UpperCase(XMLNode.ChildNodes.Nodes[XMLNode.ChildNodes.IndexOf('CharCode')].NodeValue) = 'CHF' then
              result := XMLNode.ChildNodes.Nodes[XMLNode.ChildNodes.IndexOf('Value')].NodeValue;
          end;
          XMLDocument1.Active := False;
        end;
    7 : begin
          iehttp.ExecuteURL('http://www.cbr.ru/scripts/XML_daily.asp?date_req='+st_Day +'%2F'+ st_month +'%2F'+ st_year);
          str := iehttp.result_sl.Text;

          XMLDocument1.XML.Text := str;
          XMLDocument1.Active   := True;

          for i := 0 to XMLDocument1.DocumentElement.ChildNodes.Count -1 do begin
            XMLNode := XMLDocument1.DocumentElement.ChildNodes.Nodes[i];
            if UpperCase(XMLNode.ChildNodes.Nodes[XMLNode.ChildNodes.IndexOf('CharCode')].NodeValue) = 'NOK' then
              result := XMLNode.ChildNodes.Nodes[XMLNode.ChildNodes.IndexOf('Value')].NodeValue;
          end;
          XMLDocument1.Active := False;
        end;
    8 : begin
          iehttp.ExecuteURL('http://www.cbr.ru/scripts/XML_daily.asp?date_req='+st_Day +'%2F'+ st_month +'%2F'+ st_year);
          str := iehttp.result_sl.Text;

          XMLDocument1.XML.Text := str;
          XMLDocument1.Active   := True;

          for i := 0 to XMLDocument1.DocumentElement.ChildNodes.Count -1 do begin
            XMLNode := XMLDocument1.DocumentElement.ChildNodes.Nodes[i];
            if UpperCase(XMLNode.ChildNodes.Nodes[XMLNode.ChildNodes.IndexOf('CharCode')].NodeValue) = 'GBP' then
              result := XMLNode.ChildNodes.Nodes[XMLNode.ChildNodes.IndexOf('Value')].NodeValue;
          end;
          XMLDocument1.Active := False;
        end;


  end;
  iehttp.Free;
end;



end.
