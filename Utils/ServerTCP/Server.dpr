program Server;

uses
  Forms,
  ServerMain in 'ServerMain.pas' {Form1},
  ADLER in 'source\ADLER.PAS',
  Crc in 'source\Crc.pas',
  gunzip in 'source\gunzip.pas',
  IEHTTP3 in 'source\IEHTTP3.pas',
  iehttp4_thread in 'source\iehttp4_thread.pas',
  iiehttp3_funcs in 'source\iiehttp3_funcs.pas',
  infblock in 'source\infblock.pas',
  infcodes in 'source\infcodes.pas',
  inffast in 'source\inffast.pas',
  inftrees in 'source\inftrees.pas',
  infutil in 'source\infutil.pas',
  tntlite in 'source\tntlite.pas',
  WinInet_Ex in 'source\WinInet_Ex.pas',
  ZINFLATE in 'source\ZINFLATE.PAS',
  Zlib7 in 'source\Zlib7.pas',
  Zutil in 'source\Zutil.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
