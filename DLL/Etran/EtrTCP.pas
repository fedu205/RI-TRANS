unit EtrTCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, cxGraphics, ExtCtrls, StdCtrls, Buttons, cxControls, StrUtils,
  cxEdit, cxLabel, ScktComp, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, System.ImageList, dxSkinTheBezier, cxImageList;

type
  TfmEtrTCP = class(TForm)
    ClientSocket1: TClientSocket;
    Image1: TImage;
    cxLabel1: TcxLabel;
    BitBtn1: TBitBtn;
    Timer1: TTimer;
    cxImageList1: TcxImageList;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
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
  end;

var
  fmEtrTCP: TfmEtrTCP;

function CreateWndEtranTCP(AppHand: THandle; date1: TDateTime; date2: TDateTime) : variant; export;

implementation

{$R *.dfm}

function CreateWndEtranTCP(AppHand: THandle; date1: TDateTime; date2: TDateTime) : variant; export;
begin
//  Application.Handle := AppHand;
//  try
//    fmEtrTCP := TfmEtrTCP.Create();
//    fmEtrTCP._GetKKRDebet(date1, date2);
//    //-- изменить по мере необходимости возвращаемых параметров
//    if fmEtrTCP.ShowModal = mrOk then result := VarArrayOf([fmEtrTCP._GetID])
//    else result := VarArrayOf([-9]);
//  finally
//    fmEtrTCP.Free;
//  end;
end;

constructor TfmEtrTCP.Create();
begin
  inherited Create(nil);
  Fid := -1;
  Freply_message := '';
  BytesCount :=0;
  BytesSum   :=0;

  cxImageList1.GetIcon(0, Image1.Picture.Icon);
  FImageIndex := 1;

  Timer1.Enabled := True;
end;

procedure TfmEtrTCP.BitBtn1Click(Sender: TObject);
begin
  ClientSocket1.Close;
  Fmodal_result := mrCancel;
  Close;
end;

procedure TfmEtrTCP.ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
begin
  ClientSocket1.Socket.SendText(AnsiString(Fsend_message));
end;

procedure TfmEtrTCP.ClientSocket1Disconnect(Sender: TObject; Socket: TCustomWinSocket);
begin
//
end;

procedure TfmEtrTCP.ClientSocket1Error(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  case ErrorEvent of
    eeSend:       ShowMessage('Ошибка записи сообщения.');
    eeReceive:    ShowMessage('Ошибка чтения сообщения.');
    eeConnect:    ShowMessage('Ошибка открытия соединения.');
    eeDisconnect: ShowMessage('Ошибка закрытия соединения.');
    eeAccept:     ShowMessage('Ошибка доступа.');
    eeGeneral:    ShowMessage('Ошибка соединения.');
  end;
  ErrorCode := 0;

  ClientSocket1.Close;
  Fmodal_result := mrCancel;
  Close;
end;

procedure TfmEtrTCP.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
var
  buf    : array [0..412872]of Byte;
  buf_len, size: integer;
  tmp_string: string;
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
  BytesCount := BytesCount + size;//buf_len;

  if BytesCount >= BytesSum then begin
    ClientSocket1.Close;
    Fmodal_result := mrOk;
    Close;
  end;

end;

procedure TfmEtrTCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ModalResult := Fmodal_result;
  Action := caFree;
end;

procedure TfmEtrTCP.Timer1Timer(Sender: TObject);
begin
  cxImageList1.GetIcon(FImageIndex, Image1.Picture.Icon);
  if FImageIndex=5 then FImageIndex := 0
  else FImageIndex := FImageIndex + 1;
end;

procedure TfmEtrTCP._GetEtran(send_message: string);
begin
    cxLabel1.Caption := 'Запрос';

    Fsend_message := send_message;

    ClientSocket1.Host := '172.25.45.4';
//    ClientSocket1.Host := '127.0.0.1';
    ClientSocket1.Port := 7498;
    try
      if not ClientSocket1.Active then
        ClientSocket1.Open;
    except
      ShowMessage('Невозможно установить соединение с сервером.');
    end;
end;

end.
