unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
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
  Form6: TForm6;
  a:string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  DataModule4.zsupplier.SQL.Clear;
  DataModule4.zsupplier.SQL.Add('insert into supplier values(null,"'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+Edit7.Text+'","'+Edit8.Text+'","'+Edit9.Text+'","'+Edit10.Text+'")');
  DataModule4.zsupplier.ExecSQL;

  DataModule4.zsupplier.SQL.Clear;
  DataModule4.zsupplier.SQL.Add('select * from supplier');
  DataModule4.zsupplier.Open;
  ShowMessage('Data Berhasil diSimpan!');
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  DataModule4.zsupplier.SQL.Clear;
  DataModule4.zsupplier.SQL.Add('update supplier set nik= "'+Edit2.Text+'", name="'+Edit3.Text+'", telp="'+Edit4.Text+'", email="'+Edit5.Text+'", alamat="'+Edit6.Text+'", perusahaan="'+Edit7.Text+'", nama_bank="'+Edit8.Text+'", nama_akun_bank="'+Edit9.Text+'", no_akun_bank="'+Edit10.Text+'" where Id= "'+a+'"');
  DataModule4.zsupplier.ExecSQL;

  DataModule4.zsupplier.SQL.Clear;
  DataModule4.zsupplier.SQL.Add('select * from supplier');
  DataModule4.zsupplier.Open;
  ShowMessage('Data Berhasil diUpdate!');
end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
  Edit2.Text:=DataModule4.zsupplier.Fields[1].AsString;
  Edit3.Text:=DataModule4.zsupplier.Fields[2].AsString;
  Edit4.Text:=DataModule4.zsupplier.Fields[3].AsString;
  Edit5.Text:=DataModule4.zsupplier.Fields[4].AsString;
  Edit6.Text:=DataModule4.zsupplier.Fields[5].AsString;
  Edit7.Text:=DataModule4.zsupplier.Fields[6].AsString;
  Edit8.Text:=DataModule4.zsupplier.Fields[7].AsString;
  Edit9.Text:=DataModule4.zsupplier.Fields[8].AsString;
  Edit10.Text:=DataModule4.zsupplier.Fields[9].AsString;
  a:=DataModule4.zsupplier.Fields[0].AsString;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  DataModule4.zsupplier.SQL.Clear;
  DataModule4.zsupplier.SQL.Add('delete from supplier where id= "'+a+'"');
  DataModule4.zsupplier.ExecSQL;

  DataModule4.zsupplier.SQL.Clear;
  DataModule4.zsupplier.SQL.Add('select * from supplier');
  DataModule4.zsupplier.Open;
  ShowMessage('Data Berhasil diHapus!');
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
with DataModule4.zsupplier do
begin
  Close;
  SQL.Clear;
  SQL.Text :='select * from supplier where name like'+QuotedStr('%'+edit11.Text+'%');
  Open;
end;
end;

end.
