unit Frame.FirstOne;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFrame1 = class(TFrame)
    Panel1: TPanel;
    Shape1: TShape;
    btnClose: TButton;
    GridPanel1: TGridPanel;
    Button1: TButton;
    Label1: TLabel;
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    ColorIndex: Integer;
    ColorArray: array of TColor;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

constructor TFrame1.Create(AOwner: TComponent);
begin
  inherited;
  ColorArray := [TColor($FEF2C0), TColor($93CE55), TColor($D876E3), $CC317C,
    $FF7619, $B4A8D1];
  Shape1.Brush.Color := ColorArray[ColorIndex];
  Panel1.Color := ColorArray[ColorIndex];
end;

procedure TFrame1.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ColorIndex := (ColorIndex + 1) mod Length(ColorArray);
  Shape1.Brush.Color := ColorArray[ColorIndex];
  Panel1.Color := ColorArray[ColorIndex];
end;

end.
