object Form1: TForm1
  Left = 397
  Top = 268
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 45
    Top = 15
    object KLPER1: TMenuItem
      Caption = 'K:LPER'
      object MainF51: TMenuItem
        Caption = 'Main &F5'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object WhatisKLPER1: TMenuItem
        Caption = 'What is K:LPER?'
      end
      object KLPERService1: TMenuItem
        Caption = 'K:LPER Service'
      end
      object FAQ1: TMenuItem
        Caption = 'FAQ'
      end
      object CustomerService1: TMenuItem
        Caption = 'Customer Service'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
      end
    end
    object Service1: TMenuItem
      Caption = 'SERVICE'
      object HELPER1: TMenuItem
        Caption = 'HELPER'
      end
      object HELPEE1: TMenuItem
        Caption = 'HELPEE'
      end
    end
    object MYPAGE1: TMenuItem
      Caption = 'MYPAGE'
      object Login1: TMenuItem
        Caption = 'Login'
      end
      object Signup1: TMenuItem
        Caption = 'Signup'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Mypage2: TMenuItem
        Caption = 'Mypage'
      end
      object Alert1: TMenuItem
        Caption = 'Alert'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Logout1: TMenuItem
        Caption = 'Logout'
      end
    end
    object NOTICE1: TMenuItem
      Caption = 'NOTICE'
      object Notice2: TMenuItem
        Caption = 'Notice'
      end
      object Info1: TMenuItem
        Caption = 'Info'
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=mychango' +
      ';Initial Catalog=jw_test;Data Source=local_nt.mychango.com'
    Provider = 'SQLOLEDB.1'
    Left = 125
    Top = 15
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select * From helper_ranking_view')
    Left = 200
    Top = 15
  end
end
