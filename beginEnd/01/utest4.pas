unit utest4;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;
type
  Country = array[0..2] of string;

var
  i : integer;
  s : string;
  a : Array of String;
  b : Array of Array of String;
  Countries : Country;
  function divide(x, y : Integer) : Integer; Overload;
  function divide(x, y : Real) : Real; Overload;

  procedure test;

implementation

procedure test;
var
    k : Integer;
begin
      ShowMessage('Hello'); // ��� ���
end;

{ result ���� x�� y�� ���� ���� �ֽ��ϴ�.(������)}
function divide(x, y : Integer) : Integer;
begin
  Result := x div y;
end;

{ result ���� x�� y�� ���� ���� �ֽ��ϴ�. (�Ǽ���)}
function divide(x, y : Real) : Real;
begin
  Result := x / y;
end;


end.