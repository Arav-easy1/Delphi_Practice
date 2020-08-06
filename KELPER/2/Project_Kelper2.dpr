program Project_Kelper2;

uses
  Forms,
  Unit_Kelper2 in 'Unit_Kelper2.pas' {Form2},
  Unit_HelperList in 'Unit_HelperList.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
