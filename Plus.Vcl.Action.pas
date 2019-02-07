unit Plus.Vcl.Action;

interface

uses
  System.Classes,
  System.SysUtils,
  Vcl.ActnList,
  System.Actions;

type
  TPlusAction = class (TAction)
  private
    FOnUpdateAn: TProc<TAction, TObject>;
    FOnExecuteAn: TProc<TAction, TObject>;
    procedure EventOnExecute (Sender: TObject);
    procedure EventOnUpdate (Sender: TObject);
    procedure SetOnExecuteAn(const Value: TProc<TAction, TObject>);
    procedure SetOnUpdateAn(const Value: TProc<TAction, TObject>);
  protected
  public
    constructor Create(AOwner: TComponent); override;
    property OnExecuteAn: TProc<TAction,TObject> read FOnExecuteAn write SetOnExecuteAn;
    property OnUpdateAn: TProc<TAction,TObject> read FOnUpdateAn write SetOnUpdateAn;
  end;

implementation

constructor TPlusAction.Create(AOwner: TComponent);
begin
  inherited;
  Self.OnExecute := EventOnExecute;
  Self.OnUpdate := EventOnUpdate;
end;

procedure TPlusAction.EventOnExecute(Sender: TObject);
begin
  if Assigned(OnExecuteAn) then
    OnExecuteAn(Self,Sender);
end;

procedure TPlusAction.EventOnUpdate(Sender: TObject);
begin
  if Assigned(OnUpdateAn) then
    OnUpdateAn(Self,Sender);
end;

procedure TPlusAction.SetOnExecuteAn(const Value: TProc<TAction, TObject>);
begin
  FOnExecuteAn := Value;
end;

procedure TPlusAction.SetOnUpdateAn(const Value: TProc<TAction, TObject>);
begin
  FOnUpdateAn := Value;
end;

end.
