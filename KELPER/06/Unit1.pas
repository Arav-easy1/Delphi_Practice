unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, ExtCtrls, DBCtrls, Grids, DBGrids, DB;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  AdoQuery1.Close;
  AdoQuery1.Parameters[0].Value := AdoTable1.IndexFieldNames;
  AdoQuery1.Open;
end;

end.
