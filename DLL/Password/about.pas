unit about;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, dxGDIPlusClasses, cxControls, cxContainer, cxEdit, cxImage;

type
  TfmAbout = class(TForm)
    Panel1: TPanel;
    cxImage1: TcxImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure CreateWndAbout; export;

var
  fmAbout: TfmAbout;

implementation

{$R *.DFM}

procedure CreateWndAbout;
begin
  try
    fmAbout := TfmAbout.Create(Application);
    fmAbout.ShowModal;
  finally
    fmAbout.Free;
  end;
end;

procedure TfmAbout.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfmAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
