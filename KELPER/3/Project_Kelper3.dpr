program Project_Kelper3;

uses
  Forms,
  main in 'main.pas' {frmMain},
  HelperList in 'HelperList.pas' {frmHelper},
  HelpeeList in 'HelpeeList.pas' {frmHelpee};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
