object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 157
  Top = 50
  Height = 393
  Width = 314
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\New folder\libmysql.dll'
    Left = 40
    Top = 16
  end
  object zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 120
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = zkategori
    Left = 200
    Top = 16
  end
  object zsatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select*from satuan')
    Params = <>
    Left = 120
    Top = 72
  end
  object DataSource2: TDataSource
    DataSet = zsatuan
    Left = 200
    Top = 72
  end
  object zsupplier: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select*from supplier')
    Params = <>
    Left = 120
    Top = 128
  end
  object DataSource3: TDataSource
    DataSet = zsupplier
    Left = 200
    Top = 128
  end
  object zkustomer: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select*from kustomer')
    Params = <>
    Left = 120
    Top = 184
  end
  object zuser: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select *from user')
    Params = <>
    Left = 120
    Top = 240
  end
  object zbarang: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select *from barang')
    Params = <>
    Left = 120
    Top = 296
  end
  object DataSource4: TDataSource
    DataSet = zkustomer
    Left = 200
    Top = 184
  end
  object DataSource5: TDataSource
    DataSet = zuser
    Left = 200
    Top = 240
  end
  object DataSource6: TDataSource
    DataSet = zbarang
    Left = 200
    Top = 296
  end
end
