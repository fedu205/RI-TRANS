program MonitorInvoice;

uses
  Vcl.Forms,
  MonitorMain in 'MonitorMain.pas' {fmMonitorMain},
  EtranSOAP in 'EtranSOAP.pas',
  ECPServerMethodsClient in 'ECPServerMethodsClient.pas',
  thread in 'thread.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMonitorMain, fmMonitorMain);
  Application.Run;
end.
