unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ScktComp, ComCtrls, DB, ADODB;

type
  TForm1 = class(TForm)
    ServerSocket1: TServerSocket;
    RichEdit1: TRichEdit;
    ADOConnection1: TADOConnection;
    ADOStoredProc1: TADOStoredProc;
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses test;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  ServerSocket1.Active := True;
end;

procedure TForm1.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
  msg      :string;
  s1,s2,s3 :WideString;
  PeerIP   :WideString;
begin
  msg := Socket.ReceiveText;
  RichEdit1.Lines.Add('=========================================================');
  RichEdit1.Lines.Add('Date:'         +DateTimeToStr(Now));
  RichEdit1.Lines.Add('LocalHost:'    +Socket.LocalHost);
  RichEdit1.Lines.Add('LocalAddress:' +Socket.LocalAddress);
  RichEdit1.Lines.Add('RemoteHost:'   +Socket.RemoteHost);
  RichEdit1.Lines.Add('RemoteAddress:'+Socket.RemoteAddress);
  RichEdit1.Lines.Add('user message '+msg);

  try
    s1 := msg;
    GetIEtranSys.GetBlock('абашин','etran_sfh',s1,s2,s3);

    ADOStoredProc1.Parameters.Refresh;
    ADOStoredProc1.Parameters.ParamByName('@query_id'   ).Value := -9;
    ADOStoredProc1.Parameters.ParamByName('@type_action').Value := 0;
    ADOStoredProc1.Parameters.ParamByName('@query_xml'  ).Value := msg;
    ADOStoredProc1.Parameters.ParamByName('@result_xml' ).Value := s1;
    ADOStoredProc1.Parameters.ParamByName('@user_ip'    ).Value := Socket.RemoteAddress;
    ADOStoredProc1.Parameters.ParamByName('@user_host'  ).Value := Socket.RemoteHost;
    ADOStoredProc1.ExecProc();
    
    s1 := ADOStoredProc1.Parameters.ParamByName('@query_id').Value;
  except
    s1 := '-9';
  end;

  Socket.SendText(s1);
  RichEdit1.Lines.Add('server message '+s1);
  RichEdit1.Lines.Add('=========================================================');
end;

end.
