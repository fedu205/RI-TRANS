unit ECPServerContainer;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSTCPServerTransport, IdTCPConnection,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  IPPeerServer, IPPeerAPI, Datasnap.DSAuth, Vcl.Dialogs,
  Data.DBXCommon, Data.DBCommonTypes, Datasnap.DSSession;

type
  TfmECPServerContainer = class(TDataModule)
    DSServer1: TDSServer;
    DSTCPServerTransport1: TDSTCPServerTransport;
    DSServerClass1: TDSServerClass;
    DSAuthenticationManager1: TDSAuthenticationManager;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure DSAuthenticationManager1UserAuthorize(Sender: TObject;
      AuthorizeEventObject: TDSAuthorizeEventObject; var valid: Boolean);
    procedure DSTCPServerTransport1Connect(Event: TDSTCPConnectEventObject);
    procedure DSTCPServerTransport1Disconnect(
      Event: TDSTCPDisconnectEventObject);
  private
    { Private declarations }
  public
  end;

var
  fmECPServerContainer: TfmECPServerContainer;

implementation


{$R *.dfm}

uses
  ECPServerMethods, ECPServerMain;

procedure TfmECPServerContainer.DSAuthenticationManager1UserAuthorize(Sender: TObject; AuthorizeEventObject: TDSAuthorizeEventObject; var valid: Boolean);
var Session: TDSSession;
begin
//  valid := True;
//  Session := TDSSessionManager.Instance.GetThreadSession;
end;

procedure TfmECPServerContainer.DSServerClass1GetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := ECPServerMethods.TfmECPServerMethods;
end;

procedure TfmECPServerContainer.DSTCPServerTransport1Connect(Event: TDSTCPConnectEventObject);
begin
//  TDSSessionManager.Instance.GetThreadSession;
//  fmECPServerMain.Memo1.Lines.Add('Connect:' + Event.Channel.SessionId);
//  fmECPServerMain.Memo1.Lines.Add('Connect (1)= ' + TIdTCPConnection(Event.Connection).Socket.BoundIP);
//  fmECPServerMain.Memo1.Lines.Add('Connect (2)= ' + Event.Channel.ChannelInfo.ClientInfo.IpAddress + ':' + Event.Channel.ChannelInfo.ClientInfo.ClientPort);

  // Синхронизируем данные с основным потоком
  TThread.Synchronize(nil,
    procedure
    begin
      fmECPServerMain.AddConnectionToList(TIdTCPConnection(Event.Connection), Event.Channel);
    end);
end;

procedure TfmECPServerContainer.DSTCPServerTransport1Disconnect(Event: TDSTCPDisconnectEventObject);
begin
  if (Event.Connection <> nil) then begin

    // Синхронизируем данные с основным потоком
    TThread.Synchronize(nil,
      procedure
      var i : integer;
      begin
        for i := 0 to fmECPServerMain.ListBox1.Items.Count-1 do begin
          if TDSTCPChannel(fmECPServerMain.ListBox1.Items.Objects[i]).GetConnection = Event.Connection then begin
            fmECPServerMain.ListBox1.Items.Delete(i);
            break;
          end;
        end;
      end);
  end;
end;

end.

