unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  uFormEstudante, Vcl.ExtCtrls,uData,uFormProfessores,uDisciplinas;

type
  TFormMain = class(TForm)
    btnEstudantes: TButton;
    btnProfessores: TButton;
    btnDisciplinas: TButton;
    btnTurmas: TButton;
    btnMatriculas: TButton;
    PainelInicial:TPanel;
    Titulo: TStaticText;
    procedure btnEstudantesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProfessoresClick(Sender: TObject);
    procedure btnDisciplinasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.btnDisciplinasClick(Sender: TObject);
  begin
    FormDisciplina.Show;
  end;

procedure TFormMain.btnEstudantesClick(Sender: TObject);
begin
  FormEstudante.Show;
end;

procedure TFormMain.btnProfessoresClick(Sender: TObject);
  begin
    FormProfessor.Show;
  end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  try
    DM.CarregarTudo;
  except
    on E: Exception do
      ShowMessage('Erro ao carregar dados: ' + E.Message);
  end;
end;
end.

