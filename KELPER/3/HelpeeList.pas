unit HelpeeList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, DB, DBTables;

type
  TfrmHelpee = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action:TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHelpee: TfrmHelpee;

implementation

{$R *.dfm}

procedure TfrmHelpee.FormClose(Sender: TObject; var Action:TCloseAction);
begin
  Action := caFree;
end;

end.
