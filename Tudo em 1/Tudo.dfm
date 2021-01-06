object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Boi'
  ClientHeight = 196
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Main: TPanel
    Left = 0
    Top = 0
    Width = 441
    Height = 196
    Align = alClient
    AutoSize = True
    Caption = 'Main'
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 0
      Width = 23
      Height = 13
      Caption = 'Hora'
    end
    object DialogButton: TButton
      Left = 0
      Top = 155
      Width = 75
      Height = 25
      Caption = 'Dialog'
      TabOrder = 0
      OnClick = DialogButtonClick
    end
    object Button3: TButton
      Left = 243
      Top = 155
      Width = 94
      Height = 25
      Caption = 'Sobre formata'#231#227'o'
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 343
      Top = 155
      Width = 75
      Height = 25
      Caption = 'If else'
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 343
      Top = 124
      Width = 75
      Height = 25
      Caption = 'Try'
      TabOrder = 3
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 243
      Top = 124
      Width = 94
      Height = 25
      Caption = 'Case'
      TabOrder = 4
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 162
      Top = 124
      Width = 75
      Height = 25
      Caption = 'For'
      TabOrder = 5
      OnClick = Button7Click
    end
    object BtWhile: TButton
      Left = 81
      Top = 124
      Width = 75
      Height = 25
      Caption = 'While'
      TabOrder = 6
      OnClick = BtWhileClick
    end
    object Button1: TButton
      Left = 81
      Top = 155
      Width = 75
      Height = 25
      Caption = 'Formatar'
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 162
      Top = 155
      Width = 75
      Height = 25
      Caption = 'Data'
      TabOrder = 8
      OnClick = Button2Click
    end
    object Button8: TButton
      Left = 0
      Top = 124
      Width = 75
      Height = 25
      Caption = 'Repeat'
      TabOrder = 9
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 0
      Top = 93
      Width = 75
      Height = 25
      Caption = 'Button9'
      TabOrder = 10
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 81
      Top = 93
      Width = 75
      Height = 25
      Caption = 'Button10'
      TabOrder = 11
      OnClick = Button10Click
    end
    object BtThread: TButton
      Left = 162
      Top = 93
      Width = 75
      Height = 25
      Caption = 'Thread'
      TabOrder = 12
      OnClick = BtThreadClick
    end
  end
  object MainMenu1: TMainMenu
    Left = 376
    object Inicio1: TMenuItem
      Caption = 'Inicio'
      object teste1: TMenuItem
        Caption = 'teste'
        object teste2: TMenuItem
          Caption = 'teste'
        end
        object N1: TMenuItem
          Caption = '-'
        end
      end
      object N2: TMenuItem
        Caption = '-'
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 408
  end
end
