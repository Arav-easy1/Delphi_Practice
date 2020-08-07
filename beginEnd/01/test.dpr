program test;

uses
  Forms,
  utest1 in 'utest1.pas' {Form1},
  utest2 in 'utest2.pas' {Form2},
  utest3 in 'utest3.pas' {Form3},
  utest4 in 'utest4.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
