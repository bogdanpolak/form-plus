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
  DesignSize = (
    630
    445)
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
  object Button1: TButton
    Left = 191
    Top = 8
    Width = 194
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
  end
  object GroupBox2: TGroupBox
    Left = 191
    Top = 39
    Width = 218
    Height = 547
    Anchors = [akLeft, akTop, akBottom]
    Caption = 'GroupBox2'
    TabOrder = 2
    object Button2: TButton
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 208
      Height = 25
      Align = alTop
      Caption = 'Button2'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
end
