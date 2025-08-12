unit uDisciplinas;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  Vcl.ExtCtrls, uData, uModels, Vcl.Buttons;

type
  TFormDisciplina = class(TForm)
    sgDisciplinas: TStringGrid;
    MenuDisciplinas: TStaticText;
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
  FormDisciplina: TFormDisciplina;

implementation

{$R *.dfm}

procedure TFormDisciplina.FormCreate(Sender: TObject);
  begin
    sgDisciplinas.ColCount := 2;
    sgDisciplinas.RowCount := 2;
    sgDisciplinas.Cells[0,0] := 'C�digo Disciplina';
    sgDisciplinas.Cells[1,0] := 'Nome Disciplina';
    AtualizarGrid;
  end;

procedure TFormDisciplina.AtualizarGrid;
var
i: Integer;
  begin
    sgDisciplinas.RowCount := DM.Disciplinas.Count + 1;
    sgDisciplinas.Cells[0,0] := 'C�digo Disciplina';
    sgDisciplinas.Cells[1,0] := 'Nome Disciplina';
    for i := 0 to DM.Disciplinas.Count - 1 do begin
      sgDisciplinas.Cells[0, i+1] := IntToStr(DM.Disciplinas[i].Codigo);
      sgDisciplinas.Cells[1, i+1] := DM.Disciplinas[i].Nome;
    end;
  end;

procedure TFormDisciplina.btnAdicionarClick(Sender: TObject);
var
  sName: string;
  nextCode: Integer;
begin
  // Gera o pr�ximo c�digo automaticamente
  if DM.Disciplinas.Count = 0 then
    nextCode := 1
  else
    nextCode := DM.Disciplinas[DM.Disciplinas.Count - 1].Codigo + 1;

  // Pede apenas o nome
  sName := InputBox('Adicionar', 'Nome:', '');

  // Adiciona � lista
  DM.Disciplinas.Add(TDisciplina.Create(nextCode, sName));

  // Atualiza o grid
  AtualizarGrid;
end;

procedure TFormDisciplina.btnEditarClick(Sender: TObject);
var
idx: Integer;
newName: string;
  begin
    idx := sgDisciplinas.Row - 1;
    if (idx < 0) or (idx >= DM.Disciplinas.Count) then begin
      ShowMessage('Selecione uma discilina para editar.');
      Exit;
    end;

    idx := sgDisciplinas.Row - 1;
    if idx < 0 then Exit;

    newName := InputBox('Editar', 'Nome:', DM.Disciplinas[idx].Nome);
    DM.Disciplinas[idx].Nome := newName;
    AtualizarGrid;
  end;

procedure TFormDisciplina.btnExcluirClick(Sender: TObject);
var
  row, idx: Integer;
  begin
    row := sgDisciplinas.Row;
    if row < 1 then begin
      ShowMessage('Selecione uma Disciplina para excluir.');
      Exit;
    end;
    idx := row - 1;
     if MessageDlg('Tem certeza que deseja excluir essa discplina?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      DM.Disciplinas.Delete(idx);
      ShowMessage('Disciplina Exclu�da');
      AtualizarGrid;
    end;
  end;

procedure TFormDisciplina.btnVoltarClick(Sender: TObject);
  begin
    Close;
  end;

procedure TFormDisciplina.btnAtualizarClick(Sender: TObject);
  begin
    DM.SalvarTudo;
    ShowMessage('Arquivos Atualizados Com Sucesso');
  end;

procedure TFormDisciplina.btnBaixarArquivosClick(Sender: TObject);
  begin
    DM.SalvarTudo;
    ShowMessage('Arquivos Baixados Com Sucesso');
  end;
end.

