program Project_KELPER4;

uses
  Forms,
  Unit_main in 'Unit_main.pas' {Form1},
  Unit_helper in 'Unit_helper.pas' {Form2},
  Unit_helpee in 'Unit_helpee.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
