object FPHONES_OF_ORG: TFPHONES_OF_ORG
  Left = 205
  Top = 224
  Width = 1067
  Height = 461
  Caption = #1058#1077#1083#1077#1092#1086#1085#1099' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081
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
    Width = 94
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1053#1072#1079#1074#1072#1085#1080#1077
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 88
    Width = 1001
    Height = 265
    DataSource = DM.DS_ORG_PHONES
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_NUMBER_OF_ORG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_ORGANIZATION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_NUMBER'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPARTMENT_NAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'org_name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'number'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'inn'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 360
    Width = 240
    Height = 25
    DataSource = DM.DS_ORG_PHONES
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
    Caption = #1053#1072#1079#1074#1072#1085#1080#1102
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
