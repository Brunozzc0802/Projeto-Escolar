unit uMatriculas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, uData, uModels;

type
  TFormMatriculas = class(TForm)
    sgMatriculas: TStringGrid;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnAtualizar: TButton;
    btnBaixarArquivos: TButton;
    PainelBotoes: TPanel;
     MenuMatriculas: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnBaixarArquivosClick(Sender: TObject);
  private
    procedure AtualizarGrid;
  public
  end;

  var
  FormMatriculas: TFormMatriculas;

implementation

{$R *.dfm}

procedure TFormMatriculas.FormCreate(Sender: TObject);
begin
  sgMatriculas.ColCount := 3;
  sgMatriculas.RowCount := 2;
  sgMatriculas.Cells[0,0] := 'Código';
  sgMatriculas.Cells[1,0] := 'Cód. Turma';
  sgMatriculas.Cells[2,0] := 'Cód. Estudante';
  AtualizarGrid;
end;

procedure TFormMatriculas.AtualizarGrid;
var
  i: Integer;
begin
  sgMatriculas.RowCount := DM.Matriculas.Count + 1;
  sgMatriculas.Cells[0,0] := 'Código';
  sgMatriculas.Cells[1,0] := 'Cód. Turma';
  sgMatriculas.Cells[2,0] := 'Cód. Estudante';
  for i := 0 to DM.Matriculas.Count - 1 do
  begin
    sgMatriculas.Cells[0, i+1] := IntToStr(DM.Matriculas[i].Codigo);
    sgMatriculas.Cells[1, i+1] := IntToStr(DM.Matriculas[i].CodigoTurma);
    sgMatriculas.Cells[2, i+1] := IntToStr(DM.Matriculas[i].CodigoEstudante);
  end;
end;

procedure TFormMatriculas.btnAdicionarClick(Sender: TObject);
var
  sCode, sCodTurma, sCodAluno: string;
  code, codTurma, codAluno: Integer;
begin
  sCode := InputBox('Adicionar', 'Código Matrícula:', '');
  if not TryStrToInt(sCode, code) then Exit;
  sCodTurma := InputBox('Adicionar', 'Código Turma:', '');
  sCodAluno := InputBox('Adicionar', 'Código Estudante:', '');
  if not TryStrToInt(sCodTurma, codTurma) then Exit;
  if not TryStrToInt(sCodAluno, codAluno) then Exit;

  DM.Matriculas.Add(TMatricula.Create(code, codTurma, codAluno));
  AtualizarGrid;
end;

procedure TFormMatriculas.btnEditarClick(Sender: TObject);
var
  idx: Integer;
  sCodTurma, sCodAluno: string;
  codTurma, codAluno: Integer;
begin
  idx := sgMatriculas.Row - 1;
  if idx < 0 then Exit;

  sCodTurma := InputBox('Editar', 'Código Turma:', IntToStr(DM.Matriculas[idx].CodigoTurma));
  sCodAluno := InputBox('Editar', 'Código Estudante:', IntToStr(DM.Matriculas[idx].CodigoEstudante));
  if not TryStrToInt(sCodTurma, codTurma) then Exit;
  if not TryStrToInt(sCodAluno, codAluno) then Exit;

  DM.Matriculas[idx].CodigoTurma := codTurma;
  DM.Matriculas[idx].CodigoEstudante := codAluno;
  AtualizarGrid;
end;

procedure TFormMatriculas.btnExcluirClick(Sender: TObject);
var
  idx: Integer;
begin
  idx := sgMatriculas.Row - 1;
  if idx < 0 then Exit;
  DM.Matriculas.Delete(idx);
  AtualizarGrid;
end;

procedure TFormMatriculas.btnAtualizarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMatriculas.btnBaixarArquivosClick(Sender: TObject);
begin
  DM.SalvarTudo;
  ShowMessage('Arquivos salvos com sucesso!');
end;
end.

