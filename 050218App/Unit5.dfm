object FTOWNS: TFTOWNS
  Left = 188
  Top = 146
  Width = 928
  Height = 480
  Caption = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1077' '#1082#1086#1076#1099' '#1075#1086#1088#1086#1076#1086#1074
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
  object DBGrid1: TDBGrid
    Left = 96
    Top = 24
    Width = 737
    Height = 337
    DataSource = DM.DS_TOWN
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_TOWN'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TOWN_NAME'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_NUMBER'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'COUNTRY'
        Title.Caption = #1057#1090#1088#1072#1085#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'number'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 168
    Top = 368
    Width = 240
    Height = 25
    DataSource = DM.DS_TOWN
    TabOrder = 1
  end
end
