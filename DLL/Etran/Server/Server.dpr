program Server;

uses
  Forms,
  Main in 'Main.pas' {Form1},
  test in 'test.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
