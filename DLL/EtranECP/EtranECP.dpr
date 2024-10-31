library EtranECP;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  Midas,
  MidasLib,
  SysUtils,
  Classes,
  ECPMain in 'ECPMain.pas' {fmECPMain},
  ECPInvoiceToViza in 'ECPInvoiceToViza.pas' {fmECPInvoiceToViza},
  ECPFilter in 'ECPFilter.pas' {fmECPFilter},
  ECPInvFreight in 'ECPInvFreight.pas' {fmECPInvFreight},
  ECPPassport in 'ECPPassport.pas' {fmECPPassport},
  ECPInvCar in 'ECPInvCar.pas' {fmECPInvCar},
  ECPInvAdd in 'ECPInvAdd.pas' {fmECPInvAdd},
  ECPinvCont in 'ECPinvCont.pas' {fmECPinvCont},
  ECPinvDistance in 'ECPinvDistance.pas' {fmECPinvDistance},
  ECPClaim in 'ECPClaim.pas' {fmECPClaim},
  ECPClaimAdd in 'ECPClaimAdd.pas' {fmECPClaimAdd},
  ECPClmOtpr in 'ECPClmOtpr.pas' {fmECPClmOtpr},
  ECPVagonSeveral in 'ECPVagonSeveral.pas' {fmECPVagonSeveral},
  ECPInvoiceLoad in 'ECPInvoiceLoad.pas' {fmECPInvoiceLoad},
  ECPQuery in 'ECPQuery.pas' {fmECPQuery},
  ECPServerMethodsClient in 'ECPServerMethodsClient.pas',
  ECPList in 'ECPList.pas' {fmECPList},
  ECPNSI in 'ECPNSI.pas' {fmECPNSI},
  ECPStatus in 'ECPStatus.pas' {fmECPStatus},
  ECPVagonHistory in 'ECPVagonHistory.pas' {fmECPVagonHistory},
  ECPVagonMonitor in 'ECPVagonMonitor.pas' {fmECPVagonMonitor},
  ECPSpamAdd in 'ECPSpamAdd.pas' {fmECPSpamAdd},
  ECPOtstClaim in 'ECPOtstClaim.pas' {fmECPOtstClaim},
  ECPOtstClaimAdd in 'ECPOtstClaimAdd.pas' {fmECPOtstClaimAdd},
  ECPOtstClaimOtpravkaAdd in 'ECPOtstClaimOtpravkaAdd.pas' {fmECPOtstClaimOtpravkaAdd},
  ECPRepairContract in 'ECPRepairContract.pas' {fmECPRepairContract},
  ECPCSN in 'ECPCSN.pas' {fmECPCSN},
  ECPDoc in 'ECPDoc.pas' {fmECPDoc},
  ECPInform in 'ECPInform.pas' {fmECPInform},
  ECPInformAdd in 'ECPInformAdd.pas' {fmECPInformAdd},
  ECPTCP in 'ECPTCP.pas' {fmECPTCP};

{$R *.res}

exports CreateWndEtranECP;
exports CreateWndEtranECPList;
exports CreateWndEtranECPClaim;
exports CreateWndEtranNSI;
exports CreateWndEtranECPCSN;
exports CreateWndGetNSIVagon;
exports CreateWndGetQuery;
exports CreateWndEtranECPInvoiceToViza;
exports CreateWndEtranECPInvoiceDelete;
exports CreateWndEtranECPOtstClaim;
exports CreateWndEtranECPRepairContract;
exports CreateWndEtranECPDoc;

exports CreateWndEtranInform;
exports CreateWndEtranInformVagons;

begin
end.
