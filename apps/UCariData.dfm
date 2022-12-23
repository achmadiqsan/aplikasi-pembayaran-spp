object FCariData: TFCariData
  Left = 306
  Top = 137
  Width = 706
  Height = 525
  Caption = 'Cari Data Siswa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 690
    Height = 486
    Align = alClient
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 10
      Top = 446
      Width = 671
      Height = 29
      Cursor = crHandPoint
      Caption = 'Close'
      Color = 33023
      TabOrder = 0
      OnClick = Panel3Click
    end
    object Panel7: TPanel
      Left = 10
      Top = 150
      Width = 672
      Height = 5
      Color = 16576
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 12
      Top = 161
      Width = 669
      Height = 274
      DataSource = DM2.DSCariData
      FixedColor = 4210752
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Roboto'
      TitleFont.Style = [fsBold]
      OnKeyPress = DBGrid1KeyPress
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
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'agustus'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'september'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'oktober'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'november'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'desember'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'januari'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'februari'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'maret'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'april'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'mei'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'juni'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'total_bayar'
          Title.Alignment = taCenter
          Title.Caption = 'TOTAL BAYAR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sisa_bayar'
          Title.Alignment = taCenter
          Title.Caption = 'SISA BAYAR'
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
      Left = 12
      Top = 1
      Width = 669
      Height = 144
      Caption = ' Cari Data : '
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object Label1: TLabel
        Left = 40
        Top = 19
        Width = 38
        Height = 15
        Caption = 'Label1'
        Visible = False
      end
      object Edit3: TEdit
        Left = 13
        Top = 42
        Width = 638
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
        Left = 138
        Top = 17
        Width = 113
        Height = 17
        Caption = 'NISN'
        TabOrder = 1
      end
      object RadioButton2: TRadioButton
        Left = 279
        Top = 17
        Width = 113
        Height = 17
        Caption = 'Nama Siswa'
        TabOrder = 2
      end
      object RadioButton3: TRadioButton
        Left = 431
        Top = 17
        Width = 113
        Height = 17
        Caption = 'Kelas'
        TabOrder = 3
      end
      object Panel2: TPanel
        Left = 15
        Top = 103
        Width = 633
        Height = 29
        Cursor = crHandPoint
        Caption = 'UnFilter'
        Color = 33023
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = Panel2Click
      end
      object Panel4: TPanel
        Left = 15
        Top = 71
        Width = 633
        Height = 29
        Cursor = crHandPoint
        Caption = 'Filter'
        Color = 33023
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = Panel4Click
      end
    end
  end
end
