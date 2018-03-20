object FPERSONS: TFPERSONS
  Left = 364
  Top = 146
  Width = 928
  Height = 480
  Caption = #1060#1080#1079#1080#1095#1077#1089#1082#1080#1077' '#1083#1080#1094#1072
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
    Left = 272
    Top = 16
    Width = 31
    Height = 13
    Caption = #1043#1086#1088#1086#1076
  end
  object Label2: TLabel
    Left = 424
    Top = 16
    Width = 31
    Height = 13
    Caption = #1059#1083#1080#1094#1072
  end
  object Label3: TLabel
    Left = 576
    Top = 16
    Width = 20
    Height = 13
    Caption = #1044#1086#1084
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 112
    Width = 793
    Height = 257
    DataSource = DM.DS_PERSON
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PERSON'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'SERIAS_AND_NUMBER_PASSPORT'
        Title.Caption = #1057#1077#1088#1080#1103' '#1080' '#1085#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SURNAME'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = #1048#1084#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PATRONYMIC'
        Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STREET'
        Title.Caption = #1059#1083#1080#1094#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HOUSE'
        Title.Caption = #1044#1086#1084
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_TOWN'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'town'
        Title.Caption = #1043#1086#1088#1086#1076
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 224
    Top = 392
    Width = 240
    Height = 25
    DataSource = DM.DS_PERSON
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    Left = 48
    Top = 16
    Width = 217
    Height = 41
    Caption = #1041#1099#1089#1090#1088#1099#1081' '#1087#1086#1080#1089#1082' '#1087#1086':'
    TabOrder = 2
  end
  object RadioButton1: TRadioButton
    Left = 64
    Top = 32
    Width = 113
    Height = 17
    Caption = #1060#1072#1084#1080#1083#1080#1080
    TabOrder = 3
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 144
    Top = 32
    Width = 113
    Height = 17
    Caption = #1040#1076#1088#1077#1089#1091
    TabOrder = 4
    OnClick = RadioButton2Click
  end
  object Edit1: TEdit
    Left = 272
    Top = 36
    Width = 150
    Height = 21
    TabOrder = 5
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 424
    Top = 36
    Width = 150
    Height = 21
    TabOrder = 6
    OnChange = Edit2Change
  end
  object Edit3: TEdit
    Left = 576
    Top = 36
    Width = 65
    Height = 21
    TabOrder = 7
    OnChange = Edit3Change
  end
  object CheckBox1: TCheckBox
    Left = 48
    Top = 88
    Width = 225
    Height = 17
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1102
    TabOrder = 8
    OnClick = CheckBox1Click
  end
end
