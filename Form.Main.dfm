object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 445
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 177
    Height = 439
    Align = alLeft
    Caption = 'GroupBox1'
    TabOrder = 0
  end
  object btnRunTimer: TButton
    Left = 200
    Top = 8
    Width = 153
    Height = 25
    Caption = 'btnRunTimer'
    TabOrder = 1
    OnClick = btnRunTimerClick
  end
  object btnOnceRunTimer: TButton
    Left = 200
    Top = 39
    Width = 153
    Height = 25
    Caption = 'btnOnceRunTimer'
    TabOrder = 2
    OnClick = btnOnceRunTimerClick
  end
end
