program DislLoad;

uses
  Forms,
  DislMain in 'DislMain.pas' {fmDislMain},
  DislThread in 'DislThread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmDislMain, fmDislMain);
  Application.Run;
end.
