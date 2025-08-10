unit uDisciplinas;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, uData, uModels;

type
  TFormDisciplina = class(TForm)
    sgDisciplinas: TStringGrid;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnAtualizar: TButton;
    btnBaixarArquivos: TButton;
    PainelBotoes: TPanel;
    MenuDisciplinas: TStaticText;
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
  FormDisciplina: TFormDisciplina;

implementation

{$R *.dfm}

procedure TFormDisciplina.FormCreate(Sender: TObject);
begin
  sgDisciplinas.ColCount := 2;
  sgDisciplinas.RowCount := 2;
  sgDisciplinas.Cells[0,0] := 'Código Disciplina';
  sgDisciplinas.Cells[1,0] := 'Nome Disciplina';
  AtualizarGrid;
end;

procedure TFormDisciplina.AtualizarGrid;
var
  i: Integer;
begin
  sgDisciplinas.RowCount := DM.Disciplinas.Count + 1;
  sgDisciplinas.Cells[0,0] := 'Código Disciplina';
  sgDisciplinas.Cells[1,0] := 'Nome Disciplina';
  for i := 0 to DM.Disciplinas.Count - 1 do
  begin
    sgDisciplinas.Cells[0, i+1] := IntToStr(DM.Disciplinas[i].Codigo);
    sgDisciplinas.Cells[1, i+1] := DM.Disciplinas[i].Nome;
  end;
end;

procedure TFormDisciplina.btnAdicionarClick(Sender: TObject);
var
  sCode, sName: string;
  code: Integer;
begin
  sCode := InputBox('Adicionar', 'Código:', '');
  if not TryStrToInt(sCode, code) then Exit;
  if DM.CodigoDisciplinaExiste(code) then
  begin
    ShowMessage('Código já está vinculado á uma disciplina');
    Exit;
  end;

  sName := InputBox('Adicionar', 'Nome:', '');
  DM.Disciplinas.Add(TDisciplina.Create(code, sName));
  AtualizarGrid;
end;

procedure TFormDisciplina.btnEditarClick(Sender: TObject);
var
  idx: Integer;
  newName: string;
begin
  idx := sgDisciplinas.Row - 1;
  if idx < 0 then Exit;

  newName := InputBox('Editar', 'Nome:', DM.Disciplinas[idx].Nome);
  DM.Disciplinas[idx].Nome := newName;
  AtualizarGrid;
end;

procedure TFormDisciplina.btnExcluirClick(Sender: TObject);
var
  idx: Integer;
begin
  idx := sgDisciplinas.Row - 1;
  if idx < 0 then Exit;
  DM.Disciplinas.Delete(idx);
  AtualizarGrid;
end;

procedure TFormDisciplina.btnAtualizarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormDisciplina.btnBaixarArquivosClick(Sender: TObject);
begin
  DM.SalvarTudo;
  ShowMessage('Arquivos salvos com sucesso!');
end;

end.

