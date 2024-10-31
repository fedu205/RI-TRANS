program GetETRAN3;

uses
  Midas,
  MidasLib,
  Forms,
  Controls,
  Windows,
  Messages,
  EtranMain in 'EtranMain.pas' {fmEtranMain},
  SOAP in 'SOAP.pas',
  EtrUtils in 'EtrUtils.pas',
  EtranConnectDB in 'EtranConnectDB.pas' {fmEtranConnectDB},
  ThreadEtran in 'ThreadEtran.pas',
  ThreadCheck in 'ThreadCheck.pas',
  EtrNSI in 'EtrNSI.pas' {fmEtrNSI},
  IEtranSysservice in 'IEtranSysservice.pas';

{$R *.res}
{$R res_etran.RES}

var
  hwnd   : THandle;
begin

  hwnd := FindWindow('TfmEtranMain', 0);

  if hwnd = 0 then begin
    Application.Initialize;
    Application.CreateForm(TfmEtranMain, fmEtranMain);
  Application.CreateForm(TfmEtrNSI, fmEtrNSI);
  fmEtranMain.Show;
    fmEtranConnectDB := TfmEtranConnectDB.Create(Application);
    if fmEtranConnectDB.ShowModal = mrOK then begin
      fmEtranMain.Fconnect_string := fmEtranConnectDB._connect_string;
      fmEtranMain.Fset_db_connect := fmEtranConnectDB._set_db_connect;
    end;
    fmEtranMain.SetParam;

    Application.Run;
  end else begin
    SendMessage(hwnd, MY_MESSAGE, 0, 0);
  end;
end.
