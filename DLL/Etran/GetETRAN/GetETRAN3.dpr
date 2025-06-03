program GetETRAN3;

uses
  Midas,
  MidasLib,
  Forms,
  Controls,
  Windows,
  Messages,
  EtranMain in 'EtranMain.pas' {fmEtranMain},
  EtrUtils in 'EtrUtils.pas',
  EtranConnectDB in 'EtranConnectDB.pas' {fmEtranConnectDB},
  ThreadEtran in 'ThreadEtran.pas',
  ECPServerContainer in 'ECPServerContainer.pas' {fmECPServerContainer: TDataModule},
  ECPServerMethods in 'ECPServerMethods.pas' {fmECPServerMethods: TDSServerModule},
  CAPICOM_TLB in 'CAPICOM_TLB.pas',
  ECPServerUtils in 'ECPServerUtils.pas',
  TSPCOM_TLB in 'TSPCOM_TLB.pas',
  Wcrypt2 in 'Wcrypt2.pas',
  ECPTestSign in 'ECPTestSign.pas' {fmECPTestSign},
  fmECPServerMethodsClient in 'fmECPServerMethodsClient.pas',
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
  Application.CreateForm(TfmECPServerContainer, fmECPServerContainer);
  Application.CreateForm(TfmECPTestSign, fmECPTestSign);
  fmEtranMain.Show;

//    fmEtranConnectDB := TfmEtranConnectDB.Create(Application);
//    if fmEtranConnectDB.ShowModal = mrOK then begin
//      fmEtranMain.Fconnect_string := fmEtranConnectDB._connect_string;
//      fmEtranMain.Fset_db_connect := fmEtranConnectDB._set_db_connect;
//    end;
//    fmEtranMain.Fconnect_string := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;Password=QAZ123qaz;Initial Catalog=Lis_Etran;Data Source=193.33.100.131,21433;';
    fmEtranMain.Fconnect_string := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID=sa;Password=14remTTetran;Initial Catalog=Lis_Etran;Data Source=10.244.252.10;';
    fmEtranMain.Fset_db_connect := True;
    fmEtranMain.SetParam;

    Application.Run;
  end else begin
    SendMessage(hwnd, MY_MESSAGE, 0, 0);
  end;
end.
