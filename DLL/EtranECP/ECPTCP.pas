unit ECPTCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, cxGraphics, ExtCtrls, StdCtrls, cxControls, StrUtils,
  cxEdit, cxLabel, ScktComp, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,  dxSkinXmas2008Blue,
  ImageList, cxImageList, dxSkinTheBezier, Menus, cxButtons, dxSkinBasic, dxSkiniMaginary, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinWXI;

type
  TfmECPTCP = class(TForm)
    Image1: TImage;
    cxLabel1: TcxLabel;
    Timer1: TTimer;
    cxImageList1: TcxImageList;
    ClientSocket1: TClientSocket;
    cxButton3: TcxButton;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure cxButton3Click(Sender: TObject);
  private
    Fsend_message : string;
    Freply_message: string;
    Fmodal_result : integer;
    FImageIndex   : integer;
    Fid : int64;
    BytesCount:Cardinal;
    BytesSum  :Cardinal;
  public
    constructor Create();
    procedure   _GetEtran(send_message: string);
  published
    property _GetMsg : string read Freply_message;
    property _GetModalResult : integer read Fmodal_result;
  end;

var
  fmECPTCP: TfmECPTCP;


implementation

{$R *.dfm}

constructor TfmECPTCP.Create();
begin
  inherited Create(nil);
  Fid := -1;
  Freply_message := '';
  BytesCount :=0;
  BytesSum   :=0;

  Fmodal_result := mrNone;

  cxImageList1.GetIcon(0, Image1.Picture.Icon);
  FImageIndex := 1;

  Timer1.Enabled := True;
end;

procedure TfmECPTCP.cxButton3Click(Sender: TObject);
begin
  ClientSocket1.Close;
  Fmodal_result := mrCancel;
  Close;
end;

procedure TfmECPTCP.ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
begin
  ClientSocket1.Socket.SendText(AnsiString(Fsend_message));
end;

procedure TfmECPTCP.ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  case ErrorEvent of
    eeSend:        ShowMessage('Ошибка записи сообщения.');
    eeReceive:     ShowMessage('Ошибка чтения сообщения.');
    eeConnect:     ShowMessage('Ошибка открытия соединения.');
    eeDisconnect:  ShowMessage('Ошибка закрытия соединения.');
    eeAccept:      ShowMessage('Ошибка доступа.');
    eeGeneral:     ShowMessage('Ошибка соединения.');
  end;
  ErrorCode := 0;

  ClientSocket1.Close;
  Fmodal_result := mrCancel;
  Close;
end;

procedure TfmECPTCP.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
var
            buf : array [0..412872]of Byte;
  buf_len, size : integer;
     tmp_string : string;
begin
  buf_len := Socket.ReceiveLength;
  size    := Socket.ReceiveBuf(buf,buf_len);

  buf[buf_len] := 0;
  tmp_string   := PAnsiChar(@buf);


  if BytesCount = 0 then begin
    BytesSum := StrToInt(LeftStr(tmp_string, 10));
    Freply_message := RightStr(tmp_string, Length(tmp_string) - 11);
  end else begin
    Freply_message := Freply_message + tmp_string;
  end;
  BytesCount := BytesCount + size;

  if BytesCount >= BytesSum then begin
    ClientSocket1.Close;
    Fmodal_result := mrOk;
    Close;
  end;
end;

procedure TfmECPTCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := Fmodal_result;
  Action := caFree;
end;

procedure TfmECPTCP.Timer1Timer(Sender: TObject);
begin
  cxImageList1.GetIcon(FImageIndex, Image1.Picture.Icon);
  if FImageIndex=5 then FImageIndex := 0
  else FImageIndex := FImageIndex + 1;
end;

procedure TfmECPTCP._GetEtran(send_message: string);
begin
    cxLabel1.Caption := 'Запрос';

    Fsend_message := send_message;

    ClientSocket1.Host := '92.53.107.222';
    ClientSocket1.Port := 6000;
    try
      if not ClientSocket1.Active then
        ClientSocket1.Open;
    except
      ShowMessage('Невозможно установить соединение с сервером.');
    end;
end;

end.
