unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  uFormEstudante, Vcl.ExtCtrls,uData,uFormProfessores,uDisciplinas,uFormTurmas,uMatriculas,
  Vcl.Buttons;

type
  TFormMain = class(TForm)
    btnEstudantes: TButton;
    btnProfessores: TButton;
    btnDisciplinas: TButton;
    btnTurmas: TButton;
    btnMatriculas: TButton;
    PainelInicial:TPanel;
    Titulo: TStaticText;
    btnEncerrarSistema: TBitBtn;
    procedure btnEstudantesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProfessoresClick(Sender: TObject);
    procedure btnDisciplinasClick(Sender: TObject);
    procedure btnTurmasClick(Sender: TObject);
    procedure btnMatriculasClick(Sender: TObject);
    procedure btnEncerrarSistemaClick(Sender: TObject);
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


procedure TFormMain.btnEncerrarSistemaClick(Sender: TObject);
  begin
    if MessageDlg('Algumas Mudanças Feitas Não foram salvas, Deseja Salvar?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      ShowMessage('Mudanças Salvas');
      DM.SalvarTudo;
    end;
  Close;
  end;

procedure TFormMain.btnEstudantesClick(Sender: TObject);
begin
  FormEstudante.Show;
  DM.CarregarTudo;
end;

procedure TFormMain.btnMatriculasClick(Sender: TObject);
  begin
    FormMatriculas.Show;
  end;

procedure TFormMain.btnProfessoresClick(Sender: TObject);
  begin
    FormProfessor.Show;
  end;

procedure TFormMain.btnTurmasClick(Sender: TObject);
  begin
    FormTurma.Show;
  end;


procedure TFormMain.FormCreate(Sender: TObject);
  begin
    DM.CarregarTudo;
  end;



end.

