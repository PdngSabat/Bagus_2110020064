object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 614
  ClientWidth = 879
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 408
    Top = 64
    Width = 176
    Height = 30
    Caption = 'DAFTAR ADMIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 30
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 408
    Top = 128
    Width = 26
    Height = 15
    Caption = 'User'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 408
    Top = 176
    Width = 59
    Height = 15
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edUser: TEdit
    Left = 408
    Top = 149
    Width = 176
    Height = 21
    TabOrder = 0
  end
  object edPassword: TEdit
    Left = 408
    Top = 197
    Width = 176
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 408
    Top = 240
    Width = 377
    Height = 120
    DataSource = DataModule1.DSAdmin
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Button1: TButton
    Left = 608
    Top = 147
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 608
    Top = 195
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 710
    Top = 195
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 5
    OnClick = Button3Click
  end
end
