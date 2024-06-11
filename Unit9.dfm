object Form9: TForm9
  Left = 409
  Top = 121
  Width = 587
  Height = 449
  Caption = 'BARANG'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 48
    Height = 13
    Caption = 'BARCODE'
  end
  object Label3: TLabel
    Left = 16
    Top = 48
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object Label4: TLabel
    Left = 16
    Top = 80
    Width = 62
    Height = 13
    Caption = 'HARGA JUAL'
  end
  object Label5: TLabel
    Left = 16
    Top = 112
    Width = 59
    Height = 13
    Caption = 'HARGA BELI'
  end
  object Label6: TLabel
    Left = 16
    Top = 144
    Width = 26
    Height = 13
    Caption = 'STOK'
  end
  object Label7: TLabel
    Left = 16
    Top = 176
    Width = 65
    Height = 13
    Caption = 'KATEGORI ID'
  end
  object Label8: TLabel
    Left = 16
    Top = 208
    Width = 54
    Height = 13
    Caption = 'SATUAN ID'
  end
  object Label9: TLabel
    Left = 16
    Top = 240
    Width = 40
    Height = 13
    Caption = 'USER ID'
  end
  object Label10: TLabel
    Left = 16
    Top = 272
    Width = 61
    Height = 13
    Caption = 'SUPPLIER ID'
  end
  object Label11: TLabel
    Left = 224
    Top = 264
    Width = 56
    Height = 13
    Caption = 'CARI NAME'
  end
  object Edit2: TEdit
    Left = 80
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 80
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 80
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 80
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit6: TEdit
    Left = 80
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit7: TEdit
    Left = 80
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit8: TEdit
    Left = 80
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit9: TEdit
    Left = 80
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit10: TEdit
    Left = 80
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Button1: TButton
    Left = 48
    Top = 336
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 336
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 240
    Top = 336
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 11
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 224
    Top = 16
    Width = 320
    Height = 233
    DataSource = DataModule4.DataSource6
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit11: TEdit
    Left = 320
    Top = 264
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object Button4: TButton
    Left = 464
    Top = 264
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 14
    OnClick = Button4Click
  end
end
