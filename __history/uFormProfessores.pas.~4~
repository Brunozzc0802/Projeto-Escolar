unit uFormProfessores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, uData, uModels;

type
  TFormProfessor = class(TForm)
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnAtualizar: TButton;
    btnBaixarArquivos: TButton;
    PainelProfessor: TPanel;
    MenuProfessor: TStaticText;
    PainelBotoes: TPanel;
    sgProfessores: TStringGrid;
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
  FormProfessor: TFormProfessor;

implementation

{$R *.dfm}

{ Helper local: verifica se a string tem exatamente 11 dígitos e só números }
function CPFValido(const s: string): Boolean;
var
  i: Integer;
begin
  Result := Length(s) = 11;
  if not Result then Exit;
  for i := 1 to 11 do
    if not (s[i] in ['0'..'9']) then
    begin
      Result := False;
      Exit;
    end;
  Result := True;
end;

procedure TFormProfessor.FormCreate(Sender: TObject);
begin
  sgProfessores.ColCount := 3;
  sgProfessores.RowCount := 2;
  sgProfessores.Cells[0,0] := 'Código';
  sgProfessores.Cells[1,0] := 'Nome';
  sgProfessores.Cells[2,0] := 'CPF';
  AtualizarGrid;
end;

procedure TFormProfessor.AtualizarGrid;
var
  i: Integer;
begin
  sgProfessores.RowCount := DM.Professores.Count + 1;
  sgProfessores.Cells[0,0] := 'Código';
  sgProfessores.Cells[1,0] := 'Nome';
  sgProfessores.Cells[2,0] := 'CPF';
  for i := 0 to DM.Professores.Count - 1 do
  begin
    sgProfessores.Cells[0, i+1] := IntToStr(DM.Professores[i].Codigo);
    sgProfessores.Cells[1, i+1] := DM.Professores[i].Nome;
    sgProfessores.Cells[2, i+1] := DM.Professores[i].CPF;
  end;
end;

procedure TFormProfessor.btnAdicionarClick(Sender: TObject);
var
  sCode, sName, sCPF: string;
  code: Integer;
begin
  sCode := InputBox('Adicionar', 'Código:', '');
  if sCode = '' then Exit;
  if not TryStrToInt(sCode, code) then
  begin
    ShowMessage('Código inválido.');
    Exit;
  end;
  if DM.CodigoProfessorExiste(code) then
  begin
    ShowMessage('Código já existe.');
    Exit;
  end;

  sName := InputBox('Adicionar', 'Nome:', '');
  if Trim(sName) = '' then
  begin
    ShowMessage('Nome obrigatório.');
    Exit;
  end;

  repeat
    sCPF := InputBox('Adicionar', 'CPF', '');
    if sCPF = '' then Exit;
    if CPFValido(sCPF) then Break
    else ShowMessage('CPF inválido. Deve conter exatamente 11 números.');
  until False;

  DM.Professores.Add(TProfessor.Create(code, sName, sCPF));
  AtualizarGrid;
end;

procedure TFormProfessor.btnEditarClick(Sender: TObject);
var
  idx: Integer;
  newName, newCPF: string;
begin
  idx := sgProfessores.Row - 1;
  if (idx < 0) or (idx >= DM.Professores.Count) then
  begin
    ShowMessage('Selecione um professor para editar.');
    Exit;
  end;

  newName := InputBox('Editar', 'Nome:', DM.Professores[idx].Nome);
  if Trim(newName) = '' then
  begin
    ShowMessage('Nome obrigatório.');
    Exit;
  end;

  repeat
    newCPF := InputBox('Editar', 'CPF (somente números, 11 dígitos):', DM.Professores[idx].CPF);
    if newCPF = '' then Exit;
    if CPFValido(newCPF) then Break
    else ShowMessage('CPF inválido. Deve conter exatamente 11 números e não pode ter letras.');
  until False;

  DM.Professores[idx].Nome := newName;
  DM.Professores[idx].CPF := newCPF;
  AtualizarGrid;
end;

procedure TFormProfessor.btnExcluirClick(Sender: TObject);
var
  row, idx: Integer;
begin
  row := sgProfessores.Row;
  if row < 1 then
  begin
    ShowMessage('Selecione um Professor.');
    Exit;
  end;
  idx := row - 1;
   if MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
   ShowMessage('Professor Excluído');

    DM.Professores.Delete(idx);
    AtualizarGrid;
  end;
end;

procedure TFormProfessor.btnAtualizarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormProfessor.btnBaixarArquivosClick(Sender: TObject);
begin
  try
    DM.SalvarTudo;
    ShowMessage('Arquivos baixados com sucesso!');
  except
    on E: Exception do
      ShowMessage('Erro ao salvar arquivos: ' + E.Message);
  end;
end;

end.

