unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uFormEstudantes;

type
  TForm1 = class(TForm)
    Painel: TPanel;
    Titulo: TLabel;
    Estudantes: TLabel;
    Disciplinas: TLabel;
    Turmas: TLabel;
    Matriculas: TLabel;
    CliqueOpção: TLabel;
    Professores: TLabel;
    procedure EstudantesMouseEnter(Sender: TObject);
    procedure EstudantesMouseLeave(Sender: TObject);
    procedure DisciplinasMouseEnter(Sender: TObject);
    procedure DisciplinasMouseLeave(Sender: TObject);
    procedure MatriculasMouseEnter(Sender: TObject);
    procedure MatriculasMouseLeave(Sender: TObject);
    procedure TurmasMouseEnter(Sender: TObject);
    procedure TurmasMouseLeave(Sender: TObject);
    procedure ProfessoresMouseEnter(Sender: TObject);
    procedure ProfessoresMouseLeave(Sender: TObject);
    procedure EstudantesClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}





procedure TForm1.DisciplinasMouseEnter(Sender: TObject);
  begin
    Disciplinas.Font.Color := clBlue;
  end;

procedure TForm1.DisciplinasMouseLeave(Sender: TObject);
  begin
    Disciplinas.Font.Color := clBlack;
  end;

procedure TForm1.EstudantesClick(Sender: TObject);
  begin
    FormEstudantes.ShowModal;
  end;

procedure TForm1.EstudantesMouseEnter(Sender: TObject);
  begin
     Estudantes.Font.Color := clBlue;
  end;

procedure TForm1.EstudantesMouseLeave(Sender: TObject);
  begin
    Estudantes.Font.Color := clBlack;
  end;



procedure TForm1.MatriculasMouseEnter(Sender: TObject);
  begin
    Matriculas.Font.Color := clBlue;
  end;

procedure TForm1.MatriculasMouseLeave(Sender: TObject);
  begin
    Matriculas.Font.Color := clBlack;
  end;

procedure TForm1.TurmasMouseEnter(Sender: TObject);

  begin
     Turmas.Font.Color := clBlue;
  end;

procedure TForm1.TurmasMouseLeave(Sender: TObject);
  begin
    Turmas.Font.Color := clBlack;
  end;

procedure TForm1.ProfessoresMouseEnter(Sender: TObject);

  begin
     Professores.Font.Color := clBlue;
  end;

procedure TForm1.ProfessoresMouseLeave(Sender: TObject);
  begin
    Professores.Font.Color := clBlack;
  end;

end.
