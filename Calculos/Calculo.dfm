object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 8
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 70
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 135
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button2: TButton
    Left = 89
    Top = 70
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 4
    OnClick = Button2Click
  end
end
