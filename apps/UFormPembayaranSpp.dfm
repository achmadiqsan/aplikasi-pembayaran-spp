object FPembayaranSPP: TFPembayaranSPP
  Left = 191
  Top = 36
  Width = 1026
  Height = 627
  BorderIcons = [biSystemMenu]
  Caption = 'FORM PEMBAYARAN SPP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1010
    Height = 588
    Align = alClient
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 386
      Height = 39
      Caption = 'FORM PEMBAYARAN SPP'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -33
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 18
      Top = 84
      Width = 44
      Height = 15
      Caption = 'Periode'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 18
      Top = 140
      Width = 30
      Height = 15
      Caption = 'NISN'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 18
      Top = 196
      Width = 72
      Height = 15
      Caption = 'Nama Siswa'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 18
      Top = 252
      Width = 32
      Height = 15
      Caption = 'Kelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 18
      Top = 310
      Width = 66
      Height = 15
      Caption = 'Total Bayar'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 18
      Top = 372
      Width = 105
      Height = 15
      Caption = 'Total Sudah Bayar'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 18
      Top = 490
      Width = 45
      Height = 15
      Caption = 'Tanggal'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 18
      Top = 433
      Width = 62
      Height = 15
      Caption = 'Sisa Bayar'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 444
      Top = 36
      Width = 116
      Height = 15
      Caption = 'ID Pembayaran SPP'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 244
      Top = 196
      Width = 45
      Height = 15
      Caption = 'Label24'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label25: TLabel
      Left = 472
      Top = 8
      Width = 45
      Height = 15
      Caption = 'Label25'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Panel2: TPanel
      Left = 591
      Top = 29
      Width = 84
      Height = 29
      Cursor = crHandPoint
      Caption = 'Save'
      Color = 33023
      TabOrder = 0
      OnClick = Panel2Click
    end
    object Panel3: TPanel
      Left = 683
      Top = 29
      Width = 84
      Height = 29
      Cursor = crHandPoint
      Caption = 'Delete'
      Color = 33023
      TabOrder = 1
      OnClick = Panel3Click
    end
    object Panel5: TPanel
      Left = 776
      Top = 29
      Width = 84
      Height = 29
      Cursor = crHandPoint
      Caption = 'Reset'
      Color = 33023
      TabOrder = 2
      OnClick = Panel5Click
    end
    object Panel6: TPanel
      Left = 909
      Top = 29
      Width = 84
      Height = 29
      Cursor = crHandPoint
      Caption = 'Close'
      Color = 33023
      TabOrder = 3
      OnClick = Panel6Click
    end
    object Panel7: TPanel
      Left = 10
      Top = 63
      Width = 994
      Height = 5
      Color = 16576
      TabOrder = 4
    end
    object Edit1: TEdit
      Left = 18
      Top = 106
      Width = 199
      Height = 23
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 18
      Top = 162
      Width = 199
      Height = 23
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object Edit3: TEdit
      Left = 18
      Top = 218
      Width = 199
      Height = 23
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object Edit4: TEdit
      Left = 18
      Top = 274
      Width = 199
      Height = 23
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnChange = Edit4Change
    end
    object Edit5: TEdit
      Left = 18
      Top = 332
      Width = 199
      Height = 23
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      Text = '0'
    end
    object Edit6: TEdit
      Left = 18
      Top = 394
      Width = 199
      Height = 23
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      Text = '0'
    end
    object Edit7: TEdit
      Left = 18
      Top = 455
      Width = 199
      Height = 23
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      Text = '0'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 19
      Top = 514
      Width = 199
      Height = 23
      Date = 44878.864021435180000000
      Time = 44878.864021435180000000
      TabOrder = 12
    end
    object GroupBox1: TGroupBox
      Left = 320
      Top = 96
      Width = 681
      Height = 161
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      object Label4: TLabel
        Left = 48
        Top = 13
        Width = 26
        Height = 19
        Caption = 'Juli'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 48
        Top = 61
        Width = 59
        Height = 19
        Caption = 'Agustus'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 48
        Top = 109
        Width = 78
        Height = 19
        Caption = 'September'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 200
        Top = 13
        Width = 58
        Height = 19
        Caption = 'Oktober'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 200
        Top = 61
        Width = 73
        Height = 19
        Caption = 'November'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 200
        Top = 109
        Width = 72
        Height = 19
        Caption = 'Desember'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 380
        Top = 13
        Width = 55
        Height = 19
        Caption = 'Januari'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 380
        Top = 61
        Width = 60
        Height = 19
        Caption = 'Februari'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 380
        Top = 109
        Width = 43
        Height = 19
        Caption = 'Maret'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 545
        Top = 13
        Width = 33
        Height = 19
        Caption = 'April'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 545
        Top = 61
        Width = 26
        Height = 19
        Caption = 'Mei'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 545
        Top = 109
        Width = 31
        Height = 19
        Caption = 'Juni'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CheckBox1: TCheckBox
        Left = 48
        Top = 33
        Width = 97
        Height = 17
        Caption = '0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 48
        Top = 81
        Width = 97
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object CheckBox3: TCheckBox
        Left = 48
        Top = 128
        Width = 97
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = CheckBox3Click
      end
      object CheckBox4: TCheckBox
        Left = 200
        Top = 33
        Width = 97
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = CheckBox4Click
      end
      object CheckBox5: TCheckBox
        Left = 200
        Top = 81
        Width = 97
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = CheckBox5Click
      end
      object CheckBox6: TCheckBox
        Left = 200
        Top = 129
        Width = 97
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = CheckBox6Click
      end
      object CheckBox7: TCheckBox
        Left = 380
        Top = 33
        Width = 97
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = CheckBox7Click
      end
      object CheckBox8: TCheckBox
        Left = 380
        Top = 81
        Width = 97
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = CheckBox8Click
      end
      object CheckBox9: TCheckBox
        Left = 380
        Top = 129
        Width = 97
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = CheckBox9Click
      end
      object CheckBox10: TCheckBox
        Left = 545
        Top = 33
        Width = 97
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = CheckBox10Click
      end
      object CheckBox11: TCheckBox
        Left = 545
        Top = 81
        Width = 97
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = CheckBox11Click
      end
      object CheckBox12: TCheckBox
        Left = 545
        Top = 129
        Width = 97
        Height = 17
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnClick = CheckBox12Click
      end
    end
    object Panel8: TPanel
      Left = 222
      Top = 97
      Width = 84
      Height = 29
      Cursor = crHandPoint
      Caption = 'Get ID'
      Color = 33023
      TabOrder = 14
      OnClick = Panel8Click
    end
    object Panel9: TPanel
      Left = 223
      Top = 152
      Width = 84
      Height = 29
      Cursor = crHandPoint
      Caption = 'Get'
      Color = 33023
      TabOrder = 15
      OnClick = Panel9Click
    end
    object GroupBox2: TGroupBox
      Left = 320
      Top = 509
      Width = 681
      Height = 70
      Caption = ' FILTER DATA'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      object Label5: TLabel
        Left = 87
        Top = 31
        Width = 32
        Height = 15
        Caption = 'Kelas'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboBox2: TComboBox
        Left = 129
        Top = 29
        Width = 194
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ItemHeight = 15
        ParentFont = False
        TabOrder = 0
        Text = '-- PILIH KELAS --'
        Items.Strings = (
          'KELAS 10'
          'KELAS 11'
          'KELAS 12')
      end
      object Panel10: TPanel
        Left = 346
        Top = 25
        Width = 257
        Height = 29
        Cursor = crHandPoint
        Caption = 'Search'
        Color = 33023
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Panel10Click
      end
    end
    object DBGrid2: TDBGrid
      Left = 320
      Top = 264
      Width = 681
      Height = 241
      DataSource = DM2.DataSource1
      FixedColor = 4210752
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 17
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Roboto'
      TitleFont.Style = [fsBold]
      OnKeyPress = DBGrid2KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'nisn'
          Title.Alignment = taCenter
          Title.Caption = 'NISN'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          Title.Alignment = taCenter
          Title.Caption = 'NAMA SISWA'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kelas'
          Title.Alignment = taCenter
          Title.Caption = 'KELAS'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'juli'
          Title.Alignment = taCenter
          Title.Caption = 'JULI'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'agustus'
          Title.Alignment = taCenter
          Title.Caption = 'AGUSTUS'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'september'
          Title.Alignment = taCenter
          Title.Caption = 'SEPTEMBER'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'oktober'
          Title.Alignment = taCenter
          Title.Caption = 'OKTOBER'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'november'
          Title.Alignment = taCenter
          Title.Caption = 'NOVEMBER'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'desember'
          Title.Alignment = taCenter
          Title.Caption = 'DESEMBER'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'januari'
          Title.Alignment = taCenter
          Title.Caption = 'JANUARI'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'februari'
          Title.Alignment = taCenter
          Title.Caption = 'FEBRUARI'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'maret'
          Title.Alignment = taCenter
          Title.Caption = 'MARET'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'april'
          Title.Alignment = taCenter
          Title.Caption = 'APRIL'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mei'
          Title.Alignment = taCenter
          Title.Caption = 'MEI'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'juni'
          Title.Alignment = taCenter
          Title.Caption = 'JUNI'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total_bayar'
          Title.Alignment = taCenter
          Title.Caption = 'TOTAL BAYAR'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sisa_bayar'
          Title.Alignment = taCenter
          Title.Caption = 'SISA BAYAR'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'periode'
          Title.Alignment = taCenter
          Title.Caption = 'PERIODE'
          Width = 200
          Visible = True
        end>
    end
  end
end
