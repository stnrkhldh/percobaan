object Form6: TForm6
  Left = 131
  Top = 141
  Width = 647
  Height = 450
  Caption = 'SUPPLIER'
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
    Top = 56
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label3: TLabel
    Left = 40
    Top = 88
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object Label4: TLabel
    Left = 40
    Top = 120
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object Label5: TLabel
    Left = 40
    Top = 152
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Label6: TLabel
    Left = 40
    Top = 184
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label7: TLabel
    Left = 40
    Top = 208
    Width = 67
    Height = 13
    Caption = 'PERUSAHAAN'
  end
  object Label8: TLabel
    Left = 40
    Top = 240
    Width = 58
    Height = 13
    Caption = 'NAMA BANK'
  end
  object Label9: TLabel
    Left = 40
    Top = 272
    Width = 88
    Height = 13
    Caption = 'NAMA AKUN BANK'
  end
  object Label10: TLabel
    Left = 40
    Top = 304
    Width = 74
    Height = 13
    Caption = 'NO AKUN BANK'
  end
  object Label11: TLabel
    Left = 280
    Top = 296
    Width = 56
    Height = 13
    Caption = 'CARI NAME'
  end
  object Edit2: TEdit
    Left = 136
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 136
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 136
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 136
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit6: TEdit
    Left = 136
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit7: TEdit
    Left = 136
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit8: TEdit
    Left = 136
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit9: TEdit
    Left = 136
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit10: TEdit
    Left = 136
    Top = 304
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Button1: TButton
    Left = 80
    Top = 360
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 360
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 320
    Top = 360
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 11
    OnClick = Button3Click
  end
  object DBGrid1: TDBGrid
    Left = 296
    Top = 8
    Width = 313
    Height = 257
    DataSource = DataModule4.DataSource3
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit11: TEdit
    Left = 368
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object Button4: TButton
    Left = 512
    Top = 288
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 14
    OnClick = Button4Click
  end
end
