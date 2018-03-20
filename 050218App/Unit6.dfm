object FPHONES: TFPHONES
  Left = 282
  Top = 196
  Width = 479
  Height = 373
  Caption = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1077' '#1085#1086#1084#1077#1088#1072
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
    Left = 32
    Top = 24
    Width = 401
    Height = 257
    DataSource = DM.DS_PHONES
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_NUMBER'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PHONE_NUMBER'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MINUTES'
        Title.Caption = #1052#1080#1085#1091#1090#1099
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TARIV'
        Title.Caption = #1058#1072#1088#1080#1092
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAY'
        Title.Caption = #1054#1087#1083#1072#1090#1072
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 152
    Top = 288
    Width = 240
    Height = 25
    DataSource = DM.DS_PHONES
    TabOrder = 1
  end
end
