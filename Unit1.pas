unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    MainMenu1: TMainMenu;
    INPUTDATA1: TMenuItem;
    DESAINER1: TMenuItem;
    BANK1: TMenuItem;
    BANK2: TMenuItem;
    MASUK1: TMenuItem;
    KELUAR1: TMenuItem;
    TAMBAHPRODUK1: TMenuItem;
    D1: TMenuItem;
    USER1: TMenuItem;
    MASUK2: TMenuItem;
    KELUAR2: TMenuItem;
    DAFTAR2: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure DESAINER1Click(Sender: TObject);
    procedure BANK1Click(Sender: TObject);
    procedure TAMBAHPRODUK1Click(Sender: TObject);
    procedure MASUK1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses DaftarAdmin, Desainer, Bank, Produk, Login;

procedure TForm1.BANK1Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm1.D1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.DESAINER1Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
DESAINER1.Enabled:=FALSE;
BANK1.Enabled:=FALSE;
TAMBAHPRODUK1.Enabled:=FALSE;
KELUAR1.Enabled:=FALSE;
KELUAR2.Enabled:=False;
end;

procedure TForm1.MASUK1Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.TAMBAHPRODUK1Click(Sender: TObject);
begin
Form6.Show;
end;

end.
