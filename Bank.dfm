object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 342
  ClientWidth = 497
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 64
    Width = 50
    Height = 13
    Caption = 'Kode Bank'
  end
  object Label2: TLabel
    Left = 80
    Top = 120
    Width = 53
    Height = 13
    Caption = 'Nama Bank'
  end
  object Label3: TLabel
    Left = 80
    Top = 160
    Width = 45
    Height = 13
    Caption = 'Cari Bank'
  end
  object DBGrid1: TDBGrid
    Left = 80
    Top = 200
    Width = 336
    Height = 120
    DataSource = DataModule1.DSBank
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object edKode: TEdit
    Left = 160
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = edKodeKeyPress
  end
  object edNamaBank: TEdit
    Left = 160
    Top = 117
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = edNamaBankKeyPress
  end
  object edCariBank: TEdit
    Left = 131
    Top = 157
    Width = 285
    Height = 21
    TabOrder = 3
    OnChange = edCariBankChange
  end
  object Button1: TButton
    Left = 341
    Top = 59
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 341
    Top = 90
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 341
    Top = 121
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 6
    OnClick = Button3Click
  end
end
