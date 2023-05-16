unit Produk;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    edIdProduk: TEdit;
    edId: TEdit;
    edProduk: TEdit;
    edKategori: TEdit;
    edDeskripsi: TEdit;
    edHarga: TEdit;
    dtProduk: TDateTimePicker;
    edStatus: TEdit;
    edCariProduk: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure edIdProdukKeyPress(Sender: TObject; var Key: Char);
    procedure edIdKeyPress(Sender: TObject; var Key: Char);
    procedure edProdukKeyPress(Sender: TObject; var Key: Char);
    procedure edKategoriKeyPress(Sender: TObject; var Key: Char);
    procedure edDeskripsiKeyPress(Sender: TObject; var Key: Char);
    procedure edHargaKeyPress(Sender: TObject; var Key: Char);
    procedure dtProdukKeyPress(Sender: TObject; var Key: Char);
    procedure edStatusKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Modul01;

procedure TForm6.Button2Click(Sender: TObject);
begin
try
    with DataModule1 do
    begin
      QueryProduk.SQL.Clear;
      QueryProduk.SQL.Text:='DELETE FROM tb_produk WHERE id_produk="'+edIdProduk.Text+'"';
      QueryProduk.ExecSQL;

      QueryProduk.SQL.Clear;
      QueryProduk.SQL.Text:='SELECT*FROM tb_produk ORDER BY id_produk ASC';
      QueryProduk.Open;
    end;
    except
    on salah:Exception do
      ShowMessage(salah.Message);

  end;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
try
    with DataModule1.QueryProduk do
    begin
      Edit;
      FieldByName('id_produk').AsString:=edIdProduk.Text;
      FieldByName('id_desainer').AsString:=edId.Text;
      FieldByName('nama_produk').AsString:=edProduk.Text;
      FieldByName('kategori').AsString:=edKategori.Text;
      FieldByName('deskripsi').AsString:=edDeskripsi.Text;
      FieldByName('harga').AsString:=edHarga.Text;
      FieldByName('tanggal').AsDateTime:=dtProduk.Date;
      FieldByName('status').AsString:=edStatus.Text;
      post;
    end;
  except
    on salah:Exception do
    ShowMessage(salah.Message);
  end;
end;

procedure TForm6.DBGrid1DblClick(Sender: TObject);
begin
  edIdProduk.Text := DataModule1.QueryProdukid_produk.AsString;
  edId.Text := DataModule1.QueryProdukid_desainer.AsString;
  edProduk.Text := DataModule1.QueryProduknama_produk.AsString;
  edKategori.Text := DataModule1.QueryProdukkategori.AsString;
  edDeskripsi.Text := DataModule1.QueryProdukdeskripsi.AsString;
  edHarga.Text := DataModule1.QueryProdukharga.AsString;
  dtProduk.Date := DataModule1.QueryProduktanggal.AsDateTime;
  edStatus.Text := DataModule1.QueryProdukstatus.AsString;
end;

procedure TForm6.dtProdukKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edStatus.SetFocus;
end;

procedure TForm6.edDeskripsiKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edHarga.SetFocus;
end;

procedure TForm6.edHargaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then dtProduk.SetFocus;
end;

procedure TForm6.edIdKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edProduk.SetFocus;
end;

procedure TForm6.edIdProdukKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edId.SetFocus;
end;

procedure TForm6.edKategoriKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edDeskripsi.SetFocus;
end;

procedure TForm6.edProdukKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edKategori.SetFocus;
end;

procedure TForm6.edStatusKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Button1.SetFocus;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
try
    with DataModule1.QueryProduk do
    begin
      Append;
      FieldByName('id_produk').AsString:=edIdProduk.Text;
      FieldByName('id_desainer').AsString:=edId.Text;
      FieldByName('nama_produk').AsString:=edProduk.Text;
      FieldByName('kategori').AsString:=edKategori.Text;
      FieldByName('deskripsi').AsString:=edDeskripsi.Text;
      FieldByName('harga').AsString:=edHarga.Text;
      FieldByName('tanggal').AsDateTime:=dtProduk.Date;
      FieldByName('status').AsString:=edStatus.Text;
      post;
    end;
  except
    on salah:Exception do
    ShowMessage(salah.Message);
  end;
end;

end.
