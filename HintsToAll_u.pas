unit HintsToAll_u;

interface

uses System.SysUtils, Vcl.Controls;

procedure HintsToAll(pControl: TControl);

implementation

procedure HintsToAll(pControl: TControl);
var
  s: string;
  t: integer;
begin
  s:= '';
  if pControl.Parent<>nil then
    s := pControl.Parent.Name;
  if s<> '' then
    s := s + '.';
  s := s + pControl.Name;
  pControl.Hint := s;
  pControl.ShowHint := true;
  if not (pControl is TWinControl) then
    exit;

  for t := 0 to TWinCOntrol(pControl).ControlCount - 1 do
  begin
    HintsToAll(TWinCOntrol(pControl).Controls[t]);
  end;
end;

end.
