library User;

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
  Currency in 'Currency.pas' {fmCurrency},
  CurrencyAdd in 'CurrencyAdd.pas' {fmCurrencyAdd},
  Shablon in 'Shablon.pas' {fmShablon},
  UsersAdd in 'UsersAdd.pas' {fmUsersAdd},
  ViewTrack in 'ViewTrack.pas' {fmViewTrack},
  UsersRole in 'UsersRole.pas' {fmUsersRole},
  OrdersExpeditionAdd in 'OrdersExpeditionAdd.pas' {fmOrdersExpeditionAdd},
  GridColumns in 'GridColumns.pas' {fmGridColumns},
  OrdersExpedition in 'OrdersExpedition.pas' {fmOrdersExpedition},
  ActSettings in 'ActSettings.pas' {fmActSettings},
  FactUpdateSettings in 'FactUpdateSettings.pas' {fmFactUpdateSettings},
  FactTrackFilesAdd in 'FactTrackFilesAdd.pas' {fmFactTrackFilesAdd},
  FactTrackFiles in 'FactTrackFiles.pas' {fmFactTrackFiles},
  ActAdd in 'ActAdd.pas' {fmActAdd},
  FindVagonGU12 in 'FindVagonGU12.pas' {fmFindVagonGU12},
  FindVagonGU12Wizard in 'FindVagonGU12Wizard.pas' {fmFindVagonGU12Wizard},
  VagonArendaActs in 'VagonArendaActs.pas' {fmVagonArendaActs},
  VagonArendaActsAdd in 'VagonArendaActsAdd.pas' {fmVagonArendaActsAdd},
  ContractNorm in 'ContractNorm.pas' {fmContractNorm};

{$R *.RES}

exports CreateWndCurrency;
exports CreateWndShablon;
exports CreateWndViewTrack;
exports CreateWndViewTrackEx;
exports CreateWndUsersRole;

exports CreateWndOrdersExpedition;
exports CreateWndGridColumns;

exports CreateWndActSettings;
exports CreateWndActAdd;

exports CreateWndFactUpdateSettings;
exports CreateWndFactTrackFiles;
exports CreateWndFindVagonGU12;

exports CreateWndVagonArendaActs;
exports CreateWndVagonArendaActsNew;
exports CreateWndVagonArendaActsAdd;
exports CreateWndActShpBargainAdd;

exports CreateWndContractNorm;


begin
end.
