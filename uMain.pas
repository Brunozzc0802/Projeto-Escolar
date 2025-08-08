unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uData,
  uFormEstudante, uFormProfessor, uFormDisciplina, uFormTurma, uFormMatricula,
  Vcl.ExtCtrls;

type
  TFormMain = class(TForm)
    btnProfessores: TButton;
    btnDisciplinas: TButton;
    btnTurmas: TButton;
    btnMatriculas: TButton;
    StaticText1: TStaticText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}



