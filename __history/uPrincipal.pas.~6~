unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uFormEstudantes;

type
  TForm1 = class(TForm)
    PainelInicio: TPanel;
    Titulo: TLabel;
    Estudantes: TLabel;
    Disciplinas: TLabel;
    Turmas: TLabel;
    Matriculas: TLabel;
    CliqueOpção: TLabel;
    Professores: TLabel;
    PainelEstudantes: TPanel;
    tituloMenuEstudantes: TLabel;
    CliqueNaOpção: TLabel;
    AddEstudante: TLabel;
    VerLista: TLabel;
    VoltarAoMenu: TLabel;
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
    procedure AddEstudanteMouseEnter(Sender: TObject);
    procedure AddEstudanteMouseLeave(Sender: TObject);
    procedure VerListaMouseEnter(Sender: TObject);
    procedure VerListaMouseLeave(Sender: TObject);
    procedure VoltarAoMenuClick(Sender: TObject);
    procedure VoltarAoMenuMouseEnter(Sender: TObject);
    procedure VoltarAoMenuMouseLeave(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}





procedure TForm1.AddEstudanteMouseEnter(Sender: TObject);
  begin
    AddEstudante.Color := clActiveCaption;
  end;

procedure TForm1.AddEstudanteMouseLeave(Sender: TObject);
  begin
    AddEstudante.Color := clMenu;
  end;

procedure TForm1.DisciplinasMouseEnter(Sender: TObject);
  begin
    Disciplinas.Color := clActiveCaption;
  end;

procedure TForm1.DisciplinasMouseLeave(Sender: TObject);
  begin
    Disciplinas.Color := clMenu;
  end;

procedure TForm1.EstudantesClick(Sender: TObject);
  begin
    PainelInicio.Visible :=  False;
    PainelEstudantes.Visible := True;
  end;

procedure TForm1.EstudantesMouseEnter(Sender: TObject);
  begin
     Estudantes.Color := clActiveCaption;
  end;

procedure TForm1.EstudantesMouseLeave(Sender: TObject);
  begin
    Estudantes.Color := clMenu;
  end;


procedure TForm1.MatriculasMouseEnter(Sender: TObject);
  begin
    Matriculas.Color := clActiveCaption;
  end;

procedure TForm1.MatriculasMouseLeave(Sender: TObject);
  begin
    Matriculas.Color := clMenu;
  end;

procedure TForm1.TurmasMouseEnter(Sender: TObject);

  begin
     Turmas.Color := clActiveCaption;
  end;

procedure TForm1.TurmasMouseLeave(Sender: TObject);
  begin
    Turmas.Color := clMenu;
  end;

procedure TForm1.VerListaMouseEnter(Sender: TObject);
  begin
    VerLista.Color := clActiveCaption;
  end;


procedure TForm1.VerListaMouseLeave(Sender: TObject);
  begin
    VerLista.Color := clMenu;
  end;

procedure TForm1.VoltarAoMenuClick(Sender: TObject);
  begin
    PainelInicio.Visible := True;
    PainelEstudantes.Visible := False;
  end;

procedure TForm1.VoltarAoMenuMouseEnter(Sender: TObject);
  begin
    VoltarAoMenu.Color := clActiveCaption;
  end;

procedure TForm1.VoltarAoMenuMouseLeave(Sender: TObject);
  begin
    VoltarAoMenu.Color := clMenu;
  end;

procedure TForm1.ProfessoresMouseEnter(Sender: TObject);

  begin
     Professores.Color := clActiveCaption;
  end;

procedure TForm1.ProfessoresMouseLeave(Sender: TObject);
  begin
    Professores.Color := clMenu;
  end;

end.
