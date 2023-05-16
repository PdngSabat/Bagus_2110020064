unit Modul01;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TDataModule1 = class(TDataModule)
    ZConnection1: TZConnection;
    QueryUser: TZQuery;
    QueryBank: TZQuery;
    QueryDesainer: TZQuery;
    QueryProduk: TZQuery;
    QueryAdmin: TZQuery;
    QueryPemesan: TZQuery;
    QueryRekening: TZQuery;
    QueryTransaksi: TZQuery;
    DSUser: TDataSource;
    DSBank: TDataSource;
    DSDesainer: TDataSource;
    DSProduk: TDataSource;
    DSAdmin: TDataSource;
    DSPemesan: TDataSource;
    DSRekening: TDataSource;
    DSTransaksi: TDataSource;
    QueryAdminuser: TWideStringField;
    QueryAdminpassword: TWideStringField;
    QueryUserid_user: TIntegerField;
    QueryUserusername: TWideStringField;
    QueryUseremail: TWideStringField;
    QueryUserpassword: TWideStringField;
    QueryUserstatus_akun: TWideStringField;
    QueryUserlevel: TWideStringField;
    QueryBankkode_bank: TWideStringField;
    QueryBanknama_bank: TWideStringField;
    QueryDesainerid_desainer: TIntegerField;
    QueryDesainerusername: TWideStringField;
    QueryDesaineremail: TWideStringField;
    QueryDesainernama_desainer: TWideStringField;
    QueryDesainertempat_lahir: TWideStringField;
    QueryDesainertanggal_lahir: TDateField;
    QueryDesainerjenis_kelamin: TWideStringField;
    QueryDesainerno_hp: TWideStringField;
    QueryDesaineralamat: TWideStringField;
    QueryDesainerkecamatan: TWideStringField;
    QueryDesainerkabupaten: TWideStringField;
    QueryDesainerprovinsi: TWideStringField;
    QueryDesainerkode_pos: TWideStringField;
    QueryDesainertanggal_daftar: TDateField;
    QueryProdukid_produk: TIntegerField;
    QueryProdukid_desainer: TIntegerField;
    QueryProduknama_produk: TWideStringField;
    QueryProdukkategori: TWideStringField;
    QueryProdukdeskripsi: TWideMemoField;
    QueryProdukharga: TWideStringField;
    QueryProduktanggal: TDateField;
    QueryProdukstatus: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
