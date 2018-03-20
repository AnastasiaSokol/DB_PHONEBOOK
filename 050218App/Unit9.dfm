object FPHONE_OF_PERSONS: TFPHONE_OF_PERSONS
  Left = 308
  Top = 141
  Width = 824
  Height = 479
  Caption = #1058#1077#1083#1077#1092#1086#1085#1099' '#1092#1080#1079#1080#1095#1077#1089#1082#1080#1093' '#1083#1080#1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 264
    Top = 16
    Width = 93
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102
  end
  object DBGrid1: TDBGrid
    Left = 20
    Top = 96
    Width = 769
    Height = 257
    DataSource = DM.DS_PERSON_PHONES
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_NUMBER_OF_PERSON'
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_PERSON'
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_NUMBER'
        Width = -1
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PHONE_ASSIGNMENT'
        PickList.Strings = (
          #1057#1086#1090#1086#1074#1099#1081
          #1044#1086#1084#1072#1096#1085#1080#1081
          #1056#1072#1073#1086#1095#1080#1081)
        Title.Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1077
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'person_name'
        Title.Caption = #1048#1084#1103
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'person_surname'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'person_patronymic'
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'number'
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 150
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 288
    Top = 376
    Width = 240
    Height = 25
    DataSource = DM.DS_PERSON_PHONES
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    Left = 24
    Top = 16
    Width = 217
    Height = 41
    Caption = #1041#1099#1089#1090#1088#1099#1081' '#1087#1086#1080#1089#1082' '#1087#1086':'
    TabOrder = 2
  end
  object RadioButton1: TRadioButton
    Left = 40
    Top = 32
    Width = 113
    Height = 17
    Caption = #1060#1072#1084#1080#1083#1080#1080
    TabOrder = 3
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 120
    Top = 32
    Width = 113
    Height = 17
    Caption = #1058#1077#1083#1077#1092#1086#1085#1091
    TabOrder = 4
    OnClick = RadioButton2Click
  end
  object Edit1: TEdit
    Left = 264
    Top = 36
    Width = 150
    Height = 21
    TabOrder = 5
    OnChange = Edit1Change
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 64
    Width = 161
    Height = 17
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1102
    TabOrder = 6
    OnClick = CheckBox1Click
  end
end
