unit HelperList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, DBCtrls, DB, DBTables, Grids, DBGrids;

type
  TfrmHelper = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Close1: TMenuItem;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Table1: TTable;
    DBNavigator1: TDBNavigator;
    procedure Close1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHelper: TfrmHelper;

implementation

{$R *.dfm}

procedure TfrmHelper.Close1Click(Sender: TObject);
begin
  close;
end;

end.
