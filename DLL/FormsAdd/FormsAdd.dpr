library FormsAdd;

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
  OrdersPayAdd in 'OrdersPayAdd.pas' {fmOrdersPayAdd},
  ActsOption in 'ActsOption.pas' {fmActsOption},
  ActsOptionList in 'ActsOptionList.pas' {fmActsOptionList},
  ActsOptionParam in 'ActsOptionParam.pas' {fmActsOptionParam},
  BargainRate in 'BargainRate.pas' {fmBargainRate},
  BudgetPlanAdd in 'BudgetPlanAdd.pas' {fmBudgetPlanAdd},
  FilterTree in 'FilterTree.pas' {fmFilterTree},
  BargainList2 in 'BargainList2.pas' {fmBargainList2},
  ClientDSView in 'ClientDSView.pas' {fmClientDSView};

{$R *.res}


exports CreateWndOrdersPayAdd;
exports CreateWndOrdersPayCreate;
exports CreateWndBargainList2;
exports CreateWndBargainRate;
exports CreateWndActsOption;
exports CreateWndBudgetPlanAdd;
exports CreateWndFilterTree;
exports CreateWndClientDSView;

begin
end.


