object FDB_connect: TFDB_connect
  Left = 529
  Top = 182
  Width = 365
  Height = 314
  Caption = 'DB connect'
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
  object LabelDBName: TLabel
    Left = 32
    Top = 88
    Width = 65
    Height = 13
    Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
  end
  object LabelUser_name: TLabel
    Left = 32
    Top = 112
    Width = 66
    Height = 13
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083
  end
  object LabelPassword: TLabel
    Left = 32
    Top = 136
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Labellc_ctype: TLabel
    Left = 32
    Top = 160
    Width = 56
    Height = 13
    Caption = #1050#1086#1076#1080#1088#1086#1074#1082#1072
  end
  object LabelServer: TLabel
    Left = 32
    Top = 64
    Width = 37
    Height = 13
    Caption = #1057#1077#1088#1074#1077#1088
  end
  object Edit2: TEdit
    Left = 120
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 120
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 120
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 120
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit5'
  end
  object Button1: TButton
    Left = 32
    Top = 184
    Width = 121
    Height = 25
    Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
    TabOrder = 4
    OnClick = Button1Click
  end
  object Edit6: TEdit
    Left = 120
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit6'
  end
  object CheckBoxLoginPromt: TCheckBox
    Left = 32
    Top = 40
    Width = 161
    Height = 17
    Caption = #1047#1072#1087#1088#1072#1096#1080#1074#1072#1090#1100' '#1087#1072#1088#1086#1083#1100
    TabOrder = 6
  end
end
