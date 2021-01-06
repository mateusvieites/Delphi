program Project1;

uses
  Vcl.Forms,
  Tudo in 'Tudo.pas' {Main},
  Tudo2 in 'Tudo2.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles,
  Unit1 in 'Unit1.pas' {secundario},
  TestThread in 'TestThread.pas' {Thread};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tsecundario, secundario);
  Application.CreateForm(TThread, Thread);
  Application.Run;
end.
