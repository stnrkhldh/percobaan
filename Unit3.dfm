object Form3: TForm3
  Left = 675
  Top = 137
  Width = 473
  Height = 450
  Caption = 'KATEGORI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 24
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label2: TLabel
    Left = 72
    Top = 296
    Width = 56
    Height = 13
    Caption = 'CARI NAME'
  end
  object Edit1: TEdit
    Left = 160
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 72
    Top = 88
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 88
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 320
    Top = 88
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 144
    Width = 320
    Height = 120
    DataSource = DataModule4.DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit2: TEdit
    Left = 176
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Button4: TButton
    Left = 320
    Top = 288
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
    OnClick = Button4Click
  end
end
