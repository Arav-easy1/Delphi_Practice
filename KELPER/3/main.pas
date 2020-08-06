unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    KLPER1: TMenuItem;
    MainF51: TMenuItem;
    N1: TMenuItem;
    WhatisKLPER1: TMenuItem;
    Service1: TMenuItem;
    FAQ1: TMenuItem;
    CustomerService1: TMenuItem;
    LIST1: TMenuItem;
    HelperList1: TMenuItem;
    HelpeeList1: TMenuItem;
    MYPAGE1: TMenuItem;
    Login1: TMenuItem;
    Alert1: TMenuItem;
    N2: TMenuItem;
    Mypage2: TMenuItem;
    N3: TMenuItem;
    Logout1: TMenuItem;
    N4: TMenuItem;
    CloseAll1: TMenuItem;
    procedure HelperList1Click(Sender: TObject);
    procedure HelpeeList1Click(Sender: TObject);
    procedure CloseAll1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation


uses HelperList, HelpeeList;

{$R *.dfm}






procedure TfrmMain.HelperList1Click(Sender: TObject);
var
frmHelper : TfrmHelper;
i : integer;
OldCursor : TCursor;
begin
  {같은 폼이 두 번 생성되지 않게 만듭니다.}
  for i:= 0 to MDIChildCount - 1 do
    if MDIChildren[i] is TfrmHelper then
    begin
      MDIChildren[i].Show;
      exit;
    end;
  OldCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;
  try
    frmHelper := TfrmHelper.Create(Application);
    frmHelper.Table1.Open;
  finally
    Screen.Cursor := OldCursor;
  end; //finally
end;

procedure TfrmMain.HelpeeList1Click(Sender: TObject);
var
  frmHelpee : TfrmHelpee;
begin
  frmHelpee := TfrmHelpee.Create(Application);
  frmHelpee.Show;
  frmHelpee.Table1.Open; {데이터베이스 테이블 열기}
end;

procedure TfrmMain.CloseAll1Click(Sender: TObject);
var
  i : integer;
begin
  for i := 0 to MDIChildCount - 1 do
  MDIChildren[i].Close;
end;

end.
