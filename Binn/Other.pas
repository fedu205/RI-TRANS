unit Other;

interface

uses
  Windows, Controls, Forms, ExtCtrls, StdCtrls, Classes;

type
  TfmOther = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmOther: TfmOther;

procedure ShowTextMessage(MsgString: string=''; HideForm: boolean=True);

implementation

{$R *.DFM}

procedure ShowTextMessage(MsgString: string; HideForm: boolean);
begin
  if not Assigned(fmOther) then fmOther := TfmOther.Create(Application);
  if HideForm then begin
    fmOther.Hide;
    Screen.Cursor := crDefault;
  end else begin
    Screen.Cursor := crHourglass;

    Application.ProcessMessages;
    fmOther.Label1.Caption := MsgString;
    fmOther.Show;
    fmOther.Repaint;
  end;
end;

end.
