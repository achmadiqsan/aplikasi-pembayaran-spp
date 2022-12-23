object FSheetKwintansi: TFSheetKwintansi
  Left = 239
  Top = 129
  Width = 1000
  Height = 518
  BorderIcons = [biSystemMenu]
  Caption = 'FORM SHEET KWITANSI'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 479
    Align = alClient
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 10
      Top = 34
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
      Left = 215
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
    object Label1: TLabel
      Left = 320
      Top = 24
      Width = 38
      Height = 15
      Caption = 'Label1'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label3: TLabel
      Left = 416
      Top = 8
      Width = 38
      Height = 15
      Caption = 'Label3'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label4: TLabel
      Left = 256
      Top = 8
      Width = 38
      Height = 15
      Caption = 'Label4'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label6: TLabel
      Left = 152
      Top = 8
      Width = 38
      Height = 15
      Caption = 'Label6'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Panel2: TPanel
      Left = 420
      Top = 47
      Width = 84
      Height = 29
      Cursor = crHandPoint
      Caption = 'Search'
      Color = 33023
      TabOrder = 0
      OnClick = Panel2Click
    end
    object Panel3: TPanel
      Left = 890
      Top = 45
      Width = 84
      Height = 29
      Cursor = crHandPoint
      Caption = 'Clear Data'
      Color = 33023
      TabOrder = 1
      OnClick = Panel3Click
    end
    object Panel7: TPanel
      Left = 10
      Top = 79
      Width = 963
      Height = 5
      Color = 16576
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 10
      Top = 53
      Width = 199
      Height = 23
      BevelInner = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object ComboBox2: TComboBox
      Left = 216
      Top = 53
      Width = 199
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 4
      Text = '-- PILIH KELAS --'
      Items.Strings = (
        'KELAS 10'
        'KELAS 11'
        'KELAS 12')
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 88
      Width = 963
      Height = 337
      DataSource = DM2.DSKwintansi
      FixedColor = 4210752
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 5
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Roboto'
      TitleFont.Style = [fsBold]
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'id_bayar'
          Title.Alignment = taCenter
          Title.Caption = 'ID PEMBAYARAN'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kelas'
          Title.Alignment = taCenter
          Title.Caption = 'KELAS'
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
          FieldName = 'nisn'
          Title.Alignment = taCenter
          Title.Caption = 'NISN'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jumlah_bayar'
          Title.Alignment = taCenter
          Title.Caption = 'JUMLAH BAYAR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tgl_bayar'
          Title.Alignment = taCenter
          Title.Caption = 'TANGGAL BAYAR'
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
    object GroupBox1: TGroupBox
      Left = 515
      Top = 1
      Width = 366
      Height = 75
      Caption = ' Cari Data : '
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      object Edit3: TEdit
        Left = 13
        Top = 42
        Width = 339
        Height = 23
        BevelInner = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnChange = Edit3Change
      end
      object RadioButton1: TRadioButton
        Left = 50
        Top = 17
        Width = 113
        Height = 17
        Caption = 'NISN'
        TabOrder = 1
      end
      object RadioButton2: TRadioButton
        Left = 194
        Top = 17
        Width = 113
        Height = 17
        Caption = 'Nama Siswa'
        TabOrder = 2
      end
    end
    object Panel4: TPanel
      Left = 9
      Top = 436
      Width = 963
      Height = 29
      Cursor = crHandPoint
      Caption = 'Cetak Kwitansi'
      Color = 33023
      TabOrder = 7
      OnClick = Panel4Click
    end
  end
end
