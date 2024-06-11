object Form5: TForm5
  Left = 137
  Top = 202
  Width = 485
  Height = 450
  Caption = 'SATUAN'
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
    Left = 80
    Top = 40
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label3: TLabel
    Left = 80
    Top = 72
    Width = 52
    Height = 13
    Caption = 'DESKRIPSI'
  end
  object Label4: TLabel
    Left = 72
    Top = 304
    Width = 56
    Height = 13
    Caption = 'CARI NAME'
  end
  object Edit2: TEdit
    Left = 136
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 104
    Top = 112
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 112
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 312
    Top = 112
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit3: TEdit
    Left = 136
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 88
    Top = 160
    Width = 320
    Height = 120
    DataSource = DataModule4.DataSource2
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit4: TEdit
    Left = 144
    Top = 304
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Button4: TButton
    Left = 312
    Top = 296
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 7
    OnClick = Button4Click
  end
end
