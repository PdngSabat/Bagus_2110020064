program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Login in 'Login.pas' {Form2},
  Modul01 in 'Modul01.pas' {DataModule1: TDataModule},
  DaftarAdmin in 'DaftarAdmin.pas' {Form3},
  Desainer in 'Desainer.pas' {Form4},
  Bank in 'Bank.pas' {Form5},
  Produk in 'Produk.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
