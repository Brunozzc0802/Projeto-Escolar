program Project1;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FormMain},
  uModels in 'uModels.pas',
  uFormEstudante in 'uFormEstudante.pas' {FormEstudante},
  uData in 'uData.pas',
  uFormProfessores in 'uFormProfessores.pas' {FormProfessor},
  uDisciplinas in 'uDisciplinas.pas' {FormDisciplina};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormEstudante, FormEstudante);
  Application.CreateForm(TFormProfessor, FormProfessor);
  Application.CreateForm(TFormDisciplina, FormDisciplina);
  Application.Run;
end.
