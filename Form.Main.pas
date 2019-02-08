unit Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.Actions,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ActnList,  Vcl.ComCtrls,
  Frame.FirstOne;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

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
// -------------------------------------------------------------------
// Sample: TTimerPlus
// -------------------------------------------------------------------
(*
  // btnOnceRunTimer:
  TPlusTimer.RunOnce(Self, 2000,
  procedure
  begin
  btnOnceRunTimer.Caption := 'Pierwsze wywy³anie';
  TPlusTimer.RunOnce(Self, 2000,
  procedure
  begin
  btnOnceRunTimer.Caption := 'Drugie wywy³anie';
  TPlusTimer.RunOnce(Self, 2000,
  procedure
  begin
  btnOnceRunTimer.Caption := 'Koniec ...'
  end);
  end);
  end);
  // btnRunTimer:
  TPlusTimer.Run(Self, 200,
  procedure
  begin
  btnRunTimer.Tag := btnRunTimer.Tag + 1;
  btnRunTimer.Caption := btnRunTimer.Tag.ToString;
  end);
  // Brakuje demo dla TStoper (do u¿ycia w przyk³adzie TFramePlusExtension)
*)


// -------------------------------------------------------------------
// -------------------------------------------------------------------
// Sample: TFramePlusExtension
// -------------------------------------------------------------------
(*
  // DFM (Main.Form.pas):
  object grbxFrameDemo: TGroupBox
  AlignWithMargins = True
  Left = 1000
  Width = 218
  Align = alLeft
  Caption = 'grbxFrameDemo'
  TabOrder = 1
  object btnAddFrame: TButton
  AlignWithMargins = True
  Align = alTop
  Caption = 'btnAddFrame'
  TabOrder = 0
  end
  end
  // btnAddFrameClick:
  with TFrame1.Create(grbxFrameDemo) do
  begin
  Top := 9999;
  Align := alTop;
  AlignWithMargins := True;
  Name := 'Frame'+random(1000).ToString;
  Parent := grbxFrameDemo;
  Height := Panel1.Height + 3;
  end;
  // btnAddFrameClick (TFramePlusExtension):
  FramePlus.OnFrameClose := procedure(Frame: TFrame)
  begin
  Frame.Owner.Free;
  end;
  // Frame1.OnCreate:
  FramePlus := TPlusFrameExtension.Create(Self);
  FramePlus.OnFrameIdle := procedure(Sender: TObject)
  begin
  Button1.Tag := Button1.Tag + 1;
  Button1.Caption := Button1.Tag.ToString;
  end;
  // Frame1.btnCloseClick:
  FramePlus.CloseFrame
*)


// -------------------------------------------------------------------
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
  Caption := 'Klikniêto! (Idle counter='+FIdleCounter.ToString+')';
  end;
  OnUpdateAn := procedure(Action: TAction; Sender: TObject)
  begin
  inc(FIdleCounter)
  end
  end;
*)


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
// Sample: TTabSheetFactory
// -------------------------------------------------------------------
(*
  TabSheetFactory := TTabSheetFactory.Create(Self);
  TabSheetFactory.PageControl := PageControl1;
  TabSheetFactory.CreateNewWithFrame<TFrameWithLabel>('Ramka z labelk¹');
  TabSheetFactory.CreateNewWithFrame<TFrameWithStringGrid>('Ramka z siatk¹');
*)


end.
