program Project_Kelper2;

uses
  Forms,
  Unit_Kelper2 in 'Unit_Kelper2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
