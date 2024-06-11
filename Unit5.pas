unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Edit4: TEdit;
    Button4: TButton;
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
  Form5: TForm5;
  a:string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  DataModule4.zsatuan.SQL.Clear;
  DataModule4.zsatuan.SQL.Add('insert into satuan values(null,"'+Edit2.Text+'","'+Edit3.Text+'")');
  DataModule4.zsatuan.ExecSQL;

  DataModule4.zsatuan.SQL.Clear;
  DataModule4.zsatuan.SQL.Add('select * from satuan');
  DataModule4.zsatuan.Open;
  ShowMessage('Data Berhasil diSimpan!');
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  DataModule4.zsatuan.SQL.Clear;
  DataModule4.zsatuan.SQL.Add('update satuan set name= "'+Edit2.Text+'", diskripsi="'+Edit3.Text+'" where Id= "'+a+'"');
  DataModule4.zsatuan.ExecSQL;

  DataModule4.zsatuan.SQL.Clear;
  DataModule4.zsatuan.SQL.Add('select * from satuan');
  DataModule4.zsatuan.Open;
  ShowMessage('Data Berhasil diUpdate!');
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
  Edit2.Text:=DataModule4.zsatuan.Fields[1].AsString;
  Edit3.Text:=DataModule4.zsatuan.Fields[2].AsString;
  a:=DataModule4.zsatuan.Fields[0].AsString;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  DataModule4.zsatuan.SQL.Clear;
  DataModule4.zsatuan.SQL.Add('delete from satuan where id= "'+a+'"');
  DataModule4.zsatuan.ExecSQL;

  DataModule4.zsatuan.SQL.Clear;
  DataModule4.zsatuan.SQL.Add('select * from satuan');
  DataModule4.zsatuan.Open;
  ShowMessage('Data Berhasil diHapus!');
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
with DataModule4.zsatuan do
begin
  Close;
  SQL.Clear;
  SQL.Text :='select * from satuan where name like'+QuotedStr('%'+edit4.Text+'%');
  Open;
end;
end;

end.
