object FCovertKelas: TFCovertKelas
  Left = 139
  Top = 110
  Width = 1023
  Height = 515
  BorderIcons = [biSystemMenu]
  Caption = 'FORM CONVERT KELAS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1007
    Height = 476
    Align = alClient
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 460
      Top = 8
      Width = 84
      Height = 64
      Cursor = crHandPoint
      Caption = 'Filter'
      Color = 33023
      TabOrder = 0
      OnClick = Panel2Click
    end
    object Panel3: TPanel
      Left = 15
      Top = 91
      Width = 973
      Height = 29
      Cursor = crHandPoint
      Caption = 'Convert'
      Color = 33023
      TabOrder = 1
      OnClick = Panel3Click
    end
    object Panel7: TPanel
      Left = 14
      Top = 79
      Width = 973
      Height = 5
      Color = 16576
      TabOrder = 2
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 128
      Width = 973
      Height = 337
      DataSource = DM2.DSConvert
      FixedColor = 4210752
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Roboto'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'nisn'
          Title.Alignment = taCenter
          Title.Caption = 'NISN'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama_siswa'
          Title.Alignment = taCenter
          Title.Caption = 'NAMA SISWA'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jenis_kelamin'
          Title.Alignment = taCenter
          Title.Caption = 'JENIS KELAMIN'
          Width = 100
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
          FieldName = 'alamat'
          Title.Alignment = taCenter
          Title.Caption = 'ALAMAT'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tempat_lahir'
          Title.Alignment = taCenter
          Title.Caption = 'TEMPAT LAHIR'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tgl'
          Title.Alignment = taCenter
          Title.Caption = 'TANGGAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama_ortu'
          Title.Alignment = taCenter
          Title.Caption = 'NAMA ORANG TUA'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telpon'
          Title.Alignment = taCenter
          Title.Caption = 'TELEPON'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Title.Alignment = taCenter
          Title.Caption = 'STATUS'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'periode'
          Title.Alignment = taCenter
          Title.Caption = 'PERIODE'
          Width = 100
          Visible = True
        end>
    end
    object GroupBox2: TGroupBox
      Left = 13
      Top = 1
      Width = 438
      Height = 75
      Caption = ' FILTER DATA : '
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Label2: TLabel
        Left = 15
        Top = 20
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
      object Label5: TLabel
        Left = 220
        Top = 12
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
      object Edit1: TEdit
        Left = 15
        Top = 38
        Width = 199
        Height = 23
        BevelInner = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object ComboBox2: TComboBox
        Left = 221
        Top = 36
        Width = 199
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ItemHeight = 15
        ParentFont = False
        TabOrder = 1
        Text = '-- PILIH KELAS --'
        Items.Strings = (
          'KELAS 10'
          'KELAS 11'
          'KELAS 12'
          'LULUS')
      end
    end
    object GroupBox3: TGroupBox
      Left = 549
      Top = 1
      Width = 438
      Height = 75
      Caption = ' UPDATE DATA KELAS DAN PERIODE : '
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object Label1: TLabel
        Left = 15
        Top = 19
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
        Left = 154
        Top = 18
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
      object Label11: TLabel
        Left = 294
        Top = 18
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
      object Edit2: TEdit
        Left = 15
        Top = 37
        Width = 130
        Height = 23
        BevelInner = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object ComboBox1: TComboBox
        Left = 155
        Top = 36
        Width = 132
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ItemHeight = 15
        ParentFont = False
        TabOrder = 1
        Text = '-- PILIH KELAS --'
        Items.Strings = (
          'KELAS 10'
          'KELAS 11'
          'KELAS 12'
          'LULUS')
      end
      object ComboBox3: TComboBox
        Left = 294
        Top = 36
        Width = 138
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ItemHeight = 15
        ParentFont = False
        TabOrder = 2
        Text = '-- PILIH STATUS --'
        Items.Strings = (
          'AKTIF'
          'TIDAK AKTIF'
          'PINDAH SEKOLAH'
          'LULUS')
      end
    end
  end
end
