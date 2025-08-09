unit uData;

interface

uses
  System.Classes, System.SysUtils, Generics.Collections, uModels;

type
  TDataModuleSimple = class
  private
    FEstudantes: TObjectList<TEstudante>;
    FProfessores: TObjectList<TProfessor>;
    FDisciplinas: TObjectList<TDisciplina>;
    FTurmas: TObjectList<TTurma>;
    FMatriculas: TObjectList<TMatricula>;
    function GetAppPath: string;
  public
    constructor Create;
    destructor Destroy; override;

    // listas públicas para leitura
    property Estudantes: TObjectList<TEstudante> read FEstudantes;
    property Professores: TObjectList<TProfessor> read FProfessores;
    property Disciplinas: TObjectList<TDisciplina> read FDisciplinas;
    property Turmas: TObjectList<TTurma> read FTurmas;
    property Matriculas: TObjectList<TMatricula> read FMatriculas;

    // persistência
    procedure CarregarTudo;
    procedure SalvarTudo;

    // utilitários
    function BuscarEstudantePorCodigo(Codigo: Integer): Integer; // retorna índice ou -1
    function BuscarProfessorPorCodigo(Codigo: Integer): Integer;
    function BuscarDisciplinaPorCodigo(Codigo: Integer): Integer;
    function BuscarTurmaPorCodigo(Codigo: Integer): Integer;
    function BuscarMatriculaPorCodigo(Codigo: Integer): Integer;

    // validações
    function CodigoEstudanteExiste(Codigo: Integer): Boolean;
    function CodigoProfessorExiste(Codigo: Integer): Boolean;
    function CodigoDisciplinaExiste(Codigo: Integer): Boolean;
    function CodigoTurmaExiste(Codigo: Integer): Boolean;

    // paths
    function ArquivoEstudantes: string;
    function ArquivoProfessores: string;
    function ArquivoDisciplinas: string;
    function ArquivoTurmas: string;
    function ArquivoMatriculas: string;
  end;

var
  DM: TDataModuleSimple;

implementation

uses
  IOUtils;

{ TDataModuleSimple }

constructor TDataModuleSimple.Create;
begin
  FEstudantes := TObjectList<TEstudante>.Create(True);
  FProfessores := TObjectList<TProfessor>.Create(True);
  FDisciplinas := TObjectList<TDisciplina>.Create(True);
  FTurmas := TObjectList<TTurma>.Create(True);
  FMatriculas := TObjectList<TMatricula>.Create(True);
end;

destructor TDataModuleSimple.Destroy;
begin
  FMatriculas.Free;
  FTurmas.Free;
  FDisciplinas.Free;
  FProfessores.Free;
  FEstudantes.Free;
  inherited;
end;

function TDataModuleSimple.GetAppPath: string;
begin
  Result := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));
end;

function TDataModuleSimple.ArquivoEstudantes: string;
begin
  Result := GetAppPath + 'estudantes.txt';
end;

function TDataModuleSimple.ArquivoProfessores: string;
begin
  Result := GetAppPath + 'professores.txt';
end;

function TDataModuleSimple.ArquivoDisciplinas: string;
begin
  Result := GetAppPath + 'disciplinas.txt';
end;

function TDataModuleSimple.ArquivoTurmas: string;
begin
  Result := GetAppPath + 'turmas.txt';
end;

function TDataModuleSimple.ArquivoMatriculas: string;
begin
  Result := GetAppPath + 'matriculas.txt';
end;

procedure TDataModuleSimple.CarregarTudo;
var
  sl: TStringList;
  i: Integer;
begin
  // Estudantes
  sl := TStringList.Create;
  try
    if FileExists(ArquivoEstudantes) then
    begin
      sl.LoadFromFile(ArquivoEstudantes, TEncoding.UTF8);
      for i := 0 to sl.Count - 1 do
        FEstudantes.Add(TEstudante.FromCSV(sl[i]));
    end;
  finally
    sl.Free;
  end;

  // Professores
  sl := TStringList.Create;
  try
    if FileExists(ArquivoProfessores) then
    begin
      sl.LoadFromFile(ArquivoProfessores, TEncoding.UTF8);
      for i := 0 to sl.Count - 1 do
        FProfessores.Add(TProfessor.FromCSV(sl[i]));
    end;
  finally
    sl.Free;
  end;

  // Disciplinas
  sl := TStringList.Create;
  try
    if FileExists(ArquivoDisciplinas) then
    begin
      sl.LoadFromFile(ArquivoDisciplinas, TEncoding.UTF8);
      for i := 0 to sl.Count - 1 do
        FDisciplinas.Add(TDisciplina.FromCSV(sl[i]));
    end;
  finally
    sl.Free;
  end;

  // Turmas
  sl := TStringList.Create;
  try
    if FileExists(ArquivoTurmas) then
    begin
      sl.LoadFromFile(ArquivoTurmas, TEncoding.UTF8);
      for i := 0 to sl.Count - 1 do
        FTurmas.Add(TTurma.FromCSV(sl[i]));
    end;
  finally
    sl.Free;
  end;

  // Matriculas
  sl := TStringList.Create;
  try
    if FileExists(ArquivoMatriculas) then
    begin
      sl.LoadFromFile(ArquivoMatriculas, TEncoding.UTF8);
      for i := 0 to sl.Count - 1 do
        FMatriculas.Add(TMatricula.FromCSV(sl[i]));
    end;
  finally
    sl.Free;
  end;
