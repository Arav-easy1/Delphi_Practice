unit utest4;

interface
uses Dialogs;
{ �����迭 : 0 ���� 2������ ������ ������ ������ �迭�� �����մϴ�.}
type
  Country = array[0..2] of string;

  {���ڵ��� �ڷ����}
    Person = record
      Name : String;
      Age : Integer;
      Address : String;
end;

var
  i : integer;
  s : string;
  Countries : Country;
  // type�� �������� �ʰ� Countries : array[0..2] of string���ε� ������ �� �ֽ��ϴ�.
  a : array of string;
  b : array of array of string;

  procedure test;
  function divide(x, y : integer) : Integer; Overload;
  function divide(x, y : Real) : Real; Overload;

implementation
{���ν��� ���� �� ���ν������� ����� ������ �����մϴ�.}
procedure test;
  var
    k : Integer;

  begin
  ShowMessage('Hello'); // Hello ���
  end;

function divide(x, y : Integer) : Integer;    // ������
begin
  Result := x div y;
end;

function divide(x, y : Real) : Real;          // �Ǽ���
begin
  Result := x / y;
end;


initialization
{�Ҵ�� ���� �迭 Countries�� �ʱⰪ�� Assign�մϴ�}
begin
  Countries[0] := 'Korea';
  Countries[1] := 'America';
  Countries[2] := 'German';
  SetLength(a,2);
  SetLength(b,2,2);
  a[0] := 'a';
  b[0,0] := 'b';
end;

end.