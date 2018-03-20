object FormEditRubrics: TFormEditRubrics
  Left = 321
  Top = 158
  Width = 928
  Height = 480
  Caption = 'Edit Rubrics'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 24
    Width = 101
    Height = 13
    Caption = 'Nomination of rubrics'
  end
  object ButtonOK: TButton
    Left = 96
    Top = 72
    Width = 105
    Height = 25
    Caption = 'Ok'
    TabOrder = 0
    OnClick = ButtonOKClick
  end
  object DBEditNameOfRubric: TDBEdit
    Left = 200
    Top = 24
    Width = 121
    Height = 21
    DataField = 'NAME_OF_RUBRIC'
    DataSource = DM.DS_RUBRICS
    TabOrder = 1
  end
end
