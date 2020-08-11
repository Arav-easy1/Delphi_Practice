unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    KLPER1: TMenuItem;
    MainF51: TMenuItem;
    N1: TMenuItem;
    WhatisKLPER1: TMenuItem;
    KLPERService1: TMenuItem;
    FAQ1: TMenuItem;
    CustomerService1: TMenuItem;
    N2: TMenuItem;
    Exit1: TMenuItem;
    Service1: TMenuItem;
    HELPER1: TMenuItem;
    HELPEE1: TMenuItem;
    MYPAGE1: TMenuItem;
    Login1: TMenuItem;
    Signup1: TMenuItem;
    N3: TMenuItem;
    Mypage2: TMenuItem;
    Alert1: TMenuItem;
    N4: TMenuItem;
    Logout1: TMenuItem;
    NOTICE1: TMenuItem;
    Notice2: TMenuItem;
    Info1: TMenuItem;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
 