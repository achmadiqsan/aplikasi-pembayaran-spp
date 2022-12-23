object FTabelDataBayar: TFTabelDataBayar
  Left = 456
  Top = 237
  Width = 345
  Height = 233
  BorderIcons = [biSystemMenu]
  Caption = 'TABEL DATA BAYAR'
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
    Width = 329
    Height = 194
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
      Left = 135
      Top = 66
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
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 301
      Height = 39
      Caption = 'TABEL DATA BAYAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = 4210752
      Font.Height = -33
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 12
      Top = 115
      Width = 302
      Height = 29
      Cursor = crHandPoint
      Caption = 'Print'
      Color = 33023
      TabOrder = 0
      OnClick = Panel2Click
    end
    object Panel3: TPanel
      Left = 12
      Top = 149
      Width = 302
      Height = 29
      Cursor = crHandPoint
      Caption = 'Close'
      Color = 33023
      TabOrder = 1
      OnClick = Panel3Click
    end
    object Panel7: TPanel
      Left = 10
      Top = 55
      Width = 302
      Height = 5
      Color = 16576
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 59
      Top = 85
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
  end
end
