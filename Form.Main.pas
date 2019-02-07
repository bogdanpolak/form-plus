unit Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  // x
end;

// -------------------------------------------------------------------
// -------------------------------------------------------------------
// Sample:
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


end.
