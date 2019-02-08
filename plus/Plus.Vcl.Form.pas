unit Plus.Vcl.Form;

interface

uses
  System.Classes,
  System.SysUtils,
  Vcl.ExtCtrls,
  Vcl.AppEvnts,
  Vcl.Forms;

type
  TFormPlus = class(TForm)
  private
    FFirstTimeIdle: boolean;
    FApplicationEvents: Vcl.AppEvnts.TApplicationEvents;
    FOnFormReady: TProc<TObject>;
    FOnFormIdle: TProc<TObject>;
    procedure OnApplicationIdle(Sender: TObject; var Done: Boolean);
    procedure SetOnFormIdle(const Value: TProc<TObject>);
    procedure SetOnFormReady(const Value: TProc<TObject>);
  public
    constructor Create (Owner: TComponent); override;
    property OnFormReady: TProc<TObject> read FOnFormReady write SetOnFormReady;
    property OnFormIdle: TProc<TObject> read FOnFormIdle write SetOnFormIdle;
  end;

implementation


constructor TFormPlus.Create(Owner: TComponent);
begin
  inherited;
  FFirstTimeIdle := True;
  FApplicationEvents := TApplicationEvents.Create(Self);
  FApplicationEvents.OnIdle := OnApplicationIdle;
end;

procedure TFormPlus.OnApplicationIdle(Sender: TObject; var Done: Boolean);
begin
  try
    if FFirstTimeIdle then
      if Assigned(OnFormReady) then
        OnFormReady(Self);
    if Assigned(OnFormIdle) then
      OnFormIdle(Self);
  finally
    FFirstTimeIdle := False;
    Done := True;
  end;
end;

procedure TFormPlus.SetOnFormIdle(const Value: TProc<TObject>);
begin
  FOnFormIdle := Value;
end;

procedure TFormPlus.SetOnFormReady(const Value: TProc<TObject>);
begin
  FOnFormReady := Value;
end;

end.
