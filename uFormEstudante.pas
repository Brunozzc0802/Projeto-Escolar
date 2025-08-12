unit uFormEstudante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,
  uData, uModels, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.jpeg;

type
  TFormEstudante = class(TForm)
    sgEstudantes: TStringGrid;
    PainelEstudante: TPanel;
    MenuEstudante: TStaticText;
    PainelBotoes: TPanel;
    btnAdicionar: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    btnAtualizar: TBitBtn;
    btnBaixarArquivos: TBitBtn;
    btnVoltar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnBaixarArquivosClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
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
    sgEstudantes.Cells[0,0] := 'Código Estudante';
    sgEstudantes.Cells[1,0] := 'Nome Estudante';
    AtualizarGrid;
  end;


procedure TFormEstudante.AtualizarGrid;
var
i: Integer;
  begin
    // Define o número de linhas baseado na quantidade de estudantes + 1 (linha do cabeçalho)
    sgEstudantes.RowCount := DM.Estudantes.Count + 1;
    sgEstudantes.Cells[0,0] := 'Código Estudante';
    sgEstudantes.Cells[1,0] := 'Nome Estudante';
    // Loop para preencher as linhas com os dados
    for i := 0 to DM.Estudantes.Count - 1 do begin
      sgEstudantes.Cells[0, i+1] :=
      IntToStr(DM.Estudantes[i].Codigo); //codigo convertido de integer para string
      sgEstudantes.Cells[1, i+1] := DM.Estudantes[i].Nome;
    end;
  end;


procedure TFormEstudante.btnAdicionarClick(Sender: TObject);
var
  sName: string;
  code: Integer;
begin
  // Se já houver estudantes, pega o último código e soma 1
  if DM.Estudantes.Count > 0 then
    code := DM.Estudantes[DM.Estudantes.Count - 1].Codigo + 1
  else
    code := 1; // Primeiro estudante começa do código 1

  // Pede apenas o nome
  sName := InputBox('Adicionar', 'Nome:', '');
  if Trim(sName) = '' then
  begin
    ShowMessage('Nome do estudante é obrigatório');
    Exit;
  end;

  // Adiciona à lista
  DM.Estudantes.Add(TEstudante.Create(code, sName));

  // Atualiza o grid
  AtualizarGrid;
end;

procedure TFormEstudante.btnAtualizarClick(Sender: TObject);
  begin
    DM.SalvarTudo; // atualizar arquivos novos
    ShowMessage('Arquivos Atualizados Com Sucesso');
  end;

procedure TFormEstudante.btnBaixarArquivosClick(Sender: TObject);
  begin
    DM.SalvarTudo; // baixar arquivos
    ShowMessage('Arquivos Baixados Com Sucesso');
  end;

procedure TFormEstudante.btnExcluirClick(Sender: TObject);
var
row, idx: Integer;
  begin
    row := sgEstudantes.Row;  // Obtém a linha selecionada no Grid
    if row < 1 then begin  // Linha 0 é cabeçalho, então menor que 1 não é válido
      ShowMessage('Selecione um estudante para excluir.');
      Exit;
    end;
    idx := row - 1;    // -1 porque linha 0 é o cabeçalho
    if MessageDlg('Tem certeza que deseja excluir esse estudante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    then begin
      DM.Estudantes.Delete(idx);
      ShowMessage('Estudante Excluído com sucesso');
      AtualizarGrid;
    end;
  end;


procedure TFormEstudante.btnVoltarClick(Sender: TObject);
  begin
    Close;
  end;

procedure TFormEstudante.btnEditarClick(Sender: TObject);
var
row, idx: Integer;
newName: string;
  begin
    row := sgEstudantes.Row;
    if row < 1 then begin
      ShowMessage('Selecione um estudante para editar.');
      Exit;
    end;

    idx := row - 1;

    newName := InputBox('Editar', 'Nome:', DM.Estudantes[idx].Nome);
    if Trim(newName) = '' then begin // verifica se o nome esta vazio
      ShowMessage('O Nome é obrigatório');
      Exit;
    end;
    DM.Estudantes[idx].Nome := newName;
    AtualizarGrid;
  end;
end.
