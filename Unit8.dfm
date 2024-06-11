object Form8: TForm8
  Left = 123
  Top = 174
  Width = 597
  Height = 450
  Caption = 'USER'
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
    Left = 40
    Top = 16
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label3: TLabel
    Left = 24
    Top = 48
    Width = 54
    Height = 13
    Caption = 'USERNAME'
  end
  object Label4: TLabel
    Left = 24
    Top = 80
    Width = 54
    Height = 13
    Caption = 'FULL NAME'
  end
  object Label5: TLabel
    Left = 24
    Top = 112
    Width = 57
    Height = 13
    Caption = 'PASSWORD'
  end
  object Label6: TLabel
    Left = 40
    Top = 144
    Width = 26
    Height = 13
    Caption = 'ROLE'
  end
  object Label7: TLabel
    Left = 40
    Top = 176
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Label8: TLabel
    Left = 40
    Top = 208
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object Label9: TLabel
    Left = 32
    Top = 240
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label10: TLabel
    Left = 32
    Top = 272
    Width = 49
    Height = 13
    Caption = 'IS ACTIVE'
  end
  object Label11: TLabel
    Left = 248
    Top = 280
    Width = 82
    Height = 13
    Caption = 'CARI USERNAME'
  end
  object Edit2: TEdit
    Left = 88
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 88
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 88
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 88
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit6: TEdit
    Left = 88
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit7: TEdit
    Left = 88
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit8: TEdit
    Left = 88
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit9: TEdit
    Left = 88
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit10: TEdit
    Left = 88
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Button1: TButton
    Left = 24
    Top = 352
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 352
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 232
    Top = 352
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 11
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 240
    Top = 8
    Width = 320
    Height = 249
    DataSource = DataModule4.DataSource5
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit11: TEdit
    Left = 336
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object Button4: TButton
    Left = 480
    Top = 272
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 14
    OnClick = Button4Click
  end
end
