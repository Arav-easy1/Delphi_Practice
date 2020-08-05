unit Calc1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edtCalc: TEdit;
    btn1: TButton;
    btn4: TButton;
    btn7: TButton;
    btn2: TButton;
    btn5: TButton;
    btn8: TButton;
    btn3: TButton;
    btn6: TButton;
    btn9: TButton;
    btnComma: TButton;
    btn0: TButton;
    btnResult: TButton;
    btnSum: TButton;
    btnSub: TButton;
    btnMul: TButton;
    btnDiv: TButton;
    btnCancle: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn0Click(Sender: TObject);
    procedure btnSumClick(Sender: TObject);
    procedure btnSubClick(Sender: TObject);
    procedure btnMulClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure btnCancleClick(Sender: TObject);
    procedure btnResultClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  L, R : Double;
  Ls, Rs, Op, Result : String;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  if(Op = '') then
  begin
    Ls := Ls + '1';
    edtCalc.Text := Ls;
  end
  else
  begin
    Rs := Rs + '1';
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if(Op = '') then
  begin
    Ls := Ls + '2';
    edtCalc.Text := Ls;
  end
  else
  begin
    Rs := Rs + '2';
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  if(Op = '') then
  begin
    Ls := Ls + '3';
    edtCalc.Text := Ls;
  end
  else
  begin
    Rs := Rs + '3';
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if(Op = '') then
  begin
    Ls := Ls + '4';
    edtCalc.Text := Ls;
  end
  else
  begin
    Rs := Rs + '4';
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
if(Op = '') then
  begin
    Ls := Ls + '5';
    edtCalc.Text := Ls;
  end
  else
  begin
    Rs := Rs + '5';
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
if(Op = '') then
  begin
    Ls := Ls + '6';
    edtCalc.Text := Ls;
  end
  else
  begin
    Rs := Rs + '6';
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
if(Op = '') then
  begin
    Ls := Ls + '7';
    edtCalc.Text := Ls;
  end
  else
  begin
    Rs := Rs + '7';
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
if(Op = '') then
  begin
    Ls := Ls + '8';
    edtCalc.Text := Ls;
  end
  else
  begin
    Rs := Rs + '8';
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
if(Op = '') then
  begin
    Ls := Ls + '9';
    edtCalc.Text := Ls;
  end
  else
  begin
    Rs := Rs + '9';
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btn0Click(Sender: TObject);
begin
if(Op = '') then
  begin
    Ls := Ls + '0';
    edtCalc.Text := Ls;
  end
else
  begin
    Rs := Rs + '0';
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btnSumClick(Sender: TObject);
begin
if(Ls = '') then
  begin
    edtCalc.Text := '';
  end
else if(Rs = '') then
  begin
    Op := '+';
    edtCalc.Text := Ls + Op;
  end
else
  begin
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btnSubClick(Sender: TObject);
begin
if(Ls = '') then
  begin
    edtCalc.Text := '';
  end
else if(Rs = '') then
  begin
    Op := '-';
    edtCalc.Text := Ls + Op;
  end
else
  begin
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btnMulClick(Sender: TObject);
begin
if(Ls = '') then
  begin
    edtCalc.Text := '';
  end
else if(Rs = '') then
  begin
    Op := '*';
    edtCalc.Text := Ls + Op;
  end
else
  begin
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btnDivClick(Sender: TObject);
begin
if(Ls = '') then
  begin
    edtCalc.Text := '';
  end
else if(Rs = '') then
  begin
    Op := '/';
    edtCalc.Text := Ls + Op;
  end
else
  begin
    edtCalc.Text := Ls+Op+Rs;
  end;
end;

procedure TForm1.btnCancleClick(Sender: TObject);
begin
Ls := '';
Rs := '';
Op := '';
edtCalc.Text := '0';
end;

procedure TForm1.btnResultClick(Sender: TObject);
begin
if((Op = '') or (Rs = '')) then
  begin
    edtCalc.Text := Ls+Op;
  end
else if(Op = '+') then
  begin
    L := StrToFloat(Ls);
    R := StrToFloat(Rs);
    Result := FloatToStr(L+R);
    Ls := '';
    Rs := '';
    Op := '';
    edtCalc.Text := Result;
  end
else if(Op = '-') then
  begin
    L := StrToFloat(Ls);
    R := StrToFloat(Rs);
    Result := FloatToStr(L-R);
    Ls := '';
    Rs := '';
    Op := '';
    edtCalc.Text := Result;
  end
else if(Op = '*') then
  begin
    L := StrToFloat(Ls);
    R := StrToFloat(Rs);
    Result := FloatToStr(L*R);
    Ls := '';
    Rs := '';
    Op := '';
    edtCalc.Text := Result;
  end
else if(Op = '/') then
  begin
    L := StrToFloat(Ls);
    R := StrToFloat(Rs);
    Result := FloatToStr(L/R);
    Ls := '';
    Rs := '';
    Op := '';
    edtCalc.Text := Result;
  end;
end;
end.
