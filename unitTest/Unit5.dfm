object Form5: TForm5
  Left = 403
  Top = 196
  Width = 705
  Height = 308
  Caption = 'Form5'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 112
    Width = 689
    Height = 157
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'nisn'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
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
        FieldName = 'juli'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'agustus'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'september'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'oktober'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'november'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'desember'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'januari'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'februari'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'maret'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'april'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'mei'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'juni'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'total_bayar'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sisa_bayar'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'periode'
        Width = 100
        Visible = True
      end>
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'data_bayar2'
    Left = 136
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 224
    Top = 32
  end
end
