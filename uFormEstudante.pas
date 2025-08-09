unit uFormEstudante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  uData, uModels, Vcl.ExtCtrls;

type
  TFormEstudante = class(TForm)
    sgEstudantes: TStringGrid;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnAtualizar: TButton;
    PainelEstudante: TPanel;
    MenuEstudante: TStaticText;
    PainelBotoes:TPanel;
    btnBaixarArquivos: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    procedure AtualizarGrid;
  public
    { Public declarations }
  end;

var
  FormEstudante: TFormEstudante;

implementation

{$R *.dfm}

procedure TFormEstudante.FormCreate(Sender: TObject);
begin

  sgEstudantes.RowCount := 2;
  sgEstudantes.ColCount := 2;
  sgEstudantes.Cells[0,0] := 'Código';
  sgEstudantes.Cells[1,0] := 'Nome';
  AtualizarGrid;
end;



procedure TFormEstudante.AtualizarGrid;
var
  i: Integer;
begin
  sgEstudantes.RowCount := DM.Estudantes.Count + 1;
  sgEstudantes.Cells[0,0] := 'Código';
  sgEstudantes.Cells[1,0] := 'Nome';
  for i := 0 to DM.Estudantes.Count - 1 do
  begin
    sgEstudantes.Cells[0, i+1] := IntToStr(DM.Estudantes[i].Codigo);
    sgEstudantes.Cells[1, i+1] := DM.Estudantes[i].Nome;
  end;
end;

procedure TFormEstudante.btnAdicionarClick(Sender: TObject);
var
  sCode, sName: string;
  code: Integer;
begin
  sCode := InputBox('Adicionar', 'Código:', '');
  if sCode = '' then Exit;
  if not TryStrToInt(sCode, code) then
  begin
    ShowMessage('Código inválido');
    Exit;
  end;
  if DM.CodigoEstudanteExiste(code) then
  begin
    ShowMessage('Código já existe.');
    Exit;
  end;
  sName := InputBox('Adicionar', 'Nome:', '');
  if Trim(sName) = '' then
  begin
    ShowMessage('Nome obrigatório');
    Exit;
  end;
  DM.Estudantes.Add(TEstudante.Create(code, sName));
  AtualizarGrid;
end;

procedure TFormEstudante.btnAtualizarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormEstudante.btnExcluirClick(Sender: TObject);
var
  row, idx: Integer;
begin
  row := sgEstudantes.Row;
  if row < 1 then
  begin
    ShowMessage('Selecione um estudante.');
    Exit;
  end;
  idx := row - 1;
  if MessageDlg('Confirma exclusão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

    var i: Integer;
    for i := 0 to DM.Matriculas.Count - 1 do
      if DM.Matriculas[i].CodigoEstudante = DM.Estudantes[idx].Codigo then
      begin
        ShowMessage('Não Foi Possivel excluir: estudante possui matrícula.');
        Exit;
      end;

    DM.Estudantes.Delete(idx);
    AtualizarGrid;
  end;
end;

procedure TFormEstudante.btnEditarClick(Sender: TObject);
var
  row, idx: Integer;
  newName: string;
begin
  row := sgEstudantes.Row;
  if row < 1 then
  begin
    ShowMessage('Selecione um estudante para editar.');
    Exit;
  end;

  idx := row - 1;

  newName := InputBox('Editar', 'Nome:', DM.Estudantes[idx].Nome);
  if Trim(newName) = '' then
  begin
    ShowMessage('O Nome é obrigatório');
    Exit;
  end;
  DM.Estudantes[idx].Nome := newName;

  AtualizarGrid;
end;
end.
