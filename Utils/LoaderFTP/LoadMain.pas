unit LoadMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Forms,
  StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, IdComponent, IdBaseComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP;

type
  TfmLoadMain = class(TForm)
    Panel6: TPanel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    IdFTP1: TIdFTP;
    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLoadMain: TfmLoadMain;

implementation

{$R *.dfm}

procedure TfmLoadMain.IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  ProgressBar2.Position := AWorkCount;
end;

end.
