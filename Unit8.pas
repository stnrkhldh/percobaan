unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm8 = class(TForm)
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
  Form8: TForm8;
  a:string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
  DataModule4.zuser.SQL.Clear;
  DataModule4.zuser.SQL.Add('insert into user values(null,"'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+Edit7.Text+'","'+Edit8.Text+'","'+Edit9.Text+'","'+Edit10.Text+'")');
  DataModule4.zuser.ExecSQL;

  DataModule4.zuser.SQL.Clear;
  DataModule4.zuser.SQL.Add('select * from user');
  DataModule4.zuser.Open;
  ShowMessage('Data Berhasil diSimpan!');
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  DataModule4.zuser.SQL.Clear;
  DataModule4.zuser.SQL.Add('update user set nik= "'+Edit2.Text+'", username="'+Edit3.Text+'", full_name="'+Edit4.Text+'", password="'+Edit5.Text+'", role="'+Edit6.Text+'", email="'+Edit7.Text+'", telp="'+Edit8.Text+'", alamat="'+Edit9.Text+'", is_active="'+Edit10.Text+'" where Id= "'+a+'"');
  DataModule4.zuser.ExecSQL;

  DataModule4.zuser.SQL.Clear;
  DataModule4.zuser.SQL.Add('select * from user');
  DataModule4.zuser.Open;
  ShowMessage('Data Berhasil diUpdate!');
end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
begin
  Edit2.Text:=DataModule4.zuser.Fields[1].AsString;
  Edit3.Text:=DataModule4.zuser.Fields[2].AsString;
  Edit4.Text:=DataModule4.zuser.Fields[3].AsString;
  Edit5.Text:=DataModule4.zuser.Fields[4].AsString;
  Edit6.Text:=DataModule4.zuser.Fields[5].AsString;
  Edit7.Text:=DataModule4.zuser.Fields[6].AsString;
  Edit8.Text:=DataModule4.zuser.Fields[7].AsString;
  Edit9.Text:=DataModule4.zuser.Fields[8].AsString;
  Edit10.Text:=DataModule4.zuser.Fields[9].AsString;
  a:=DataModule4.zuser.Fields[0].AsString;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
  DataModule4.zuser.SQL.Clear;
  DataModule4.zuser.SQL.Add('delete from user where id= "'+a+'"');
  DataModule4.zuser.ExecSQL;

  DataModule4.zuser.SQL.Clear;
  DataModule4.zuser.SQL.Add('select * from user');
  DataModule4.zuser.Open;
  ShowMessage('Data Berhasil diHapus!');
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
with DataModule4.zuser do
begin
  Close;
  SQL.Clear;
  SQL.Text :='select * from user where username like'+QuotedStr('%'+edit11.Text+'%');
  Open;
end;
end;

end.
