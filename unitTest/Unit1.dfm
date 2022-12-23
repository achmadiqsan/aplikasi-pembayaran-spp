object Form1: TForm1
  Left = 370
  Top = 170
  Width = 582
  Height = 442
  Caption = 'FITUR TABEL JUMLAH SISWA PER KELAS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 56
    Top = 160
    Width = 473
    Height = 217
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
        FieldName = 'kelas'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'perempuan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'laki_laki'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 464
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\aplikasi-pembaya' +
      'ran-spp\database\Database.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 80
    Top = 40
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM jumlah_siswa')
    Left = 224
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 352
    Top = 56
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'jumlah_siswa'
    Left = 288
    Top = 96
  end
  object MainMenu1: TMainMenu
    Left = 152
    Top = 80
    object F1: TMenuItem
      Caption = 'MENU'
      OnClick = F1Click
      object F2: TMenuItem
        Caption = 'FORM 3'
        OnClick = F2Click
      end
      object F3: TMenuItem
        Caption = 'FORM 4'
        OnClick = F3Click
      end
      object F4: TMenuItem
        Caption = 'FORM 6'
        OnClick = F4Click
      end
    end
  end
end
