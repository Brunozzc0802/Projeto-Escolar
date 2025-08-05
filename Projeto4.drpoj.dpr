program Projeto4.drpoj;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uEstudante in 'uEstudante.pas',
  uFormEstudantes in 'uFormEstudantes.pas' {FormEstudantes},
  uProfessor in 'uProfessor.pas',
  uTurmas in 'uTurmas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormEstudantes, FormEstudantes);
  Application.Run;
end.
