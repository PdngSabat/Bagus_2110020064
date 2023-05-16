object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 613
  ClientWidth = 879
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
    Left = 40
    Top = 56
    Width = 46
    Height = 13
    Caption = 'Id Produk'
  end
  object Label2: TLabel
    Left = 40
    Top = 104
    Width = 55
    Height = 13
    Caption = 'Id Desainer'
  end
  object Label3: TLabel
    Left = 40
    Top = 200
    Width = 40
    Height = 13
    Caption = 'Kategori'
  end
  object Label4: TLabel
    Left = 40
    Top = 152
    Width = 63
    Height = 13
    Caption = 'Nama Produk'
  end
  object Label5: TLabel
    Left = 312
    Top = 56
    Width = 42
    Height = 13
    Caption = 'Deskripsi'
  end
  object Label6: TLabel
    Left = 312
    Top = 152
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label7: TLabel
    Left = 312
    Top = 104
    Width = 29
    Height = 13
    Caption = 'Harga'
  end
  object Label8: TLabel
    Left = 310
    Top = 200
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label9: TLabel
    Left = 40
    Top = 264
    Width = 55
    Height = 13
    Caption = 'Cari Produk'
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 299
    Width = 817
    Height = 285
    DataSource = DataModule1.DSProduk
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object edIdProduk: TEdit
    Left = 120
    Top = 56
    Width = 153
    Height = 21
    TabOrder = 1
    OnKeyPress = edIdProdukKeyPress
  end
  object edId: TEdit
    Left = 120
    Top = 104
    Width = 153
    Height = 21
    TabOrder = 2
    OnKeyPress = edIdKeyPress
  end
  object edProduk: TEdit
    Left = 120
    Top = 152
    Width = 153
    Height = 21
    TabOrder = 3
    OnKeyPress = edProdukKeyPress
  end
  object edKategori: TEdit
    Left = 120
    Top = 197
    Width = 153
    Height = 21
    TabOrder = 4
    OnKeyPress = edKategoriKeyPress
  end
  object edDeskripsi: TEdit
    Left = 384
    Top = 56
    Width = 186
    Height = 21
    TabOrder = 5
    OnKeyPress = edDeskripsiKeyPress
  end
  object edHarga: TEdit
    Left = 384
    Top = 104
    Width = 186
    Height = 21
    TabOrder = 6
    OnKeyPress = edHargaKeyPress
  end
  object dtProduk: TDateTimePicker
    Left = 384
    Top = 152
    Width = 186
    Height = 21
    Date = 45061.000000000000000000
    Time = 0.897719583335856400
    TabOrder = 7
    OnKeyPress = dtProdukKeyPress
  end
  object edStatus: TEdit
    Left = 384
    Top = 197
    Width = 186
    Height = 21
    TabOrder = 8
    OnKeyPress = edStatusKeyPress
  end
  object edCariProduk: TEdit
    Left = 120
    Top = 261
    Width = 737
    Height = 21
    TabOrder = 9
  end
  object Button1: TButton
    Left = 623
    Top = 192
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 704
    Top = 192
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 11
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 785
    Top = 192
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 12
    OnClick = Button3Click
  end
end
