object Home: THome
  Left = 315
  Top = 175
  Width = 1058
  Height = 712
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Home'
  Color = clGradientActiveCaption
  Constraints.MinHeight = 712
  Constraints.MinWidth = 1058
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
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
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 1000
    Top = 8
    Width = 35
    Height = 25
    Caption = 'X'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 960
    Top = 512
    Width = 73
    Height = 81
    Caption = 'Button3'
    TabOrder = 2
    OnClick = Button3Click
  end
  object ListBox1: TListBox
    Left = 64
    Top = 32
    Width = 313
    Height = 433
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 25
    ParentFont = False
    TabOrder = 3
  end
end
