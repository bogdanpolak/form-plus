unit Frame.FirstOne;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Plus.Vcl.Frame;

type
  TFrame = Plus.Vcl.Frame.TPlusFrame;

  TFrame1 = class(TFrame)
    Panel1: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    btnClose: TButton;
    procedure btnCloseClick(Sender: TObject);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton; Shift:
        TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame1.btnCloseClick(Sender: TObject);
begin
  // CloseFrame;
end;

procedure TFrame1.Shape1MouseUp(Sender: TObject; Button: TMouseButton; Shift:
    TShiftState; X, Y: Integer);
begin
  Label1.Tag := Label1.Tag + 1;
  Label1.Caption := Label1.Tag.ToString;
end;

end.
