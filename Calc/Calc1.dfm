object Form1: TForm1
  Left = 1598
  Top = 507
  Width = 307
  Height = 281
  Caption = 'Calculator'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtCalc: TEdit
    Left = 30
    Top = 20
    Width = 170
    Height = 35
    TabOrder = 0
  end
  object btn1: TButton
    Left = 30
    Top = 65
    Width = 50
    Height = 30
    Caption = '1'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn4: TButton
    Left = 30
    Top = 105
    Width = 50
    Height = 30
    Caption = '4'
    TabOrder = 2
    OnClick = btn4Click
  end
  object btn7: TButton
    Left = 30
    Top = 145
    Width = 50
    Height = 30
    Caption = '7'
    TabOrder = 3
    OnClick = btn7Click
  end
  object btn2: TButton
    Left = 90
    Top = 65
    Width = 50
    Height = 30
    Caption = '2'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn5: TButton
    Left = 90
    Top = 105
    Width = 50
    Height = 30
    Caption = '5'
    TabOrder = 5
    OnClick = btn5Click
  end
  object btn8: TButton
    Left = 90
    Top = 145
    Width = 50
    Height = 30
    Caption = '8'
    TabOrder = 6
    OnClick = btn8Click
  end
  object btn3: TButton
    Left = 150
    Top = 65
    Width = 50
    Height = 30
    Caption = '3'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn6: TButton
    Left = 150
    Top = 105
    Width = 50
    Height = 30
    Caption = '6'
    TabOrder = 8
    OnClick = btn6Click
  end
  object btn9: TButton
    Left = 150
    Top = 145
    Width = 50
    Height = 30
    Caption = '9'
    TabOrder = 9
    OnClick = btn9Click
  end
  object btnComma: TButton
    Left = 30
    Top = 185
    Width = 50
    Height = 30
    Caption = ','
    TabOrder = 10
  end
  object btn0: TButton
    Left = 90
    Top = 185
    Width = 50
    Height = 30
    Caption = '0'
    TabOrder = 11
    OnClick = btn0Click
  end
  object btnResult: TButton
    Left = 150
    Top = 185
    Width = 50
    Height = 30
    Caption = '='
    TabOrder = 12
    OnClick = btnResultClick
  end
  object btnSum: TButton
    Left = 210
    Top = 65
    Width = 50
    Height = 30
    Caption = '+'
    TabOrder = 13
    OnClick = btnSumClick
  end
  object btnSub: TButton
    Left = 210
    Top = 105
    Width = 50
    Height = 30
    Caption = '-'
    TabOrder = 14
    OnClick = btnSubClick
  end
  object btnMul: TButton
    Left = 210
    Top = 145
    Width = 50
    Height = 30
    Caption = 'X'
    TabOrder = 15
    OnClick = btnMulClick
  end
  object btnDiv: TButton
    Left = 210
    Top = 185
    Width = 50
    Height = 30
    Caption = '/'
    TabOrder = 16
    OnClick = btnDivClick
  end
  object btnCancle: TButton
    Left = 210
    Top = 20
    Width = 50
    Height = 35
    Caption = 'AC'
    TabOrder = 17
    OnClick = btnCancleClick
  end
end
