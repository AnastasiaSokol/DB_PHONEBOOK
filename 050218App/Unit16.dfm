object FormChooseTownRubric: TFormChooseTownRubric
  Left = 419
  Top = 317
  Width = 336
  Height = 186
  Caption = #1042#1099#1073#1086#1088' '#1075#1086#1088#1086#1076#1072' '#1080' '#1088#1091#1073#1088#1080#1082#1080
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
    Left = 40
    Top = 8
    Width = 31
    Height = 13
    Caption = #1043#1086#1088#1086#1076
  end
  object Label2: TLabel
    Left = 40
    Top = 32
    Width = 37
    Height = 13
    Caption = #1057#1090#1088#1072#1085#1072
  end
  object Label3: TLabel
    Left = 40
    Top = 56
    Width = 42
    Height = 13
    Caption = #1056#1091#1073#1088#1080#1082#1072
  end
  object ComboBox1: TComboBox
    Left = 136
    Top = 8
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnChange = ComboBox1Change
  end
  object ComboBox2: TComboBox
    Left = 136
    Top = 32
    Width = 169
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 1
  end
  object ComboBox3: TComboBox
    Left = 136
    Top = 56
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object Button1: TButton
    Left = 24
    Top = 88
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 88
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
    OnClick = Button2Click
  end
end
