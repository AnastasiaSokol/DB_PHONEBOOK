object FormChooseTown: TFormChooseTown
  Left = 427
  Top = 193
  Width = 498
  Height = 142
  Caption = #1042#1099#1073#1086#1088' '#1075#1086#1088#1086#1076#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 31
    Height = 13
    Caption = #1043#1086#1088#1086#1076
  end
  object Label2: TLabel
    Left = 32
    Top = 40
    Width = 37
    Height = 13
    Caption = #1057#1090#1088#1072#1085#1072
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 16
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
  end
  object Button1: TButton
    Left = 32
    Top = 72
    Width = 75
    Height = 25
    Caption = #1054#1050
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 72
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
  object ComboBox2: TComboBox
    Left = 88
    Top = 40
    Width = 145
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 3
    Text = 'ComboBox2'
  end
end
