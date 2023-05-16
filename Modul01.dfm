object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 641
  Width = 887
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = '2110020064'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'D:\Project Visual2\libmysql.dll'
    Left = 416
    Top = 176
  end
  object QueryUser: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM tb_user')
    Params = <>
    Left = 256
    Top = 328
    object QueryUserid_user: TIntegerField
      FieldName = 'id_user'
      Required = True
    end
    object QueryUserusername: TWideStringField
      FieldName = 'username'
      Required = True
      Size = 50
    end
    object QueryUseremail: TWideStringField
      FieldName = 'email'
      Required = True
      Size = 30
    end
    object QueryUserpassword: TWideStringField
      FieldName = 'password'
      Required = True
      Size = 50
    end
    object QueryUserstatus_akun: TWideStringField
      FieldName = 'status_akun'
      Required = True
    end
    object QueryUserlevel: TWideStringField
      FieldName = 'level'
      Required = True
      Size = 15
    end
  end
  object QueryBank: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM tb_bank')
    Params = <>
    Left = 320
    Top = 328
    object QueryBankkode_bank: TWideStringField
      FieldName = 'kode_bank'
      Required = True
      Size = 3
    end
    object QueryBanknama_bank: TWideStringField
      FieldName = 'nama_bank'
      Required = True
      Size = 50
    end
  end
  object QueryDesainer: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM tb_desainer')
    Params = <>
    Left = 384
    Top = 328
    object QueryDesainerid_desainer: TIntegerField
      FieldName = 'id_desainer'
      Required = True
    end
    object QueryDesainerusername: TWideStringField
      FieldName = 'username'
      Required = True
      Size = 50
    end
    object QueryDesaineremail: TWideStringField
      FieldName = 'email'
      Required = True
      Size = 30
    end
    object QueryDesainernama_desainer: TWideStringField
      FieldName = 'nama_desainer'
      Required = True
      Size = 50
    end
    object QueryDesainertempat_lahir: TWideStringField
      FieldName = 'tempat_lahir'
      Required = True
      Size = 50
    end
    object QueryDesainertanggal_lahir: TDateField
      FieldName = 'tanggal_lahir'
      Required = True
    end
    object QueryDesainerjenis_kelamin: TWideStringField
      FieldName = 'jenis_kelamin'
      Required = True
      Size = 9
    end
    object QueryDesainerno_hp: TWideStringField
      FieldName = 'no_hp'
      Required = True
    end
    object QueryDesaineralamat: TWideStringField
      FieldName = 'alamat'
      Required = True
      Size = 100
    end
    object QueryDesainerkecamatan: TWideStringField
      FieldName = 'kecamatan'
      Required = True
      Size = 100
    end
    object QueryDesainerkabupaten: TWideStringField
      FieldName = 'kabupaten'
      Required = True
      Size = 100
    end
    object QueryDesainerprovinsi: TWideStringField
      FieldName = 'provinsi'
      Required = True
      Size = 50
    end
    object QueryDesainerkode_pos: TWideStringField
      FieldName = 'kode_pos'
      Required = True
      Size = 10
    end
    object QueryDesainertanggal_daftar: TDateField
      FieldName = 'tanggal_daftar'
      Required = True
    end
  end
  object QueryProduk: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM tb_produk')
    Params = <>
    Left = 464
    Top = 328
    object QueryProdukid_produk: TIntegerField
      FieldName = 'id_produk'
      Required = True
    end
    object QueryProdukid_desainer: TIntegerField
      FieldName = 'id_desainer'
      Required = True
    end
    object QueryProduknama_produk: TWideStringField
      FieldName = 'nama_produk'
      Required = True
      Size = 100
    end
    object QueryProdukkategori: TWideStringField
      FieldName = 'kategori'
      Required = True
      Size = 50
    end
    object QueryProdukdeskripsi: TWideMemoField
      FieldName = 'deskripsi'
      Required = True
      BlobType = ftWideMemo
    end
    object QueryProdukharga: TWideStringField
      FieldName = 'harga'
      Required = True
    end
    object QueryProduktanggal: TDateField
      FieldName = 'tanggal'
      Required = True
    end
    object QueryProdukstatus: TWideStringField
      FieldName = 'status'
      Required = True
      Size = 10
    end
  end
  object QueryAdmin: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * FROM tb_admin')
    Params = <>
    Left = 192
    Top = 336
    object QueryAdminuser: TWideStringField
      FieldName = 'user'
      Required = True
      Size = 25
    end
    object QueryAdminpassword: TWideStringField
      FieldName = 'password'
      Required = True
      Size = 25
    end
  end
  object QueryPemesan: TZQuery
    Params = <>
    Left = 568
    Top = 328
  end
  object QueryRekening: TZQuery
    Params = <>
    Left = 616
    Top = 328
  end
  object QueryTransaksi: TZQuery
    Params = <>
    Left = 672
    Top = 328
  end
  object DSUser: TDataSource
    DataSet = QueryUser
    Left = 248
    Top = 392
  end
  object DSBank: TDataSource
    DataSet = QueryBank
    Left = 320
    Top = 400
  end
  object DSDesainer: TDataSource
    DataSet = QueryDesainer
    Left = 376
    Top = 400
  end
  object DSProduk: TDataSource
    DataSet = QueryProduk
    Left = 464
    Top = 400
  end
  object DSAdmin: TDataSource
    DataSet = QueryAdmin
    Left = 176
    Top = 392
  end
  object DSPemesan: TDataSource
    Left = 568
    Top = 400
  end
  object DSRekening: TDataSource
    Left = 624
    Top = 400
  end
  object DSTransaksi: TDataSource
    Left = 672
    Top = 400
  end
end
