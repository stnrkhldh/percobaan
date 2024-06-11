unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm9 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Label11: TLabel;
    Edit11: TEdit;
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
  Form9: TForm9;
  a:string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
  DataModule4.zbarang.SQL.Clear;
  DataModule4.zbarang.SQL.Add('insert into barang values(null,"'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+Edit7.Text+'","'+Edit8.Text+'","'+Edit9.Text+'","'+Edit10.Text+'")');
  DataModule4.zbarang.ExecSQL;

  DataModule4.zbarang.SQL.Clear;
  DataModule4.zbarang.SQL.Add('select * from barang');
  DataModule4.zbarang.Open;
  ShowMessage('Data Berhasil diSimpan!');
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
  DataModule4.zbarang.SQL.Clear;
  DataModule4.zbarang.SQL.Add('update barang set barcode= "'+Edit2.Text+'", name="'+Edit3.Text+'", harga_jual="'+Edit4.Text+'", harga_beli="'+Edit5.Text+'", stok="'+Edit6.Text+'", kategori_id="'+Edit7.Text+'", satuan_id="'+Edit8.Text+'", user_id="'+Edit9.Text+'", supplier_id="'+Edit10.Text+'" where Id= "'+a+'"');
  DataModule4.zbarang.ExecSQL;

  DataModule4.zbarang.SQL.Clear;
  DataModule4.zbarang.SQL.Add('select * from barang');
  DataModule4.zbarang.Open;
  ShowMessage('Data Berhasil diUpdate!');
end;

procedure TForm9.DBGrid1CellClick(Column: TColumn);
begin
  Edit2.Text:=DataModule4.zbarang.Fields[1].AsString;
  Edit3.Text:=DataModule4.zbarang.Fields[2].AsString;
  Edit4.Text:=DataModule4.zbarang.Fields[3].AsString;
  Edit5.Text:=DataModule4.zbarang.Fields[4].AsString;
  Edit6.Text:=DataModule4.zbarang.Fields[5].AsString;
  Edit7.Text:=DataModule4.zbarang.Fields[6].AsString;
  Edit8.Text:=DataModule4.zbarang.Fields[7].AsString;
  Edit9.Text:=DataModule4.zbarang.Fields[8].AsString;
  Edit10.Text:=DataModule4.zbarang.Fields[9].AsString;
  a:=DataModule4.zbarang.Fields[0].AsString;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
  DataModule4.zbarang.SQL.Clear;
  DataModule4.zbarang.SQL.Add('delete from barang where id= "'+a+'"');
  DataModule4.zbarang.ExecSQL;

  DataModule4.zbarang.SQL.Clear;
  DataModule4.zbarang.SQL.Add('select * from barang');
  DataModule4.zbarang.Open;
  ShowMessage('Data Berhasil diHapus!');
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
with DataModule4.zbarang do
begin
  Close;
  SQL.Clear;
  SQL.Text :='select * from barang where name like'+QuotedStr('%'+edit11.Text+'%');
  Open;
end;
end;

end.
