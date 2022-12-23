object Form6: TForm6
  Left = 200
  Top = 133
  Width = 928
  Height = 480
  Caption = 'Form6'
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
    Left = 88
    Top = 24
    Width = 30
    Height = 13
    Caption = 'KELAS'
  end
  object Label2: TLabel
    Left = 248
    Top = 24
    Width = 44
    Height = 13
    Caption = 'PERIODE'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 256
    Width = 912
    Height = 185
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
        FieldName = 'nisn'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_siswa'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_kelamin'
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
        FieldName = 'alamat'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tempat_lahir'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_ortu'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telpon'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'periode'
        Width = 100
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 88
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 248
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 200
    Top = 88
    Width = 75
    Height = 25
    Caption = 'FILTER'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 408
    Top = 48
    Width = 75
    Height = 25
    Caption = 'CONVERT'
    TabOrder = 4
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 496
    Top = 16
    Width = 369
    Height = 105
    Caption = ' UPDATE DATA KELAS DAN PERIODE : '
    TabOrder = 5
    object Label3: TLabel
      Left = 40
      Top = 32
      Width = 30
      Height = 13
      Caption = 'KELAS'
    end
    object Label4: TLabel
      Left = 200
      Top = 32
      Width = 44
      Height = 13
      Caption = 'PERIODE'
    end
    object Edit3: TEdit
      Left = 40
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 200
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Copy_siswa')
    Left = 72
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 168
    Top = 136
  end
end
