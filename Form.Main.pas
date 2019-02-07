unit Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Plus.Vcl.Action, System.Actions, Vcl.ActnList;

type
  TMyAction = class(TPlusAction)
  public
    constructor Create(AOwner: TComponent); override;
  end;

  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    ActionList1: TActionList;
    procedure FormCreate(Sender: TObject);
  private
    actMyAction: TMyAction;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  actMyAction := TMyAction.Create(Self);
  Button1.Action := actMyAction;
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

var
  FIdleCounter: integer;

constructor TMyAction.Create(AOwner: TComponent);
begin
  inherited;
  Caption := 'Moja super akcja';
  OnExecuteAn := procedure(Action: TAction; Sender: TObject)
    begin
      Caption := 'Klikniêto! (Idle counter='+FIdleCounter.ToString+')';
    end;
  OnUpdateAn := procedure(Action: TAction; Sender: TObject)
    begin
      inc(FIdleCounter)
    end
end;

end.
