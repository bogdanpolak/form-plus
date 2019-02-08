unit Frame.FirstOne;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Plus.Vcl.Frame;

type
  TFrame1 = class(TFrame)
    Panel1: TPanel;
    Shape1: TShape;
    btnClose: TButton;
    GridPanel1: TGridPanel;
    Button1: TButton;
    Label1: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    ColorIndex: Integer;
    ColorArray: array of TColor;
  public
    FramePlus: TPlusFrameExtention;
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

procedure TFrame1.btnCloseClick(Sender: TObject);
begin
  FramePlus.CloseFrame;
  Label1.Caption := '';
end;

constructor TFrame1.Create(AOwner: TComponent);
begin
  inherited;
  FramePlus := TPlusFrameExtention.Create(Self);
  ColorArray := [TColor($FEF2C0), TColor($93CE55), TColor($D876E3), $CC317C,
    $FF7619, $B4A8D1];
  Shape1.Brush.Color := ColorArray[ColorIndex];
  Panel1.Color := ColorArray[ColorIndex];
  FramePlus.OnFrameIdle := procedure(Sender: TObject)
    begin
      Button1.Tag := Button1.Tag + 1;
      Button1.Caption := Button1.Tag.ToString;
    end;
end;

procedure TFrame1.Shape1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ColorIndex := (ColorIndex + 1) mod Length(ColorArray);
  Shape1.Brush.Color := ColorArray[ColorIndex];
  Panel1.Color := ColorArray[ColorIndex];
end;

end.
