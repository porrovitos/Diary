object Diary_Edit_window: TDiary_Edit_window
  Left = 336
  Top = 239
  Width = 1302
  Height = 675
  BorderIcons = []
  Caption = #1044#1085#1077#1074#1085#1080#1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Text_label: TLabel
    Left = 8
    Top = 48
    Width = 1265
    Height = 465
    Constraints.MaxHeight = 465
    Constraints.MaxWidth = 1265
    Constraints.MinHeight = 465
    Constraints.MinWidth = 1265
    WordWrap = True
  end
  object Write_richedit: TRichEdit
    Left = 8
    Top = 512
    Width = 1265
    Height = 89
    Constraints.MaxHeight = 89
    Constraints.MaxWidth = 1265
    Constraints.MinHeight = 89
    Constraints.MinWidth = 1265
    ScrollBars = ssVertical
    TabOrder = 0
    Visible = False
  end
  object Save_btn: TButton
    Left = 1200
    Top = 608
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Save_btnClick
  end
  object Close_btn: TButton
    Left = 1224
    Top = 8
    Width = 49
    Height = 17
    Caption = 'X'
    Constraints.MaxHeight = 17
    Constraints.MaxWidth = 49
    Constraints.MinHeight = 17
    Constraints.MinWidth = 49
    TabOrder = 2
    OnClick = Close_btnClick
  end
  object Edit_btn: TButton
    Left = 1200
    Top = 512
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Edit_btnClick
  end
  object Back_btn: TButton
    Left = 1168
    Top = 8
    Width = 49
    Height = 17
    Caption = '<<'
    TabOrder = 4
    OnClick = Back_btnClick
  end
end
