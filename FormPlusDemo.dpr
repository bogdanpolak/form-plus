program FormPlusDemo;

uses
  Vcl.Forms,
  Form.Main in 'Form.Main.pas' {Form1},
  Plus.Vcl.Form in 'Plus.Vcl.Form.pas',
  Plus.Vcl.Action in 'Plus.Vcl.Action.pas',
  Plus.Vcl.ActionGuiBuilder in 'Plus.Vcl.ActionGuiBuilder.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
