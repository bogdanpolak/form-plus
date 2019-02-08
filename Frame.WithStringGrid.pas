unit Frame.WithStringGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids;

type
  TFrameWithStringGrid = class(TFrame)
    StringGrid1: TStringGrid;
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

{ TFrame3 }

constructor TFrameWithStringGrid.Create(AOwner: TComponent);
var
  aGrid: TStringGrid;
  aRow: Integer;
begin
  inherited;
  aGrid := StringGrid1;
  aGrid.ColWidths[0] := 32;
  aGrid.ColWidths[1] := 128;
  aGrid.ColWidths[2] := 128;
  for aRow := 1 to aGrid.RowCount-1 do
    aGrid.Cells[0,aRow] := aRow.ToString;
  aGrid.Cells[1,0] := 'Osoba';
  aGrid.Cells[2,0] := 'Firma';
  aGrid.Cells[3,0] := 'Data';
end;

end.
