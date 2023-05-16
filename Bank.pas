unit Bank;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    edKode: TEdit;
    edNamaBank: TEdit;
    edCariBank: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure edKodeKeyPress(Sender: TObject; var Key: Char);
    procedure edNamaBankKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edCariBankChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Modul01;

procedure TForm5.Button1Click(Sender: TObject);
begin
  try
    with DataModule1.QueryBank do
    begin
      Append;
      FieldByName('kode_bank').AsString:=edKode.Text;
      FieldByName('nama_bank').AsString:=edNamaBank.Text;
      post;
    end;
  except
    on salah:Exception do
    ShowMessage(salah.Message);
  end;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
if (
  (Trim(edKode.Text)='') and
  (Trim(edNamaBank.Text)='')
  ) then
  begin
    beep;
    ShowMessage('Silakan pilih data terlebih dahulu !!!');
    DBGrid1.SetFocus;
    Exit
  end else DataModule1.QueryBank.Delete;

end;

procedure TForm5.Button3Click(Sender: TObject);
begin
try
    with DataModule1.QueryBank do
    begin
      Edit;
      FieldByName('kode_bank').AsString:=edKode.Text;
      FieldByName('nama_bank').AsString:=edNamaBank.Text;
      post;
    end;
  except
    on salah:Exception do
    ShowMessage(salah.Message);
  end;
end;

procedure TForm5.DBGrid1DblClick(Sender: TObject);
begin
begin
  edKode.Text := DataModule1.QueryBankkode_bank.AsString;
  edNamaBank.Text := DataModule1.QueryBanknama_bank.AsString;
end;
end;

procedure TForm5.edCariBankChange(Sender: TObject);
Var cari: String;
begin
 try
    cari:= QuotedStr('%'+edCariBank.text+'%');
    with DataModule1 do
    begin
      QueryBank.SQL.Clear;
      QueryBank.SQL.Text := 'select * from tb_bank where kode_bank like '+cari+' or nama_bank like '+cari;
      QueryBank.Open;
    end;


  except
    on salah:Exception do
    ShowMessage(salah.Message);
  end;
end;

procedure TForm5.edKodeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then edNamaBank.SetFocus;
end;

procedure TForm5.edNamaBankKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then Button1.SetFocus;
end;

end.
