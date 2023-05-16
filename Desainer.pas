unit Desainer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edId: TEdit;
    edUser: TEdit;
    edEmail: TEdit;
    edKecamatan: TEdit;
    edAlamat: TEdit;
    edTelp: TEdit;
    edJenis: TEdit;
    edTl: TEdit;
    edNama: TEdit;
    edKabupaten: TEdit;
    edProvinsi: TEdit;
    edKodePos: TEdit;
    dtDaftar: TDateTimePicker;
    dtLahir: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    edCari: TEdit;
    Label15: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edCariChange(Sender: TObject);
    procedure edIdKeyPress(Sender: TObject; var Key: Char);
    procedure edUserKeyPress(Sender: TObject; var Key: Char);
    procedure edEmailKeyPress(Sender: TObject; var Key: Char);
    procedure edNamaKeyPress(Sender: TObject; var Key: Char);
    procedure edTlKeyPress(Sender: TObject; var Key: Char);
    procedure dtLahirKeyPress(Sender: TObject; var Key: Char);
    procedure edJenisKeyPress(Sender: TObject; var Key: Char);
    procedure edTelpKeyPress(Sender: TObject; var Key: Char);
    procedure edAlamatKeyPress(Sender: TObject; var Key: Char);
    procedure edKecamatanKeyPress(Sender: TObject; var Key: Char);
    procedure edKabupatenKeyPress(Sender: TObject; var Key: Char);
    procedure edProvinsiKeyPress(Sender: TObject; var Key: Char);
    procedure edKodePosKeyPress(Sender: TObject; var Key: Char);
    procedure dtDaftarKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Modul01;

procedure TForm4.Button1Click(Sender: TObject);
begin
  try
    with DataModule1.QueryDesainer do
    begin
      Append;
      FieldByName('id_desainer').AsString:=edId.Text;
      FieldByName('username').AsString:=edUser.Text;
      FieldByName('email').AsString:=edEmail.Text;
      FieldByName('nama_desainer').AsString:=edNama.Text;
      FieldByName('tempat_lahir').AsString:=edTl.Text;
      FieldByName('tanggal_lahir').AsDateTime:=dtLahir.Date;
      FieldByName('jenis_kelamin').AsString:=edJenis.Text;
      FieldByName('no_hp').AsString:=edTelp.Text;
      FieldByName('alamat').AsString:=edAlamat.Text;
      FieldByName('kecamatan').AsString:=edKecamatan.Text;
      FieldByName('kabupaten').AsString:=edKabupaten.Text;
      FieldByName('provinsi').AsString:=edProvinsi.Text;
      FieldByName('kode_pos').AsString:=edKodePos.Text;
      FieldByName('tanggal_daftar').AsDateTime:=dtDaftar.Date;
      post;
    end;
  except
    on salah:Exception do
    ShowMessage(salah.Message);
  end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
try
    with DataModule1 do
    begin
      QueryDesainer.SQL.Clear;
      QueryDesainer.SQL.Text:='DELETE FROM tb_desainer WHERE id_desainer="'+edId.Text+'"';
      QueryDesainer.ExecSQL;

      QueryDesainer.SQL.Clear;
      QueryDesainer.SQL.Text:='SELECT*FROM tb_desainer ORDER BY id_desainer ASC';
      QueryDesainer.Open;
    end;
    except
    on salah:Exception do
      ShowMessage(salah.Message);

  end;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
try
    with DataModule1.QueryDesainer do
    begin
      Edit;
      FieldByName('id_desainer').AsString:=edId.Text;
      FieldByName('username').AsString:=edUser.Text;
      FieldByName('email').AsString:=edEmail.Text;
      FieldByName('nama_desainer').AsString:=edNama.Text;
      FieldByName('tempat_lahir').AsString:=edTl.Text;
      FieldByName('tanggal_lahir').AsDateTime:=dtLahir.Date;
      FieldByName('jenis_kelamin').AsString:=edJenis.Text;
      FieldByName('no_hp').AsString:=edTelp.Text;
      FieldByName('alamat').AsString:=edAlamat.Text;
      FieldByName('kecamatan').AsString:=edKecamatan.Text;
      FieldByName('kabupaten').AsString:=edKabupaten.Text;
      FieldByName('provinsi').AsString:=edProvinsi.Text;
      FieldByName('kode_pos').AsString:=edKodePos.Text;
      FieldByName('tanggal_daftar').AsDateTime:=dtDaftar.Date;
      post;
    end;
  except
    on salah:Exception do
    ShowMessage(salah.Message);
  end;
end;
procedure TForm4.DBGrid1DblClick(Sender: TObject);
begin
begin
  edId.Text := DataModule1.QueryDesainerid_desainer.AsString;
  edUser.Text := DataModule1.QueryDesainerusername.AsString;
  edEmail.Text := DataModule1.QueryDesaineremail.AsString;
  edNama.Text := DataModule1.QueryDesainernama_desainer.AsString;
  edTl.Text := DataModule1.QueryDesainertempat_lahir.AsString;
  dtLahir.Date := DataModule1.QueryDesainertanggal_lahir.AsDateTime;
  edJenis.Text := DataModule1.QueryDesainerjenis_kelamin.AsString;
  edTelp.Text := DataModule1.QueryDesainerno_hp.AsString;
  edAlamat.Text := DataModule1.QueryDesaineralamat.AsString;
  edKecamatan.Text := DataModule1.QueryDesainerkecamatan.AsString;
  edKabupaten.Text := DataModule1.QueryDesainerkabupaten.AsString;
  edProvinsi.Text := DataModule1.QueryDesainerprovinsi.AsString;
  edKodePos.Text := DataModule1.QueryDesainerkode_pos.AsString;
  dtDaftar.Date := DataModule1.QueryDesainertanggal_daftar.AsDateTime;
end;
end;

procedure TForm4.dtDaftarKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Button1.SetFocus;
end;

procedure TForm4.dtLahirKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edJenis.SetFocus;
end;

procedure TForm4.edAlamatKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edKecamatan.SetFocus;
end;

procedure TForm4.edCariChange(Sender: TObject);
var cari: String;
begin
  try
    cari:= QuotedStr('%'+edCari.text+'%');
    with DataModule1 do
    begin
      QueryDesainer.SQL.Clear;
      QueryDesainer.SQL.Text := 'select * from tb_desainer where id_desainer like '+cari+' or username like '+cari+' or tanggal_lahir like '+cari+' or no_hp like '+cari;
      QueryDesainer.Open;
    end;


  except
    on salah:Exception do
    ShowMessage(salah.Message);
  end;
end;

procedure TForm4.edEmailKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edNama.SetFocus;
end;

procedure TForm4.edIdKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edUser.SetFocus;
end;

procedure TForm4.edJenisKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edTelp.SetFocus;
end;

procedure TForm4.edKabupatenKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edProvinsi.SetFocus;
end;

procedure TForm4.edKecamatanKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edKabupaten.SetFocus;
end;

procedure TForm4.edKodePosKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then dtDaftar.SetFocus;
end;

procedure TForm4.edNamaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edTl.SetFocus;
end;

procedure TForm4.edProvinsiKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edKodePos.SetFocus;
end;

procedure TForm4.edTelpKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edAlamat.SetFocus;
end;

procedure TForm4.edTlKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then dtLahir.SetFocus;
end;

procedure TForm4.edUserKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edEmail.SetFocus;
end;

end.
