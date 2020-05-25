object Home_window: THome_window
  Left = 507
  Top = 283
  Width = 1058
  Height = 720
  BorderIcons = [biMinimize, biMaximize]
  Caption = #1043#1083#1072#1074#1085#1072#1103
  Color = clGradientActiveCaption
  Constraints.MinHeight = 712
  Constraints.MinWidth = 1058
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Error_label: TLabel
    Left = 560
    Top = 632
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object New_Record_btn: TButton
    Left = 960
    Top = 592
    Width = 75
    Height = 75
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -80
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = New_Record_btnClick
  end
  object Exit_btn: TButton
    Left = 1000
    Top = 8
    Width = 35
    Height = 25
    Caption = 'X'
    TabOrder = 1
    OnClick = Exit_btnClick
  end
  object Control_Panel_btn: TButton
    Left = 960
    Top = 512
    Width = 75
    Height = 75
    Caption = 'Control_Panel_btn'
    TabOrder = 2
  end
  object List_of_Notes_listbox: TListBox
    Left = 8
    Top = 8
    Width = 545
    Height = 657
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 25
    ParentFont = False
    TabOrder = 3
    OnClick = List_of_Notes_listboxClick
  end
end
