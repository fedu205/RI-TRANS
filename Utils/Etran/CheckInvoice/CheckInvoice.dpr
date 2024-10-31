program CheckInvoice;

uses
  Forms,
  Main in 'Main.pas' {fmMain},
  SOAP in 'SOAP.pas',
  thread in 'thread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
