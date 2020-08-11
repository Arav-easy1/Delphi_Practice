object Form1: TForm1
  Left = 316
  Top = 214
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 40
    Top = 120
    Width = 1121
    Height = 255
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DBNavigator1: TDBNavigator
    Left = 290
    Top = 50
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBGrid2: TDBGrid
    Left = 35
    Top = 445
    Width = 1131
    Height = 156
    DataSource = DataSource2
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=mychango' +
      ';Initial Catalog=jw_test;Data Source=local_nt.mychango.com'
    Provider = 'SQLOLEDB.1'
    Left = 65
    Top = 45
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'helper_view'
    Left = 145
    Top = 45
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 210
    Top = 45
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = '='
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select * from helper_view WHERE rno := rno')
    Left = 50
    Top = 385
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 120
    Top = 385
  end
end
