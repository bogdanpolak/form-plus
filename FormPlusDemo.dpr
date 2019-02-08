program FormPlusDemo;

uses
  Vcl.Forms,
  Form.Main in 'Form.Main.pas' {Form1},
  Frame.FirstOne in 'Frame.FirstOne.pas' {Frame1: TFrame},
  Plus.Vcl.Action in 'plus\Plus.Vcl.Action.pas',
  Plus.Vcl.ActionGuiBuilder in 'plus\Plus.Vcl.ActionGuiBuilder.pas',
  Plus.Vcl.Form in 'plus\Plus.Vcl.Form.pas',
  Plus.Vcl.Frame in 'plus\Plus.Vcl.Frame.pas',
  Plus.Vcl.PageControl in 'plus\Plus.Vcl.PageControl.pas',
  Plus.Vcl.Timer in 'plus\Plus.Vcl.Timer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
