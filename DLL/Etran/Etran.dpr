 library Etran;


uses
  Midas,
  MidasLib,
  SysUtils,
  Classes,
  EtrFilter in 'EtrFilter.pas' {fmEtrFilter},
  EtrTCP in 'EtrTCP.pas' {fmEtrTCP},
  EtrPayAdd in 'EtrPayAdd.pas' {fmEtrPayAdd},
  EtrMonitor in 'EtrMonitor.pas' {fmEtrMonitor},
  EtrConnectAdd in 'EtrConnectAdd.pas' {fmEtrConnectAdd},
  EtrXMLView in 'EtrXMLView.pas' {fmEtrXMLView},
  EtrCumulative in 'EtrCumulative.pas' {fmEtrCumulative},
  EtrInvoice in 'EtrInvoice.pas' {fmEtrInvoice},
  EtrClaim in 'EtrClaim.pas' {fmEtrClaim},
  EtrRT in 'EtrRT.pas' {fmEtrRT},
  EtrAct in 'EtrAct.pas' {fmEtrAct},
  EtrVPU in 'EtrVPU.pas' {fmEtrVPU},
  EtrRegCont in 'EtrRegCont.pas' {fmEtrRegCont},
  EtrUtils in 'EtrUtils.pas',
  EtranKKR in 'EtranKKR.pas' {fmEtranKKR},
  EtrDistance in 'EtrDistance.pas',
  EtrOtstClaim in 'EtrOtstClaim.pas' {fmEtrOtstClaim},
  EtrActUslug in 'EtrActUslug.pas' {fmEtrActUslug},
  EtrMailing in 'EtrMailing.pas' {fmEtrMailing},
  EtrMailingAdd in 'EtrMailingAdd.pas' {fmEtrMailingAdd};

{$R *.res}


//exports CreateWndEtran;
exports CreateWndEtranFindInvoice;
exports CreateWndEtranTCP;
exports CreateWndEtranMonitor;
exports CreateWndEtranCumulative;

exports CreateWndEtranCumulativeFind;
exports CreateWndEtranVPUFind;
exports CreateWndEtranRegContFind;

exports CreateWndEtranInvoice;
exports CreateWndEtranClaim;
exports CreateWndEtranRT;

exports CreateWndEtranVPU;
exports CreateWndEtranAct;
exports CreateWndEtranRegCont;

exports CreateWndEtranKKR;
exports GetListPPLand;
exports CreateWndEtranFindClaim;
exports CreateWndEtranKKRFind;
exports CreateWndEtranOtstClaim;
exports CreateWndEtranOtstClaimFind;
exports CreateWndEtranActUslug;
exports CreateWndEtrMailing;

begin
end.
