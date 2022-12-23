object Form4: TForm4
  Left = 200
  Top = 125
  Width = 1027
  Height = 546
  Caption = 'Form4'
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
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object Label2: TLabel
    Left = 24
    Top = 96
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object Label3: TLabel
    Left = 24
    Top = 144
    Width = 25
    Height = 13
    Caption = 'Kelas'
  end
  object Label4: TLabel
    Left = 24
    Top = 192
    Width = 55
    Height = 13
    Caption = 'Total Bayar'
  end
  object Label5: TLabel
    Left = 24
    Top = 240
    Width = 88
    Height = 13
    Caption = 'Total Sudah Bayar'
  end
  object Label6: TLabel
    Left = 24
    Top = 288
    Width = 50
    Height = 13
    Caption = 'Sisa Bayar'
  end
  object Label19: TLabel
    Left = 56
    Top = 16
    Width = 36
    Height = 13
    Caption = 'Periode'
  end
  object Label20: TLabel
    Left = 320
    Top = 8
    Width = 37
    Height = 13
    Caption = 'Label20'
  end
  object Label21: TLabel
    Left = 160
    Top = 213
    Width = 37
    Height = 13
    Caption = 'Label21'
  end
  object Edit1: TEdit
    Left = 24
    Top = 64
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 112
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 24
    Top = 160
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 2
    OnChange = Edit3Change
  end
  object Edit4: TEdit
    Left = 24
    Top = 208
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 3
    Text = '0'
  end
  object Edit5: TEdit
    Left = 24
    Top = 256
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 4
    Text = '0'
  end
  object Edit6: TEdit
    Left = 24
    Top = 304
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = '0'
  end
  object GroupBox1: TGroupBox
    Left = 264
    Top = 48
    Width = 513
    Height = 209
    Caption = 'GroupBox1'
    TabOrder = 6
    object Label7: TLabel
      Left = 24
      Top = 39
      Width = 15
      Height = 13
      Caption = 'Juli'
    end
    object Label8: TLabel
      Left = 24
      Top = 87
      Width = 39
      Height = 13
      Caption = 'Agustus'
    end
    object Label9: TLabel
      Left = 24
      Top = 135
      Width = 52
      Height = 13
      Caption = 'September'
    end
    object Label10: TLabel
      Left = 144
      Top = 39
      Width = 39
      Height = 13
      Caption = 'Oktober'
    end
    object Label11: TLabel
      Left = 144
      Top = 87
      Width = 49
      Height = 13
      Caption = 'November'
    end
    object Label12: TLabel
      Left = 144
      Top = 135
      Width = 48
      Height = 13
      Caption = 'Desember'
    end
    object Label13: TLabel
      Left = 264
      Top = 39
      Width = 35
      Height = 13
      Caption = 'Januari'
    end
    object Label14: TLabel
      Left = 264
      Top = 87
      Width = 40
      Height = 13
      Caption = 'Februari'
    end
    object Label15: TLabel
      Left = 264
      Top = 135
      Width = 28
      Height = 13
      Caption = 'Maret'
    end
    object Label16: TLabel
      Left = 376
      Top = 39
      Width = 21
      Height = 13
      Caption = 'April'
    end
    object Label17: TLabel
      Left = 376
      Top = 87
      Width = 16
      Height = 13
      Caption = 'Mei'
    end
    object Label18: TLabel
      Left = 376
      Top = 135
      Width = 19
      Height = 13
      Caption = 'Juni'
    end
    object CheckBox1: TCheckBox
      Left = 24
      Top = 56
      Width = 97
      Height = 17
      Caption = '0'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 24
      Top = 104
      Width = 97
      Height = 17
      Caption = '0'
      TabOrder = 1
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 24
      Top = 152
      Width = 97
      Height = 17
      Caption = '0'
      TabOrder = 2
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 144
      Top = 56
      Width = 97
      Height = 17
      Caption = '0'
      TabOrder = 3
      OnClick = CheckBox4Click
    end
    object CheckBox5: TCheckBox
      Left = 144
      Top = 104
      Width = 97
      Height = 17
      Caption = '0'
      TabOrder = 4
      OnClick = CheckBox5Click
    end
    object CheckBox6: TCheckBox
      Left = 144
      Top = 152
      Width = 97
      Height = 17
      Caption = '0'
      TabOrder = 5
      OnClick = CheckBox6Click
    end
    object CheckBox7: TCheckBox
      Left = 264
      Top = 56
      Width = 97
      Height = 17
      Caption = '0'
      TabOrder = 6
      OnClick = CheckBox7Click
    end
    object CheckBox8: TCheckBox
      Left = 264
      Top = 104
      Width = 97
      Height = 17
      Caption = '0'
      TabOrder = 7
      OnClick = CheckBox8Click
    end
    object CheckBox9: TCheckBox
      Left = 264
      Top = 152
      Width = 97
      Height = 17
      Caption = '0'
      TabOrder = 8
      OnClick = CheckBox9Click
    end
    object CheckBox10: TCheckBox
      Left = 376
      Top = 56
      Width = 97
      Height = 17
      Caption = '0'
      TabOrder = 9
      OnClick = CheckBox10Click
    end
    object CheckBox11: TCheckBox
      Left = 376
      Top = 104
      Width = 97
      Height = 17
      Caption = '0'
      TabOrder = 10
      OnClick = CheckBox11Click
    end
    object CheckBox12: TCheckBox
      Left = 376
      Top = 152
      Width = 97
      Height = 17
      Caption = '0'
      TabOrder = 11
      OnClick = CheckBox12Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 184
    Top = 272
    Width = 817
    Height = 153
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 7
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
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agustus'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'september'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'oktober'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'november'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'desember'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'januari'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'februari'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'maret'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'april'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mei'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'juni'
        Width = 100
        Visible = True
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
  object DateTimePicker1: TDateTimePicker
    Left = 272
    Top = 448
    Width = 186
    Height = 21
    Date = 44892.338820173610000000
    Time = 44892.338820173610000000
    TabOrder = 8
  end
  object ComboBox1: TComboBox
    Left = 544
    Top = 448
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = 'PILIH KELAS'
    Items.Strings = (
      'KELAS 10'
      'KELAS 11'
      'KELAS 12')
  end
  object Button1: TButton
    Left = 160
    Top = 64
    Width = 75
    Height = 25
    Caption = 'GET'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 704
    Top = 440
    Width = 75
    Height = 25
    Caption = 'SEARCH'
    TabOrder = 11
    OnClick = Button2Click
  end
  object Edit8: TEdit
    Left = 104
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object Button3: TButton
    Left = 624
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 13
    OnClick = Button3Click
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 368
    Width = 129
    Height = 120
    DataSource = DataSource2
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'periode'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kelas'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uang_spp'
        Visible = True
      end>
  end
  object Button4: TButton
    Left = 792
    Top = 184
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 15
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 888
    Top = 184
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 16
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 840
    Top = 224
    Width = 75
    Height = 25
    Caption = 'RESET'
    TabOrder = 17
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 160
    Top = 168
    Width = 89
    Height = 25
    Caption = 'GET ID BAYAR'
    TabOrder = 18
    OnClick = Button7Click
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'data_bayar2'
    Left = 792
    Top = 64
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 864
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 872
    Top = 112
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'spp'
    Left = 480
    Top = 3
    object ADOTable2periode: TWideStringField
      FieldName = 'periode'
      Size = 255
    end
    object ADOTable2kelas: TWideStringField
      FieldName = 'kelas'
      Size = 255
    end
    object ADOTable2uang_spp: TBCDField
      FieldName = 'uang_spp'
      Precision = 19
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 560
    Top = 16
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 928
    Top = 88
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'pembayaran'
    Left = 768
    Top = 8
  end
end
