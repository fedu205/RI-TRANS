program FactFilesLoad;

uses
  Midas,
  MidasLib,
  Forms,
  Sysutils,
  Windows,
  ActiveX,
  Dialogs,
  ComObj,
  Classes,
  Registry,
  LoadMain in 'LoadMain.pas' {fmLoadMain},
  ThreadFiles in 'ThreadFiles.pas',
  ThreadStat in 'ThreadStat.pas',
  ThreadMail in 'ThreadMail.pas';

{$R *.res}
{$R res_disl.RES}

var
  hwnd   : THandle;
begin
  //---------------------------------------------------------
  // Äëÿ RailTarif, RailInfo
  CoUninitialize();
  CoInitialize(nil);
  CoInitializeSecurity(nil, -1, nil, nil, 1, 3, nil, 0, nil);
  //---------------------------------------------------------

  hwnd := FindWindow('TfmLoadMain', 0);
  if hwnd = 0 then begin
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TfmLoadMain, fmLoadMain);
  Application.Run;
  end else begin
    SendMessage(hwnd, MY_MESSAGE, 0, 0);
  end;
end.
