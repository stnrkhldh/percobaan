unit Unit4;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TDataModule4 = class(TDataModule)
    ZConnection1: TZConnection;
    zkategori: TZQuery;
    DataSource1: TDataSource;
    zsatuan: TZQuery;
    DataSource2: TDataSource;
    zsupplier: TZQuery;
    DataSource3: TDataSource;
    zkustomer: TZQuery;
    zuser: TZQuery;
    zbarang: TZQuery;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule4: TDataModule4;

implementation

{$R *.dfm}

end.
