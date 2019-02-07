object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 346
  Height = 163
  TabOrder = 0
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 340
    Height = 118
    Align = alTop
    Caption = ' '
    TabOrder = 0
    ExplicitWidth = 314
    DesignSize = (
      340
      118)
    object Shape1: TShape
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 318
      Height = 35
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Align = alTop
      Brush.Color = clMoneyGreen
      Pen.Color = clGreen
      Pen.Width = 2
      Shape = stRoundRect
      OnMouseUp = Shape1MouseUp
      ExplicitWidth = 292
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 50
      Width = 332
      Height = 24
      Margins.Top = 6
      Align = alTop
      Alignment = taCenter
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      ExplicitTop = 68
      ExplicitWidth = 59
    end
    object btnClose: TButton
      Left = 109
      Top = 80
      Width = 129
      Height = 25
      Anchors = [akTop]
      Caption = 'btnClose'
      TabOrder = 0
      OnClick = btnCloseClick
      ExplicitLeft = 96
    end
  end
end
