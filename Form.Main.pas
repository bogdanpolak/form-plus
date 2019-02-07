unit Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.Actions,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ActnList, Plus.Vcl.ActionGuiBuilder, Plus.Vcl.Action;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ActionGuiBuilder: TActionGuiBuilder;
    actAction10: TPlusAction;
    actAction11: TPlusAction;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Action1Execute(Sender: TObject);
begin
  Caption := 'Action 1 Executed';
end;

procedure TForm1.Action2Execute(Sender: TObject);
begin
  Caption := 'Action 2 Executed';
end;

procedure TForm1.Action3Execute(Sender: TObject);
begin
  Caption := 'Action 3 Executed';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // x
  ActionGuiBuilder := TActionGuiBuilder.Create(Self);
  ActionGuiBuilder.AddActions(ActionList1);
  actAction10 := TPlusAction.Create(Self);
  actAction10.Caption := '* Action 10 *';
  actAction10.OnExecuteAn := procedure(Action: TAction; Sender: TObject)
    begin
      Self.Caption := 'Action 10 Executed';
    end;
  actAction11 := TPlusAction.Create(Self);
  actAction11.Caption := '* Action 11 *';
  actAction11.OnExecuteAn := procedure(Action: TAction; Sender: TObject)
    begin
      Self.Caption := 'Action 11 Executed';
    end;
  ActionGuiBuilder.AddActions([actAction10,actAction11]);
  ActionGuiBuilder.BuildButtons(GroupBox1);
end;

// -------------------------------------------------------------------
// -------------------------------------------------------------------
// Sample: OnFormReady, OnFormIdle
// -------------------------------------------------------------------
(*
  OnFormReady := procedure(Sender: TObject)
  begin
  with TButton.Create(Self) do
  begin
  AlignWithMargins := True;
  Align := alTop;
  Caption := 'Button Jeden';
  Parent := GroupBox1;
  end;
  end;
  OnFormIdle := procedure(Sender: TObject)
  var
  btn: TButton;
  begin
  if GroupBox1.ControlCount > 0 then
  begin
  btn := (GroupBox1.Controls[0] as TButton);
  btn.Tag := btn.Tag + 1;
  btn.Caption := btn.Tag.ToString;
  end;
  end;
*)


// -------------------------------------------------------------------
// Sample: TMyAction
// -------------------------------------------------------------------
(*
  type
  TMyAction = class(TPlusAction)
  public
  constructor Create(AOwner: TComponent); override;
  end;

  var
  FIdleCounter: integer;

  constructor TMyAction.Create(AOwner: TComponent);
  begin
  inherited;
  Caption := 'Moja super akcja';
  OnExecuteAn := procedure(Action: TAction; Sender: TObject)
  begin
  Caption := 'KlikniÍto! (Idle counter='+FIdleCounter.ToString+')';
  end;
  OnUpdateAn := procedure(Action: TAction; Sender: TObject)
  begin
  inc(FIdleCounter)
  end
  end;
*)
// -------------------------------------------------------------------
// -------------------------------------------------------------------

end.
