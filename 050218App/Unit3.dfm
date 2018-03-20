object FORG: TFORG
  Left = 269
  Top = 149
  BorderStyle = bsDialog
  Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  ClientHeight = 384
  ClientWidth = 880
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
    Left = 24
    Top = 328
    Width = 18
    Height = 13
    Caption = 'INN'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 8
    Width = 833
    Height = 313
    DataSource = DM.DS_ORG
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_ORGANIZATION'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NAME_OF_ORGANIZATION'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
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
        FieldName = 'ID_RUBRIC'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_TOWN'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'INN'
        Title.Caption = #1048#1053#1053
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rubric'
        Title.Caption = #1056#1091#1073#1088#1080#1082#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'town'
        Title.Caption = #1043#1086#1088#1086#1076
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 352
    Top = 328
    Width = 240
    Height = 25
    DataSource = DM.DS_ORG
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 48
    Top = 328
    Width = 105
    Height = 21
    TabOrder = 2
    OnChange = Edit1Change
  end
end
