program FormPlusDemo;

uses
  Vcl.Forms,
  Form.Main in 'Form.Main.pas' {Form1},
  Plus.Vcl.Form in 'Plus.Vcl.Form.pas',
  Plus.Vcl.Action in 'Plus.Vcl.Action.pas',
  Plus.Vcl.ActionGuiBuilder in 'Plus.Vcl.ActionGuiBuilder.pas',
  Plus.Vcl.Frame in 'Plus.Vcl.Frame.pas',
  Frame.FirstOne in 'Frame.FirstOne.pas' {Frame1: TFrame},
  Plus.Vcl.Timer in 'Plus.Vcl.Timer.pas',
  Plus.Vcl.PageControl in 'Plus.Vcl.PageControl.pas',
  Frame.WithLabel in 'Frame.WithLabel.pas' {FrameWithLabel: TFrame},
  Frame.WithStringGrid in 'Frame.WithStringGrid.pas' {FrameWithStringGrid: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
