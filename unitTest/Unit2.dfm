object Form2: TForm2
  Left = 245
  Top = 147
  Width = 752
  Height = 400
  Caption = 'FORM TABEL SPP DAN REKAP PEMBAYARAN'
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
    Left = 232
    Top = 40
    Width = 476
    Height = 33
    Caption = 'FORM TEST INI DI ALIHKAN DI FORM 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 160
    Width = 713
    Height = 185
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
        Width = 200
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
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'spp'
    Left = 80
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 160
    Top = 96
  end
end
