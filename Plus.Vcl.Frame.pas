unit Plus.Vcl.Frame;

interface

uses
  System.Classes,
  System.SysUtils,
  Vcl.AppEvnts,
  Vcl.Forms;

type
  TPlusFrame = class(TFrame)
  private
    FOnFrameClose: TProc<TFrame>;
    FOnFrameReady: TProc<TObject>;
    FOnFrameIdle: TProc<TObject>;
    FFirstTimeIdle: Boolean;
    FApplicationEvents: TApplicationEvents;
    procedure SetOnFrameClose(const Value: TProc<TFrame>);
    procedure SetOnFrameIdle(const Value: TProc<TObject>);
    procedure SetOnFrameReady(const Value: TProc<TObject>);
    procedure EventOnFrameIdle(Sender: TObject; var Done: Boolean);
  protected
    procedure CloseFrame;
  public
    constructor Create (Owner: TComponent); override;
    property OnFrameReady: TProc<TObject> read FOnFrameReady write SetOnFrameReady;
    property OnFrameIdle: TProc<TObject> read FOnFrameIdle write SetOnFrameIdle;
    property OnFrameClose: TProc<TFrame> read FOnFrameClose
      write SetOnFrameClose;
  end;

implementation

procedure TPlusFrame.CloseFrame;
begin
  Visible := False;
  if Assigned(OnFrameClose) then
    OnFrameClose(Self);
end;

constructor TPlusFrame.Create(Owner: TComponent);
begin
  inherited;
  FFirstTimeIdle := True;
  FApplicationEvents := TApplicationEvents.Create(Self);
  FApplicationEvents.OnIdle := EventOnFrameIdle;
end;

procedure TPlusFrame.EventOnFrameIdle(Sender: TObject; var Done: Boolean);
begin
  try
    if FFirstTimeIdle then
      if Assigned(OnFrameReady) then
        OnFrameReady(Self);
    if Assigned(OnFrameIdle) then
      OnFrameIdle(Self);
  finally
    FFirstTimeIdle := False;
    Done := True;
  end;
end;

procedure TPlusFrame.SetOnFrameClose(const Value: TProc<TFrame>);
begin
  FOnFrameClose := Value;
end;

procedure TPlusFrame.SetOnFrameIdle(const Value: TProc<TObject>);
begin
  FOnFrameIdle := Value;
end;

procedure TPlusFrame.SetOnFrameReady(const Value: TProc<TObject>);
begin
  FOnFrameReady := Value;
end;

end.
