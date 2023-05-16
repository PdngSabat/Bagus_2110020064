unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,DATA.DB;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Modul01, Unit1;

procedure TForm2.Button1Click(Sender: TObject);
begin
DataModule1.QueryAdmin.Locate('user',Edit1.Text,[LOPARTIALKEY]);
if (DataModule1.QueryAdmin['user']=Edit1.Text) AND (DataModule1.QueryAdmin['password']=Edit2.Text) then
begin
 Form1.Show;
 Form2.Hide;
 Form1.DESAINER1.Enabled:=TRUE;
 Form1.BANK1.Enabled:=TRUE;
 Form1.TAMBAHPRODUK1.Enabled:=TRUE;
 Form1.KELUAR1.Enabled:=TRUE;
 Form1.KELUAR2.Enabled:=TRUE;
end
else
begin
  ShowMessage('Username atau Password salah');
  Edit1.Clear;
  Edit2.Clear;
  Edit1.SetFocus;
end;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form1.Show;
Form2.Close;
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Edit2.SetFocus;
end;

procedure TForm2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Button1.SetFocus;
end;

end.
