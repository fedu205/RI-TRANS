program ECPEtranServer;

uses
  Midas,
  MidasLib,
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  ECPServerMain in 'ECPServerMain.pas' {fmECPServerMain},
  ECPServerMethods in 'ECPServerMethods.pas' {ServerMethods1: TDSServerModule},
  ECPServerContainer in 'ECPServerContainer.pas' {fmECPServerContainer: TDataModule},
  EtranSOAP in 'EtranSOAP.pas',
  ECPServerUtils in 'ECPServerUtils.pas',
  ECPServerLogView in 'ECPServerLogView.pas' {fmECPServerLogView},
  Wcrypt2 in 'Wcrypt2.pas',
  CAPICOM_TLB in 'CAPICOM_TLB.pas',
  TSPCOM_TLB in 'TSPCOM_TLB.pas',
  EtranECP in 'EtranECP.pas',
  ECPTestSign in 'ECPTestSign.pas' {fmECPTestSign},
  fmECPServerMethodsClient in 'fmECPServerMethodsClient.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmECPServerMain, fmECPServerMain);
  Application.CreateForm(TfmECPServerContainer, fmECPServerContainer);
  Application.CreateForm(TfmECPTestSign, fmECPTestSign);
  fmECPServerMain.SetPar;
  Application.Run;
end.

