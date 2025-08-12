unit uMatriculas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, uData, uModels, Vcl.Buttons;

type
  TFormMatriculas = class(TForm)
    sgMatriculas: TStringGrid;
     MenuMatriculas: TStaticText;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    btnVoltar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnBaixarArquivosClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
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
  if sCode = '' then Exit;

  if not TryStrToInt(sCode, code) then
  begin
    ShowMessage('Código da matrícula inválido.');
    Exit;
  end;

  repeat
    sCodTurma := InputBox('Adicionar', 'Código Turma:', '');
    if sCodTurma = '' then Exit;
    if not TryStrToInt(sCodTurma, codTurma) then
    begin
      ShowMessage('Código da turma inválido. Tente novamente.');
      Continue;
    end;
    if not DM.CodigoTurmaExiste(codTurma) then
    begin
      ShowMessage('Código da turma não existe. Tente novamente.');
      Continue;
    end;
    Break;
  until False;

  repeat
    sCodAluno := InputBox('Adicionar', 'Código Estudante:', '');
    if sCodAluno = '' then Exit;
    if not TryStrToInt(sCodAluno, codAluno) then
    begin
      ShowMessage('Código do estudante inválido. Tente novamente.');
      Continue;
    end;
    if not DM.CodigoEstudanteExiste(codAluno) then
    begin
      ShowMessage('Código do estudante não existe. Tente novamente.');
      Continue;
    end;
    Break;
  until False;

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
    if (idx < 0) or (idx >= DM.Disciplinas.Count) then
    begin
      ShowMessage('Selecione uma Matricula para editar.');
      Exit;
    end;

  idx := sgMatriculas.Row - 1;
  if idx < 0 then Exit;

  repeat
    sCodTurma := InputBox('Editar', 'Código Turma:', IntToStr(DM.Matriculas[idx].CodigoTurma));
    if sCodTurma = '' then Exit;
    if not TryStrToInt(sCodTurma, codTurma) then
    begin
      ShowMessage('Código da turma inválido. Tente novamente.');
      Continue;
    end;
    if not DM.CodigoTurmaExiste(codTurma) then
    begin
      ShowMessage('Código da turma não existe. Tente novamente.');
      Continue;
    end;
    Break;
  until False;

  repeat
    sCodAluno := InputBox('Editar', 'Código Estudante:', IntToStr(DM.Matriculas[idx].CodigoEstudante));
    if sCodAluno = '' then Exit;
    if not TryStrToInt(sCodAluno, codAluno) then
    begin
      ShowMessage('Código do estudante inválido. Tente novamente.');
      Continue;
    end;
    if not DM.CodigoEstudanteExiste(codAluno) then
    begin
      ShowMessage('Código do estudante não existe. Tente novamente.');
      Continue;
    end;
    Break;
  until False;

  DM.Matriculas[idx].CodigoTurma := codTurma;
  DM.Matriculas[idx].CodigoEstudante := codAluno;
  AtualizarGrid;
end;


procedure TFormMatriculas.btnExcluirClick(Sender: TObject);
var
  row, idx: Integer;
  begin
    row := sgMatriculas.Row;
    if row < 1 then
    begin
      ShowMessage('Selecione uma Matricula para excluir.');
      Exit;
    end;
    idx := row - 1;
     if MessageDlg('Tem Certeza Que deseja excluir essa Matricula?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      DM.Matriculas.Delete(idx);
      ShowMessage('Matricula Excluída');
      AtualizarGrid;
    end;
  end;

procedure TFormMatriculas.btnVoltarClick(Sender: TObject);
  begin
    Close;
  end;

procedure TFormMatriculas.btnAtualizarClick(Sender: TObject);
begin
   DM.SalvarTudo;
   ShowMessage('Arquivos Atualizados Com Sucesso');
end;

procedure TFormMatriculas.btnBaixarArquivosClick(Sender: TObject);
begin
  DM.SalvarTudo;
  ShowMessage('Arquivos Baixados Com Sucesso');
end;
end.

