unit DaftarAdmin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edPassword: TEdit;
    edUser: TEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Modul01;

procedure TForm3.Button1Click(Sender: TObject);
begin
try
    with DataModule1 do
    begin
      if Trim(edUser.Text)='' then
      begin
        beep;
        ShowMessage('User belum di isi');
        edUser.SetFocus;
      end else
      if Trim(edPassword.Text)='' then
      begin
        beep;
        ShowMessage('Password belum di isi');
        edPassword.SetFocus;
      end else
      if QueryAdmin.Locate('user',edUser.Text,[]) then
      begin
        beep;
        ShowMessage('user sudah terdaftar');
        edPassword.Text:=QueryAdminpassword.AsString;
      end else
      begin
      QueryAdminuser.AsString:=edUser.Text;
      QueryAdminpassword.AsString:=edPassword.Text;
      QueryAdmin.Post;
      end;


    end;
  except
    on salah:Exception do
    ShowMessage(salah.Message);
  end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
if (
  (Trim(edUser.Text)='') and
  (Trim(edPassword.Text)='')
  ) then
  begin
    beep;
    ShowMessage('Silakan pilih data terlebih dahulu !!!');
    DBGrid1.SetFocus;
    Exit
  end else DataModule1.QueryAdmin.Delete;

end;

procedure TForm3.Button3Click(Sender: TObject);
begin
try
    with DataModule1.QueryAdmin do
    begin
      Edit;
      FieldByName('user').AsString:=edUser.Text;
      FieldByName('password').AsString:=edPassword.Text;
      post;
    end;
  except
    on salah:Exception do
    ShowMessage(salah.Message);
  end;
end;

procedure TForm3.DBGrid1DblClick(Sender: TObject);
begin
begin
  edUser.Text := DataModule1.QueryAdminuser.AsString;
  edPassword.Text := DataModule1.QueryAdminpassword.AsString;
end;
end;

end.
