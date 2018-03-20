object FMain: TFMain
  Left = 178
  Top = 210
  Width = 486
  Height = 313
  Caption = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 120
    Top = 24
    object ables1: TMenuItem
      Caption = #1058#1072#1073#1083#1080#1094#1099
      object Organization1: TMenuItem
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        OnClick = Organization1Click
      end
      object Phonesoforganizations1: TMenuItem
        Caption = #1058#1077#1083#1077#1092#1086#1085#1099' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081
        OnClick = Phonesoforganizations1Click
      end
      object Persons1: TMenuItem
        Caption = #1060#1080#1079#1080#1095#1077#1089#1082#1080#1077' '#1083#1080#1094#1072
        OnClick = Persons1Click
      end
      object Phonesofpersons1: TMenuItem
        Caption = #1058#1077#1083#1077#1092#1086#1085#1099' '#1092#1080#1079#1080#1095#1077#1089#1082#1080#1093' '#1083#1080#1094
        OnClick = Phonesofpersons1Click
      end
      object Phonenumbers1: TMenuItem
        Caption = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1077' '#1085#1086#1084#1077#1088#1072
        OnClick = Phonenumbers1Click
      end
      object owns1: TMenuItem
        Caption = #1043#1086#1088#1086#1076#1072
        OnClick = owns1Click
      end
      object Rubrics1: TMenuItem
        Caption = #1056#1091#1073#1088#1080#1082#1080
        OnClick = Rubrics1Click
      end
    end
    object Documents1: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      object Phonenumbersoftowsorderbynameoftown1: TMenuItem
        Caption = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1077' '#1082#1086#1076#1099' '#1075#1086#1088#1086#1076#1086#1074', '#1086#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1087#1086' '#1072#1083#1092#1072#1074#1080#1090#1091
        OnClick = Phonenumbersoftowsorderbynameoftown1Click
      end
      object Phonenumbersofpersonsforselectedtownorderbysurname1: TMenuItem
        Caption = #1058#1077#1083#1077#1092#1086#1085#1099' '#1092#1080#1079#1080#1095#1077#1089#1082#1080#1093' '#1083#1080#1094' '#1075#1086#1088#1086#1076#1072', '#1086#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1087#1086' '#1092#1072#1084#1080#1083#1080#1080
        OnClick = Phonenumbersofpersonsforselectedtownorderbysurname1Click
      end
      object Phonenumbersoforganizationgroupbytownsandrubrics1: TMenuItem
        Caption = #1058#1077#1083#1077#1092#1086#1085#1099' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081', '#1089#1075#1088#1091#1087#1087#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1087#1086' '#1075#1086#1088#1086#1076#1072#1084' '#1080' '#1088#1091#1073#1088#1080#1082#1072#1084
        OnClick = Phonenumbersoforganizationgroupbytownsandrubrics1Click
      end
      object Phonenumberoforganizationsforselectedtownandrubric1: TMenuItem
        Caption = #1058#1077#1083#1077#1092#1086#1085#1099' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081' '#1075#1086#1088#1086#1076#1072' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1085#1086#1081' '#1088#1091#1073#1088#1080#1082#1080
        OnClick = Phonenumberoforganizationsforselectedtownandrubric1Click
      end
    end
    object DataBase1: TMenuItem
      Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
      object Connect1: TMenuItem
        Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077
        OnClick = Connect1Click
      end
    end
  end
end
