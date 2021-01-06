object Thread: TThread
  Left = 0
  Top = 0
  Caption = 'Thread'
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
  object Label1: TLabel
    Left = 48
    Top = 32
    Width = 75
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 256
    Top = 32
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 256
    Top = 51
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 256
    Top = 70
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object Normal: TButton
    Left = 48
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Normal'
    TabOrder = 0
    OnClick = NormalClick
  end
  object IFuture: TButton
    Left = 129
    Top = 64
    Width = 75
    Height = 25
    Caption = 'IFuture'
    TabOrder = 1
    OnClick = IFutureClick
  end
end
