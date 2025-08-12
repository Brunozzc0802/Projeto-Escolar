unit uFormTurmas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, uData, uModels, Vcl.Buttons;

type
  TFormTurma = class(TForm)
    sgTurmas: TStringGrid;
    MenuTurmas: TStaticText;
    PainelBotoes: TPanel;
    btnAdicionar: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    btnAtualizar: TBitBtn;
    btnBaixarArquivos: TBitBtn;
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
  FormTurma: TFormTurma;

implementation

{$R *.dfm}

procedure TFormTurma.FormCreate(Sender: TObject);
begin
  sgTurmas.ColCount := 3;
  sgTurmas.RowCount := 2;
  sgTurmas.Cells[0,0] := 'Código';
  sgTurmas.Cells[1,0] := 'Cód. Professor';
  sgTurmas.Cells[2,0] := 'Cód. Disciplina';
  AtualizarGrid;
end;


procedure TFormTurma.AtualizarGrid;
var
  i: Integer;
begin
  sgTurmas.RowCount := DM.Turmas.Count + 1;
  sgTurmas.Cells[0,0] := 'Código';
  sgTurmas.Cells[1,0] := 'Cód. Professor';
  sgTurmas.Cells[2,0] := 'Cód. Disciplina';
  for i := 0 to DM.Turmas.Count - 1 do
  begin
    sgTurmas.Cells[0, i+1] := IntToStr(DM.Turmas[i].Codigo);
    sgTurmas.Cells[1, i+1] := IntToStr(DM.Turmas[i].CodigoProfessor);
    sgTurmas.Cells[2, i+1] := IntToStr(DM.Turmas[i].CodigoDisciplina);
  end;
end;


procedure TFormTurma.btnAdicionarClick(Sender: TObject);
var
  sCode, sCodProf, sCodDisc: string;
  code, codProf, codDisc: Integer;
begin

  sCode := InputBox('Adicionar', 'Código Turma:', '');
  if sCode = '' then Exit;

  if not TryStrToInt(sCode, code) then
  begin
    ShowMessage('Código da turma inválido.');
    Exit;
  end;

  if DM.CodigoTurmaExiste(code) then
  begin
    ShowMessage('Código já existe.');
    Exit;
  end;


  repeat
    sCodProf := InputBox('Adicionar', 'Código Professor:', '');
    if sCodProf = '' then Exit;
    if not TryStrToInt(sCodProf, codProf) then
    begin
      ShowMessage('Código do professor inválido. Tente novamente.');
      Continue;
    end;
    if not DM.CodigoProfessorExiste(codProf) then
    begin
      ShowMessage('Código do professor não existe. Tente novamente.');
      Continue;
    end;
    Break;
  until False;


  repeat
    sCodDisc := InputBox('Adicionar', 'Código Disciplina:', '');
    if sCodDisc = '' then Exit;
    if not TryStrToInt(sCodDisc, codDisc) then
    begin
      ShowMessage('Código da disciplina inválido. Tente novamente.');
      Continue;
    end;
    if not DM.CodigoDisciplinaExiste(codDisc) then
    begin
      ShowMessage('Código da disciplina não existe. Tente novamente.');
      Continue;
    end;
    Break;
  until False;

  DM.Turmas.Add(TTurma.Create(code, codProf, codDisc));
  AtualizarGrid;
end;

procedure TFormTurma.btnEditarClick(Sender: TObject);
var
  idx: Integer;
  sCodProf, sCodDisc: string;
  codProf, codDisc: Integer;
  begin
  idx := sgTurmas.Row - 1;
    if (idx < 0) or (idx >= DM.Disciplinas.Count) then
    begin
      ShowMessage('Selecione uma Turma para editar.');
      Exit;
    end;


  idx := sgTurmas.Row - 1;
  if idx < 0 then Exit;
  repeat
    sCodProf := InputBox('Editar', 'Código Professor:', IntToStr(DM.Turmas[idx].CodigoProfessor));
    if sCodProf = '' then Exit;
    if not TryStrToInt(sCodProf, codProf) then
    begin
      ShowMessage('Código do professor inválido. Tente novamente.');
      Continue;
    end;
    if not DM.CodigoProfessorExiste(codProf) then
    begin
      ShowMessage('Código do professor não existe. Tente novamente.');
      Continue;
    end;
    Break;
  until False;

  repeat
    sCodDisc := InputBox('Editar', 'Código Disciplina:', IntToStr(DM.Turmas[idx].CodigoDisciplina));
    if sCodDisc = '' then Exit;
    if not TryStrToInt(sCodDisc, codDisc) then
    begin
      ShowMessage('Código da disciplina inválido. Tente novamente.');
      Continue;
    end;
    if not DM.CodigoDisciplinaExiste(codDisc) then
    begin
      ShowMessage('Código da disciplina não existe. Tente novamente.');
      Continue;
    end;
    Break;
  until False;

  DM.Turmas[idx].CodigoProfessor := codProf;
  DM.Turmas[idx].CodigoDisciplina := codDisc;
  AtualizarGrid;
end;

procedure TFormTurma.btnExcluirClick(Sender: TObject);
var
  row, idx: Integer;
  begin
    row := sgTurmas.Row;
    if row < 1 then
    begin
      ShowMessage('Selecione uma Turma para excluir.');
      Exit;
    end;
    idx := row - 1;
     if MessageDlg('Tem certeza que deseja excluir essa turma?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      DM.Turmas.Delete(idx);
      ShowMessage('Turma Excluída');
      AtualizarGrid;
    end;
  end;

procedure TFormTurma.btnVoltarClick(Sender: TObject);
  begin
    Close;
  end;

procedure TFormTurma.btnAtualizarClick(Sender: TObject);
begin
   DM.SalvarTudo;
   ShowMessage('Arquivos Atualizados Com Sucesso');
end;

procedure TFormTurma.btnBaixarArquivosClick(Sender: TObject);
begin
  DM.SalvarTudo;
  ShowMessage('Arquivos Baixados Com Sucesso');;
end;

end.

