object frmHelper: TfrmHelper
  Left = 476
  Top = 290
  Width = 1280
  Height = 720
  Caption = 'HELPER LIST'
  Color = clBtnFace
  DragKind = dkDock
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 140
    Top = 150
    Width = 1000
    Height = 420
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 385
    Top = 55
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    AutoMerge = True
    Left = 145
    Top = 55
    object File1: TMenuItem
      Caption = 'File'
      GroupIndex = 5
      object Close1: TMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 310
    Top = 40
  end
  object Table1: TTable
    DatabaseName = 'DBDEMOS'
    TableName = 'Customer.db'
    Left = 230
    Top = 45
  end
end
