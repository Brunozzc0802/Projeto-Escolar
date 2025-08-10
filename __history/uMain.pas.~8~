unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  uFormEstudante, Vcl.ExtCtrls,uData;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.btnEstudantesClick(Sender: TObject);
begin
  FormEstudante.Show;
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

