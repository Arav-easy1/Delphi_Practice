unit utest4;

interface
uses Dialogs;
{ 정적배열 : 0 부터 2까지의 공간을 가지는 정적인 배열을 지정합니다.}
type
  TPerson = class(TObject)
  private
    ttt : String;
  public
    Name : String;
    Age : byte;
    Address : String;
    Constructor Create; virtual;  // create의 내용을 상속하여 사용
    function Getname : String;
  end;

  TEmp = class(TPerson)
  public
    Office : String;
    Empno : Integer;
    Baserate : real;
    Constructor Create; override;     // create를 상속받아와 재정의하여 사용
    function Salary : real; virtual; abstract;    // salary 함수를 재사용
  end;

  THourly = class(TEmp)
    Hrs, Rate : Integer;
    Constructor Create ; override;    // create재정의
    function Salary : real; override;   // salary 재정의
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
  // type을 선언하지 않고 Countries : array[0..2] of string으로도 선언할 수 있습니다.
  a : array of string;
  b : array of array of string;

  procedure test;
  function divide(x, y : integer) : Integer; Overload;
  function divide(x, y : Real) : Real; Overload;

implementation
{프로시저 선언 및 프로시저에서 사용할 변수를 선언합니다.}
procedure test;
  var
    k : Integer;

  begin
  ShowMessage('Hello'); // Hello 출력
  end;

function divide(x, y : Integer) : Integer;    // 정수형
begin
  Result := x div y;
end;

function divide(x, y : Real) : Real;          // 실수형
begin
  Result := x / y;
end;


{ Tperson }
{ 사원에 대한 정보 입력 }
constructor Tperson.Create;
begin
  Name := 'Lee';
  Age := 20;
  Address := 'Anywhere';
end;

{사원 이름을 호출하는 함수}
function Tperson.Getname: String;
begin
  Result := Name;
end;

{ TEmp }

constructor TEmp.Create;
begin
  inherited;
  Office := '이지원';
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
{할당된 정적 배열 Countries에 초기값을 Assign합니다}
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
