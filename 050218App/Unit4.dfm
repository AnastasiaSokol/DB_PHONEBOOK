object FormRubrics: TFormRubrics
  Left = 423
  Top = 195
  Width = 334
  Height = 313
  Caption = #1056#1091#1073#1088#1080#1082#1080
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
    Left = 16
    Top = 8
    Width = 281
    Height = 225
    BorderStyle = bsNone
    DataSource = DM.DS_RUBRICS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_RUBRIC'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NAME_OF_RUBRIC'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 240
    Width = 240
    Height = 25
    DataSource = DM.DS_RUBRICS
    TabOrder = 1
  end
end
