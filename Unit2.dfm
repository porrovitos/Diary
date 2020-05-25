object Login_window: TLogin_window
  Left = 1188
  Top = 134
  Width = 219
  Height = 257
  BorderIcons = []
  Caption = #1042#1093#1086#1076
  Color = clMoneyGreen
  Constraints.MaxHeight = 257
  Constraints.MaxWidth = 219
  Constraints.MinHeight = 257
  Constraints.MinWidth = 219
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Username_label: TLabel
    Left = 8
    Top = 24
    Width = 185
    Height = 25
    Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Password_label: TLabel
    Left = 8
    Top = 72
    Width = 74
    Height = 25
    Caption = #1055#1072#1088#1086#1083#1100':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Error_label: TLabel
    Left = 8
    Top = 184
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Login_btn: TButton
    Left = 8
    Top = 120
    Width = 92
    Height = 49
    Caption = #1042#1086#1081#1090#1080
    TabOrder = 0
    OnClick = Login_btnClick
  end
  object Username_edit: TEdit
    Left = 8
    Top = 48
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object Password_edit: TEdit
    Left = 8
    Top = 96
    Width = 185
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object Return_btn: TButton
    Left = 104
    Top = 120
    Width = 92
    Height = 49
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 3
    OnClick = Return_btnClick
  end
  object Exit_btn: TButton
    Left = 144
    Top = 8
    Width = 49
    Height = 17
    Caption = 'X'
    TabOrder = 4
    OnClick = Exit_btnClick
  end
end
