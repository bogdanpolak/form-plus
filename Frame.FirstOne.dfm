object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 314
    Height = 110
    Align = alTop
    Caption = ' '
    TabOrder = 0
    DesignSize = (
      314
      110)
    object Shape1: TShape
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 292
      Height = 35
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Align = alTop
      Brush.Color = clMoneyGreen
      Pen.Color = clMedGray
      Pen.Width = 2
      Shape = stRoundRect
      OnMouseUp = Shape1MouseUp
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 50
      Width = 306
      Height = 19
      Margins.Top = 6
      Align = alTop
      Alignment = taCenter
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 46
    end
    object btnClose: TButton
      Left = 96
      Top = 75
      Width = 129
      Height = 25
      Anchors = [akTop]
      Caption = 'btnClose'
      TabOrder = 0
      OnClick = btnCloseClick
    end
  end
end
