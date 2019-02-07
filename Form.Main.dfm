object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 350
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    603
    350)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 177
    Height = 344
    Align = alLeft
    Caption = 'GroupBox1'
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitHeight = 219
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
    Height = 303
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
      ExplicitLeft = 72
      ExplicitTop = 136
      ExplicitWidth = 75
    end
  end
end
