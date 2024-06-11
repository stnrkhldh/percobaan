unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm7 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    Edit7: TEdit;
    Button4: TButton;
    Edit6: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  a:string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
  DataModule4.zkustomer.SQL.Clear;
  DataModule4.zkustomer.SQL.Add('insert into kustomer values(null,"'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'")');
  DataModule4.zkustomer.ExecSQL;

  DataModule4.zkustomer.SQL.Clear;
  DataModule4.zkustomer.SQL.Add('select * from kustomer');
  DataModule4.zkustomer.Open;
  ShowMessage('Data Berhasil diSimpan!');
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
  DataModule4.zkustomer.SQL.Clear;
  DataModule4.zkustomer.SQL.Add('update kustomer set nik= "'+Edit2.Text+'", name="'+Edit3.Text+'", telp="'+Edit4.Text+'", email="'+Edit5.Text+'", alamat="'+Edit6.Text+'" where id= "'+a+'"');
  DataModule4.zkustomer.ExecSQL;

  DataModule4.zkustomer.SQL.Clear;
  DataModule4.zkustomer.SQL.Add('select * from kustomer');
  DataModule4.zkustomer.Open;
  ShowMessage('Data Berhasil diUpdate!');
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  DataModule4.zkustomer.SQL.Clear;
  DataModule4.zkustomer.SQL.Add('delete from kustomer where id= "'+a+'"');
  DataModule4.zkustomer.ExecSQL;

  DataModule4.zkustomer.SQL.Clear;
  DataModule4.zkustomer.SQL.Add('select * from kustomer');
  DataModule4.zkustomer.Open;
  ShowMessage('Data Berhasil diHapus!');
end;

procedure TForm7.DBGrid1CellClick(Column: TColumn);
begin
  Edit2.Text:=DataModule4.zkustomer.Fields[1].AsString;
  Edit3.Text:=DataModule4.zkustomer.Fields[2].AsString;
  Edit4.Text:=DataModule4.zkustomer.Fields[3].AsString;
  Edit5.Text:=DataModule4.zkustomer.Fields[4].AsString;
  Edit6.Text:=DataModule4.zkustomer.Fields[5].AsString;
  a:=DataModule4.zkustomer.Fields[0].AsString;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
with DataModule4.zkustomer do
begin
  Close;
  SQL.Clear;
  SQL.Text :='select * from kustomer where name like'+QuotedStr('%'+edit7.Text+'%');
  Open;
end;
end;

end.
