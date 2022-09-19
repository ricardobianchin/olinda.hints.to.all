program HintsToAllTest;

uses
  Vcl.Forms,
  HintsToAllTestF_u in 'HintsToAllTestF_u.pas' {Form1},
  HintsToAll_u in 'HintsToAll_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
