object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 268
  Height = 130
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
    Width = 262
    Height = 94
    Align = alTop
    Caption = ' '
    TabOrder = 0
    object Shape1: TShape
      AlignWithMargins = True
      Left = 11
      Top = 6
      Width = 240
      Height = 32
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 0
      Align = alTop
      Brush.Color = clMoneyGreen
      Pen.Color = clMedGray
      Pen.Width = 2
      OnMouseUp = Shape1MouseUp
      ExplicitWidth = 292
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 38
      Width = 254
      Height = 13
      Margins.Top = 0
      Align = alTop
      Alignment = taCenter
      Caption = 'Click on the ractangle'
      ExplicitWidth = 103
    end
    object GridPanel1: TGridPanel
      Left = 1
      Top = 54
      Width = 260
      Height = 33
      Align = alTop
      BevelOuter = bvNone
      Caption = ' '
      ColumnCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = btnClose
          Row = 0
        end
        item
          Column = 1
          Control = Button1
          Row = 0
        end>
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 0
      object btnClose: TButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 124
        Height = 27
        Align = alClient
        Caption = 'btnClose'
        TabOrder = 0
      end
      object Button1: TButton
        AlignWithMargins = True
        Left = 133
        Top = 3
        Width = 124
        Height = 27
        Align = alClient
        Caption = 'Button1'
        TabOrder = 1
      end
    end
  end
end
