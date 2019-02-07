unit Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.Actions,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ActnList, Frame.FirstOne;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
var
  grbx: TGroupBox;
begin
  grbx := TGroupBox.Create(GroupBox2);
  with grbx do
  begin
    Top := 9999;
    Align := alTop;
    AlignWithMargins := True;
    Caption := 'Grupa z ramk�';
    Parent := GroupBox2;
    Height := 180;
  end;
  with TFrame1.Create(grbx) do
  begin
    Align := alClient;
    AlignWithMargins := True;
    Parent := grbx;
    OnFrameClose := procedure(Frame: TFrame)
      begin
        Frame.Owner.Free;
      end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
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
  Caption := 'Klikni�to! (Idle counter='+FIdleCounter.ToString+')';
  end;
  OnUpdateAn := procedure(Action: TAction; Sender: TObject)
  begin
  inc(FIdleCounter)
  end
  end;
*)
// -------------------------------------------------------------------
// -------------------------------------------------------------------

// -------------------------------------------------------------------
// Sample: TActionGuiBuilder
// -------------------------------------------------------------------
(*
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
*)
// -------------------------------------------------------------------
// -------------------------------------------------------------------

end.
