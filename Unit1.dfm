object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 611
  ClientWidth = 876
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 552
    Top = 48
    Width = 461
    Height = 40
    Caption = 'APLIKASI JASA DESIGN GRAFIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 40
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object MainMenu1: TMainMenu
    Left = 512
    Top = 320
    object INPUTDATA1: TMenuItem
      Caption = 'INPUT DATA'
      object DESAINER1: TMenuItem
        Caption = 'DESAINER'
        OnClick = DESAINER1Click
      end
      object BANK1: TMenuItem
        Caption = 'BANK'
        OnClick = BANK1Click
      end
      object TAMBAHPRODUK1: TMenuItem
        Caption = 'TAMBAH PRODUK'
        OnClick = TAMBAHPRODUK1Click
      end
    end
    object BANK2: TMenuItem
      Caption = 'OPERATOR'
      object MASUK1: TMenuItem
        Caption = 'MASUK'
        OnClick = MASUK1Click
      end
      object KELUAR1: TMenuItem
        Caption = 'KELUAR'
      end
      object D1: TMenuItem
        Caption = 'DAFTAR'
        OnClick = D1Click
      end
    end
    object USER1: TMenuItem
      Caption = 'USER'
      object MASUK2: TMenuItem
        Caption = 'MASUK'
      end
      object KELUAR2: TMenuItem
        Caption = 'KELUAR'
      end
      object DAFTAR2: TMenuItem
        Caption = 'DAFTAR'
      end
    end
  end
end
