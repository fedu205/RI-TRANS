library Reports;

uses
  Midas,
  MidasLib,
  SysUtils,
  Classes,
  RepBuhList in 'RepBuhList.pas' {fmFrahtBuhDlg},
  RepTransSFH in 'RepTransSFH.pas' {fmRepTransSFH},
  RepCTrans in 'RepCTrans.pas' {fmRepCTrans},
  RepFactTrack in 'RepFactTrack.pas' {fmRepFactTrack},
  MonitorVagon in 'MonitorVagon.pas' {fmMonitorVagon},
  MonitorVagonAdd in 'MonitorVagonAdd.pas' {fmMonitorVagonAdd},
  MonitorEvent in 'MonitorEvent.pas' {fmMonitorEvent};

{$R *.res}


exports CreateWndFrahtBuhDlg;
exports CreateWndRepTransSFH;
exports RepTransSFH2Xls;
exports CreateWndRepCTrans;
exports CreateWndRepFactTrack;
exports CreateWndRepFactTrackArenda;
exports CreateWndMonitorVagon;
exports CreateWndMonitorEvent;

begin
end.
