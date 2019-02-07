unit Plus.Vcl.Frame;

interface

uses
  System.Classes,
  System.SysUtils,
  Vcl.AppEvnts,
  Vcl.Forms,
  Vcl.ExtCtrls;

type
  TPlusFrameComponent = class(TComponent)
  private
    FOnFrameClose: TProc<TFrame>;
    FOnFrameReady: TProc<TObject>;
    FOnFrameIdle: TProc<TObject>;
    FFirstTimeIdle: Boolean;
    FApplicationEvents: TApplicationEvents;
    FFrame: TFrame;
    FTimer: TTimer;
    procedure SetOnFrameClose(const Value: TProc<TFrame>);
    procedure SetOnFrameIdle(const Value: TProc<TObject>);
    procedure SetOnFrameReady(const Value: TProc<TObject>);
    procedure SetFrame(const Value: TFrame);
    procedure EventOnFrameIdle(Sender: TObject; var Done: Boolean);
    procedure EventOnTimerTick(Sender: TObject);
  public
    constructor Create(Owner: TComponent); override;
    procedure CloseFrame;
    property Frame: TFrame read FFrame write SetFrame;
    property OnFrameReady: TProc<TObject> read FOnFrameReady
      write SetOnFrameReady;
    property OnFrameIdle: TProc<TObject> read FOnFrameIdle write SetOnFrameIdle;
    property OnFrameClose: TProc<TFrame> read FOnFrameClose
      write SetOnFrameClose;
  end;

implementation

uses
  Vcl.Controls;

procedure TPlusFrameComponent.CloseFrame;
begin
  Frame.Visible := False;
  if Assigned(OnFrameClose) then
    OnFrameClose(Frame);
end;

constructor TPlusFrameComponent.Create(Owner: TComponent);
begin
  inherited;
  if (Owner = nil) or not(Owner is TFrame) then
    raise Exception.Create('Owner has to be TFrame');
  FFrame := Owner as TFrame;
  FFirstTimeIdle := True;

  FTimer := Vcl.ExtCtrls.TTimer.Create(Frame);
  FTimer.Interval := 60;
  FTimer.OnTimer := EventOnTimerTick;
end;

procedure TPlusFrameComponent.EventOnTimerTick(Sender: TObject);
var
  Control: TWinControl;
  Done: Boolean;
begin
  EventOnFrameIdle(Frame,Done);
  // TODO: Check whi it's not working
  // TApplicationEvents.OnIdle should be called ony when Windows messages
  // are dispatched
  {
  FTimer.Enabled := False;
  Control := Frame.Parent;
  while (Control<>nil) and not(Control is TForm) do
    Control := Control.Parent;
  if Control<>nil then
  begin
    FApplicationEvents := TApplicationEvents.Create(Control as TForm);
    FApplicationEvents.OnIdle := EventOnFrameIdle;
    FTimer.Free;
    FTimer := nil;
  end
  else
    FTimer.Enabled := True;
  }
end;

procedure TPlusFrameComponent.EventOnFrameIdle(Sender: TObject;
  var Done: Boolean);
begin
  try
    if FFirstTimeIdle then
      if Assigned(OnFrameReady) then
        OnFrameReady(Frame);
    if Assigned(OnFrameIdle) then
      OnFrameIdle(Frame);
  finally
    FFirstTimeIdle := False;
    Done := True;
  end;
end;

procedure TPlusFrameComponent.SetFrame(const Value: TFrame);
begin
  FFrame := Value;
end;

procedure TPlusFrameComponent.SetOnFrameClose(const Value: TProc<TFrame>);
begin
  FOnFrameClose := Value;
end;

procedure TPlusFrameComponent.SetOnFrameIdle(const Value: TProc<TObject>);
begin
  FOnFrameIdle := Value;
end;

procedure TPlusFrameComponent.SetOnFrameReady(const Value: TProc<TObject>);
begin
  FOnFrameReady := Value;
end;

end.
