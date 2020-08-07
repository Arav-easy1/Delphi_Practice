unit utest4;

interface
uses Dialogs;
{ �����迭 : 0 ���� 2������ ������ ������ ������ �迭�� �����մϴ�.}
type
  TPerson = class(TObject)
  private
    ttt : String;
  public
    Name : String;
    Age : byte;
    Address : String;
    Constructor Create; virtual;  // create�� ������ ����Ͽ� ���
    function Getname : String;
  end;

  TEmp = class(TPerson)
  public
    Office : String;
    Empno : Integer;
    Baserate : real;
    Constructor Create; override;     // create�� ��ӹ޾ƿ� �������Ͽ� ���
    function Salary : real; virtual; abstract;    // salary �Լ��� ����
  end;

  THourly = class(TEmp)
    Hrs, Rate : Integer;
    Constructor Create ; override;    // create������
    function Salary : real; override;   // salary ������
  end;

  TSalary = class(TEmp)
    Salesamt : real;
    Commissionrate : real;
    Constructor Create; override;
    function Salary : real; override;
  end;

var
  i : integer;
  s : string;
  Countries : array[0..2] of string;
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


{ Tperson }
{ ����� ���� ���� �Է� }
constructor Tperson.Create;
begin
  Name := 'Lee';
  Age := 20;
  Address := 'Anywhere';
end;

{��� �̸��� ȣ���ϴ� �Լ�}
function Tperson.Getname: String;
begin
  Result := Name;
end;

{ TEmp }

constructor TEmp.Create;
begin
  inherited;
  Office := '������';
  Empno := 1;
  Baserate := 10;
end;

{ THourly }

constructor THourly.Create;
begin
  inherited;
  Hrs := 10;
end;

function THourly.Salary: real;
begin
  Result := Baserate * Hrs;
end;

{ TSalary }

constructor TSalary.Create;
begin
  inherited;
  Commissionrate := 1;
  Salesamt := 5;
end;

function TSalary.Salary: real;
begin
  result := (Salesamt * Commissionrate) + (Baserate + 40.0);
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
