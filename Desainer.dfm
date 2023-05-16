object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 613
  ClientWidth = 881
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 48
    Width = 55
    Height = 13
    Caption = 'Id Desainer'
  end
  object Label2: TLabel
    Left = 32
    Top = 112
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label3: TLabel
    Left = 32
    Top = 80
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label4: TLabel
    Left = 32
    Top = 142
    Width = 30
    Height = 13
    Caption = 'Nama '
  end
  object Label5: TLabel
    Left = 36
    Top = 176
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object Label6: TLabel
    Left = 272
    Top = 48
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object Label7: TLabel
    Left = 272
    Top = 80
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label8: TLabel
    Left = 272
    Top = 112
    Width = 33
    Height = 13
    Caption = 'No. HP'
  end
  object Label9: TLabel
    Left = 272
    Top = 144
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label10: TLabel
    Left = 528
    Top = 48
    Width = 52
    Height = 13
    Caption = 'Kabupaten'
  end
  object Label11: TLabel
    Left = 272
    Top = 176
    Width = 53
    Height = 13
    Caption = 'Kecamatan'
  end
  object Label12: TLabel
    Left = 528
    Top = 80
    Width = 37
    Height = 13
    Caption = 'Provinsi'
  end
  object Label13: TLabel
    Left = 528
    Top = 112
    Width = 44
    Height = 13
    Caption = 'Kode Pos'
  end
  object Label14: TLabel
    Left = 528
    Top = 144
    Width = 72
    Height = 13
    Caption = 'Tanggal Daftar'
  end
  object Label15: TLabel
    Left = 36
    Top = 216
    Width = 45
    Height = 13
    Caption = 'Cari Data'
  end
  object edId: TEdit
    Left = 104
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = edIdKeyPress
  end
  object edUser: TEdit
    Left = 104
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = edUserKeyPress
  end
  object edEmail: TEdit
    Left = 104
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = edEmailKeyPress
  end
  object edKecamatan: TEdit
    Left = 352
    Top = 173
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = edKecamatanKeyPress
  end
  object edAlamat: TEdit
    Left = 352
    Top = 139
    Width = 121
    Height = 21
    TabOrder = 4
    OnKeyPress = edAlamatKeyPress
  end
  object edTelp: TEdit
    Left = 352
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 5
    OnKeyPress = edTelpKeyPress
  end
  object edJenis: TEdit
    Left = 352
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 6
    OnKeyPress = edJenisKeyPress
  end
  object edTl: TEdit
    Left = 104
    Top = 173
    Width = 121
    Height = 21
    TabOrder = 7
    OnKeyPress = edTlKeyPress
  end
  object edNama: TEdit
    Left = 104
    Top = 134
    Width = 121
    Height = 21
    TabOrder = 8
    OnKeyPress = edNamaKeyPress
  end
  object edKabupaten: TEdit
    Left = 608
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 9
    OnKeyPress = edKabupatenKeyPress
  end
  object edProvinsi: TEdit
    Left = 608
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 10
    OnKeyPress = edProvinsiKeyPress
  end
  object edKodePos: TEdit
    Left = 608
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 11
    OnKeyPress = edKodePosKeyPress
  end
  object dtDaftar: TDateTimePicker
    Left = 606
    Top = 144
    Width = 123
    Height = 21
    Date = 45061.000000000000000000
    Time = 0.722740185185102700
    TabOrder = 12
    OnKeyPress = dtDaftarKeyPress
  end
  object dtLahir: TDateTimePicker
    Left = 352
    Top = 45
    Width = 121
    Height = 21
    Date = 45061.000000000000000000
    Time = 0.722917337960097900
    TabOrder = 13
    OnKeyPress = dtLahirKeyPress
  end
  object Button1: TButton
    Left = 525
    Top = 171
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 14
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 632
    Top = 171
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 15
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 735
    Top = 171
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 16
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 240
    Width = 833
    Height = 365
    DataSource = DataModule1.DSDesainer
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object edCari: TEdit
    Left = 87
    Top = 213
    Width = 778
    Height = 21
    TabOrder = 18
    OnChange = edCariChange
  end
end
