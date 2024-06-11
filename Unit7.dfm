object Form7: TForm7
  Left = 186
  Top = 184
  Width = 445
  Height = 450
  Caption = 'KUSTOMER'
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
    Left = 56
    Top = 48
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label3: TLabel
    Left = 56
    Top = 72
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object Label4: TLabel
    Left = 56
    Top = 96
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object Label5: TLabel
    Left = 56
    Top = 120
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Label6: TLabel
    Left = 56
    Top = 144
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label7: TLabel
    Left = 64
    Top = 368
    Width = 56
    Height = 13
    Caption = 'CARI NAME'
  end
  object Edit2: TEdit
    Left = 112
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 112
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 112
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 112
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 48
    Top = 184
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 184
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 240
    Top = 184
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 6
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 232
    Width = 320
    Height = 120
    DataSource = DataModule4.DataSource4
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit7: TEdit
    Left = 128
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Button4: TButton
    Left = 272
    Top = 360
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Edit6: TEdit
    Left = 112
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 10
  end
end
