library Search;

uses
  Midas,
  MidasLib,
  FactSearchDlg in 'FactSearchDlg.pas' {fmFactSearchDlg},
  FactIncDlg in 'FactIncDlg.pas' {fmFactIncDlg},
  FactTrackVagonDlg in 'FactTrackVagonDlg.pas' {fmFactTrackDlg},
  FactTrackTripDlg in 'FactTrackTripDlg.pas' {fmFactTripDlg};

{$R *.res}

exports CreateWndFactSearchDlg;
exports CreateWndFactIncDlg;
exports CreateWndFactTrackVagonDlg;
exports CreateWndFactSearchSumDlg;
exports CreateWndFactSearchBargainDlg;
exports CreateWndFactTrackTripDlg;

begin
end.