end;

procedure TDataModuleSimple.SalvarTudo;
var
  sl: TStringList;
  i: Integer;
begin
  // Estudantes
  sl := TStringList.Create;
  try
    for i := 0 to FEstudantes.Count - 1 do
      sl.Add(FEstudantes[i].ToCSV);
    sl.SaveToFile(ArquivoEstudantes, TEncoding.UTF8);
  finally
    sl.Free;
  end;

  // Professores
  sl := TStringList.Create;
  try
    for i := 0 to FProfessores.Count - 1 do
      sl.Add(FProfessores[i].ToCSV);
    sl.SaveToFile(ArquivoProfessores, TEncoding.UTF8);
  finally
    sl.Free;
  end;

  // Disciplinas
  sl := TStringList.Create;
  try
    for i := 0 to FDisciplinas.Count - 1 do
      sl.Add(FDisciplinas[i].ToCSV);
    sl.SaveToFile(ArquivoDisciplinas, TEncoding.UTF8);
  finally
    sl.Free;
  end;

  // Turmas
  sl := TStringList.Create;
  try
    for i := 0 to FTurmas.Count - 1 do
      sl.Add(FTurmas[i].ToCSV);
    sl.SaveToFile(ArquivoTurmas, TEncoding.UTF8);
  finally
    sl.Free;
  end;

  // Matriculas
  sl := TStringList.Create;
  try
    for i := 0 to FMatriculas.Count - 1 do
      sl.Add(FMatriculas[i].ToCSV);
    sl.SaveToFile(ArquivoMatriculas, TEncoding.UTF8);
  finally
    sl.Free;
  end;
end;

function TDataModuleSimple.BuscarEstudantePorCodigo(Codigo: Integer): Integer;
var i: Integer;
begin
  Result := -1;
  for i := 0 to FEstudantes.Count - 1 do
    if FEstudantes[i].Codigo = Codigo then Exit(i);
end;

function TDataModuleSimple.BuscarProfessorPorCodigo(Codigo: Integer): Integer;
var i: Integer;
begin
  Result := -1;
  for i := 0 to FProfessores.Count - 1 do
    if FProfessores[i].Codigo = Codigo then Exit(i);
end;

function TDataModuleSimple.BuscarDisciplinaPorCodigo(Codigo: Integer): Integer;
var i: Integer;
begin
  Result := -1;
  for i := 0 to FDisciplinas.Count - 1 do
    if FDisciplinas[i].Codigo = Codigo then Exit(i);
end;

function TDataModuleSimple.BuscarTurmaPorCodigo(Codigo: Integer): Integer;
var i: Integer;
begin
  Result := -1;
  for i := 0 to FTurmas.Count - 1 do
    if FTurmas[i].Codigo = Codigo then Exit(i);
end;

function TDataModuleSimple.BuscarMatriculaPorCodigo(Codigo: Integer): Integer;
var i: Integer;
begin
  Result := -1;
  for i := 0 to FMatriculas.Count - 1 do
    if FMatriculas[i].Codigo = Codigo then Exit(i);
end;

function TDataModuleSimple.CodigoEstudanteExiste(Codigo: Integer): Boolean;
begin
  Result := BuscarEstudantePorCodigo(Codigo) <> -1;
end;

function TDataModuleSimple.CodigoProfessorExiste(Codigo: Integer): Boolean;
begin
  Result := BuscarProfessorPorCodigo(Codigo) <> -1;
end;

function TDataModuleSimple.CodigoDisciplinaExiste(Codigo: Integer): Boolean;
begin
  Result := BuscarDisciplinaPorCodigo(Codigo) <> -1;
end;

function TDataModuleSimple.CodigoTurmaExiste(Codigo: Integer): Boolean;
begin
  Result := BuscarTurmaPorCodigo(Codigo) <> -1;
end;

initialization
  DM := TDataModuleSimple.Create;

finalization
  DM.Free;

end.

