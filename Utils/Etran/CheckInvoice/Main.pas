unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMemo,
  mmsystem, thread, cxPC, ImgList;

type
  TfmMain = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel7: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Memo1: TMemo;
    Memo2: TMemo;
    Button3: TButton;
    TrayIcon1: TTrayIcon;
    cxImageList1: TcxImageList;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TrayIcon1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FClose : boolean;
  public
    FThread : TThreadEtran2;
  end;

var
  fmMain: TfmMain;

implementation

uses SOAP;

{$R *.dfm}

procedure TfmMain.Button1Click(Sender: TObject);
var icon : TIcon;
begin
  icon := TIcon.Create;
  cxImageList1.GetIcon(0, icon);
  TrayIcon1.Icon    := icon;

  Button1.Enabled := False;
  Button2.Enabled := True;
  FThread := TThreadEtran2.Create('Provider=SQLOLEDB.1;Password=cjnhfkjubcnbrf;Persist Security Info=True;User ID=sa;Initial Catalog=lis_etran;Data Source=172.16.200.209;');
end;

procedure TfmMain.Button2Click(Sender: TObject);
begin
  FClose := True;
  Close;
end;


procedure TfmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not FClose then begin
    TrayIcon1.Visible := True;
    fmMain.Hide;
    CanClose := False;
  end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
var icon : TIcon;
begin
  icon := TIcon.Create;
  cxImageList1.GetIcon(2, icon);
  TrayIcon1.Icon    := icon;
  TrayIcon1.Visible := False;
  FClose := False;
end;

procedure TfmMain.TrayIcon1Click(Sender: TObject);
begin
  TrayIcon1.Visible := False;
  Application.Restore;

  //сбрасываем признак сворачивани€
  if fmMain.WindowState = wsMinimized then fmMain.WindowState := wsNormal;

  //ќтображаем окно
  fmMain.Visible:=true;

  //ѕринудительно устанавливаем окно поверх остальных
  SetForegroundWindow(Application.Handle);
end;

end.
