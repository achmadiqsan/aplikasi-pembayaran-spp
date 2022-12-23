object Form3: TForm3
  Left = 251
  Top = 192
  Width = 887
  Height = 417
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 385
    Top = 28
    Width = 36
    Height = 13
    Caption = 'periode'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 248
    Width = 871
    Height = 130
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'periode'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kelas'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uang_spp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'terbayar'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'terhutang'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 320
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 432
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'spp'
    Left = 128
    Top = 64
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM spp')
    Left = 240
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 224
    Top = 120
  end
end
