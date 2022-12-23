object FDataSPP: TFDataSPP
  Left = 263
  Top = 137
  Width = 794
  Height = 477
  BorderIcons = [biSystemMenu]
  Caption = 'FORM DATA SPP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 438
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
      Width = 252
      Height = 39
      Caption = 'FORM DATA SPP'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -33
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 202
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
    object Label5: TLabel
      Left = 367
      Top = 140
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
      Left = 506
      Top = 84
      Width = 57
      Height = 15
      Caption = 'Uang SPP'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 385
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
      Left = 477
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
      Left = 567
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
      Left = 684
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
      Width = 759
      Height = 5
      Color = 16576
      TabOrder = 4
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
      TabOrder = 5
      OnKeyPress = Edit1KeyPress
    end
    object ComboBox2: TComboBox
      Left = 280
      Top = 164
      Width = 222
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 6
      Text = '-- PILIH KELAS --'
      Items.Strings = (
        'KELAS 10'
        'KELAS 11'
        'KELAS 12')
    end
    object Edit3: TEdit
      Left = 417
      Top = 105
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
      OnChange = Edit3Change
      OnKeyPress = Edit3KeyPress
    end
    object DBGrid1: TDBGrid
      Left = 72
      Top = 280
      Width = 633
      Height = 137
      DataSource = DM2.DSSPP
      FixedColor = 4210752
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 8
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -13
      TitleFont.Name = 'Roboto'
      TitleFont.Style = [fsBold]
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'periode'
          Title.Alignment = taCenter
          Title.Caption = 'PERIODE'
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
          FieldName = 'uang_spp'
          Title.Alignment = taCenter
          Title.Caption = 'UANG SPP'
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 72
      Top = 208
      Width = 633
      Height = 65
      Caption = 'Pencarian Berdasarkan Periode : '
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      object Edit2: TEdit
        Left = 26
        Top = 26
        Width = 575
        Height = 23
        BevelInner = bvNone
        Font.Charset = ANSI_CHARSET
        Font.Color = 4210752
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnChange = Edit2Change
      end
    end
  end
end
