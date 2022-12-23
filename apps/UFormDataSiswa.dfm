object FDataSiswa: TFDataSiswa
  Left = 200
  Top = 79
  Width = 792
  Height = 464
  BorderIcons = [biSystemMenu]
  Caption = 'FORM INPUT SISWA'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 776
    Height = 425
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
      Width = 263
      Height = 39
      Caption = 'FORM STUDENTS'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -33
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 122
      Top = 84
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
    object Label3: TLabel
      Left = 122
      Top = 148
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
    object Label4: TLabel
      Left = 122
      Top = 212
      Width = 80
      Height = 15
      Caption = 'Jenis Kelamin'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 122
      Top = 276
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
    object Label6: TLabel
      Left = 418
      Top = 84
      Width = 41
      Height = 15
      Caption = 'Alamat'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 418
      Top = 148
      Width = 76
      Height = 15
      Caption = 'Tempat Lahir'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 418
      Top = 220
      Width = 226
      Height = 15
      Caption = 'Nama Orang Tua (Example : Ayah / Ibu)'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 418
      Top = 276
      Width = 45
      Height = 15
      Caption = 'Telepon'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 253
      Top = 276
      Width = 77
      Height = 15
      Caption = 'Tanggal Lahir'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 122
      Top = 344
      Width = 39
      Height = 15
      Caption = 'Status'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 418
      Top = 345
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
    object Panel2: TPanel
      Left = 286
      Top = 29
      Width = 84
      Height = 29
      Cursor = crHandPoint
      Caption = 'Add Data'
      Color = 33023
      TabOrder = 0
      OnClick = Panel2Click
    end
    object Panel3: TPanel
      Left = 378
      Top = 29
      Width = 84
      Height = 29
      Cursor = crHandPoint
      Caption = 'Delete'
      Color = 33023
      TabOrder = 1
      OnClick = Panel3Click
    end
    object Panel4: TPanel
      Left = 473
      Top = 29
      Width = 84
      Height = 29
      Cursor = crHandPoint
      Caption = 'Update'
      Color = 33023
      TabOrder = 2
      OnClick = Panel4Click
    end
    object Panel5: TPanel
      Left = 567
      Top = 29
      Width = 84
      Height = 29
      Cursor = crHandPoint
      Caption = 'Reset'
      Color = 33023
      TabOrder = 3
      OnClick = Panel5Click
    end
    object Panel6: TPanel
      Left = 684
      Top = 29
      Width = 84
      Height = 29
      Cursor = crHandPoint
      Caption = 'Close'
      Color = 33023
      TabOrder = 4
      OnClick = Panel6Click
    end
    object Panel7: TPanel
      Left = 10
      Top = 63
      Width = 759
      Height = 5
      Color = 16576
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 122
      Top = 106
      Width = 228
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
    object Edit2: TEdit
      Left = 122
      Top = 170
      Width = 228
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
    object ComboBox1: TComboBox
      Left = 122
      Top = 236
      Width = 228
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 8
      Text = '-- PILIH JENIS KELAMIN --'
      Items.Strings = (
        'Laki - Laki'
        'Perempuan')
    end
    object ComboBox2: TComboBox
      Left = 123
      Top = 300
      Width = 127
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 9
      Text = '-- PILIH KELAS --'
      Items.Strings = (
        'KELAS 10'
        'KELAS 11'
        'KELAS 12')
    end
    object Edit3: TEdit
      Left = 418
      Top = 106
      Width = 228
      Height = 23
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object Edit4: TEdit
      Left = 418
      Top = 170
      Width = 228
      Height = 23
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object Edit5: TEdit
      Left = 418
      Top = 242
      Width = 228
      Height = 23
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object Edit6: TEdit
      Left = 418
      Top = 298
      Width = 228
      Height = 23
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object DateTimePicker1: TDateTimePicker
      Left = 254
      Top = 300
      Width = 107
      Height = 23
      Date = 44878.000000000000000000
      Format = 'dd-MMM-yyyy'
      Time = 44878.000000000000000000
      TabOrder = 14
    end
    object ComboBox3: TComboBox
      Left = 122
      Top = 368
      Width = 228
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 15
      Text = '-- PILIH STATUS --'
      Items.Strings = (
        'AKTIF'
        'TIDAK AKTIF'
        'PINDAH SEKOLAH'
        'LULUS')
    end
    object Edit7: TEdit
      Left = 418
      Top = 367
      Width = 228
      Height = 23
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
  end
end
