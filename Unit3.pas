unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Button4: TButton;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a : string;

implementation

uses
  Unit4, Unit1;

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin

Form3.Close;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  DataModule4.zkategori.SQL.Clear;
  DataModule4.zkategori.SQL.Add('insert into kategori values(null,"'+Edit1.Text+'")');
  DataModule4.zkategori.ExecSQL;

  DataModule4.zkategori.SQL.Clear;
  DataModule4.zkategori.SQL.Add('select * from kategori');
  DataModule4.zkategori.Open;
  ShowMessage('Data Berhasil diSimpan!');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  DataModule4.zkategori.SQL.Clear;
  DataModule4.zkategori.SQL.Add('update kategori set Name= "'+Edit1.Text+'" where Id= "'+a+'"');
  DataModule4.zkategori.ExecSQL;

  DataModule4.zkategori.SQL.Clear;
  DataModule4.zkategori.SQL.Add('select * from kategori');
  DataModule4.zkategori.Open;
  ShowMessage('Data Berhasil diUpdate!');

end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text:=DataModule4.zkategori.Fields[1].AsString;
  a:=DataModule4.zkategori.Fields[0].AsString;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  DataModule4.zkategori.SQL.Clear;
  DataModule4.zkategori.SQL.Add('delete from kategori where id= "'+a+'"');
  DataModule4.zkategori.ExecSQL;

  DataModule4.zkategori.SQL.Clear;
  DataModule4.zkategori.SQL.Add('select * from kategori');
  DataModule4.zkategori.Open;
  ShowMessage('Data Berhasil diHapus!');
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
with DataModule4.zkategori do
begin
  Close;
  SQL.Clear;
  SQL.Text :='select * from kategori where name like'+QuotedStr('%'+edit2.Text+'%');
  Open;
end;

end;

end.
