unit uData;

interface

uses
  System.Classes, System.SysUtils, System.Generics.Collections, uModels;

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

    property Estudantes: TObjectList<TEstudante> read FEstudantes;
    property Professores: TObjectList<TProfessor> read FProfessores;
    property Disciplinas: TObjectList<TDisciplina> read FDisciplinas;
    property Turmas: TObjectList<TTurma> read FTurmas;
    property Matriculas: TObjectList<TMatricula> read FMatriculas;

    procedure CarregarTudo;
    procedure SalvarTudo;

    function CodigoEstudanteExiste(Codigo: Integer): Boolean;
    function CodigoProfessorExiste(Codigo: Integer): Boolean;
    function CodigoDisciplinaExiste(Codigo: Integer): Boolean;
    function CodigoTurmaExiste(Codigo: Integer): Boolean;
  end;

var
  DM: TDataModuleSimple;

implementation

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

procedure TDataModuleSimple.SalvarTudo;
var
  sl: TStringList;
  i: Integer;
begin
  sl := TStringList.Create;
  try
    for i := 0 to FEstudantes.Count - 1 do
      sl.Add(FEstudantes[i].ToCSV);
    sl.SaveToFile(GetAppPath + 'estudantes.txt', TEncoding.UTF8);
  finally
    sl.Free;
  end;

  begin
    sl := TStringList.Create;
    try
      for i := 0 to FProfessores.Count - 1 do
        sl.Add(FProfessores[i].ToCSV);
        sl.SaveToFile(GetAppPath + 'professores.txt', TEncoding.UTF8);
    finally
      sl.Free;
    end;
  end;
  begin
  sl := TStringList.Create;
     try
      for i := 0 to FDisciplinas.Count - 1 do
        sl.Add(FDisciplinas[i].ToCSV);
        sl.SaveToFile(GetAppPath + 'disciplinas.txt', TEncoding.UTF8);
    finally
      sl.Free;
    end;
  end;

  begin
  sl := TStringList.Create;
     try
      for i := 0 to FTurmas.Count - 1 do
        sl.Add(FTurmas[i].ToCSV);
        sl.SaveToFile(GetAppPath + 'turmas.txt', TEncoding.UTF8);
    finally
      sl.Free;
    end;
  end;

   begin
  sl := TStringList.Create;
     try
      for i := 0 to FMatriculas.Count - 1 do
        sl.Add(FMatriculas[i].ToCSV);
        sl.SaveToFile(GetAppPath + 'matriculas.txt', TEncoding.UTF8);
    finally
      sl.Free;
    end;
  end;

end;

procedure TDataModuleSimple.CarregarTudo;
var
  sl: TStringList;
  i: Integer;
begin

  sl := TStringList.Create;
  try
    if FileExists('estudantes.txt') then
    begin
      sl.LoadFromFile('estudantes.txt', TEncoding.UTF8);
      for i := 0 to sl.Count - 1 do
      try
        FEstudantes.Add(TEstudante.FromCSV(sl[i]));
      except
        on E: Exception do

      end;
    end;
  finally
    sl.Free;
  end;


  sl := TStringList.Create;
  try
    if FileExists('Professores') then
    begin
      sl.LoadFromFile('Professores', TEncoding.UTF8);
      for i := 0 to sl.Count - 1 do
      try
        FProfessores.Add(TProfessor.FromCSV(sl[i]));
      except
        on E: Exception do

      end;
    end;
  finally
    sl.Free;
  end;


  sl := TStringList.Create;
  try
    if FileExists('Disciplinas') then
    begin
      sl.LoadFromFile('Disciplinas', TEncoding.UTF8);
      for i := 0 to sl.Count - 1 do
      try
        FDisciplinas.Add(TDisciplina.FromCSV(sl[i]));
      except
        on E: Exception do

      end;
    end;
  finally
    sl.Free;
  end;


  sl := TStringList.Create;
  try
    if FileExists('Turmas') then
    begin
      sl.LoadFromFile('Turmas', TEncoding.UTF8);
      for i := 0 to sl.Count - 1 do
      try
        FTurmas.Add(TTurma.FromCSV(sl[i]));
      except
        on E: Exception do

      end;
    end;
  finally
    sl.Free;
  end;


  sl := TStringList.Create;
  try
    if FileExists('Matriculas') then
    begin
      sl.LoadFromFile('Matriculas', TEncoding.UTF8);
      for i := 0 to sl.Count - 1 do
      try
        FMatriculas.Add(TMatricula.FromCSV(sl[i]));
      except
        on E: Exception do

      end;
    end;
  finally
    sl.Free;
  end;
end;


function TDataModuleSimple.CodigoEstudanteExiste(Codigo: Integer): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := 0 to FEstudantes.Count - 1 do
    if FEstudantes[i].Codigo = Codigo then
      Exit(True);
end;

function TDataModuleSimple.CodigoProfessorExiste(Codigo: Integer): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := 0 to FProfessores.Count - 1 do
    if FProfessores[i].Codigo = Codigo then
      Exit(True);
end;

function TDataModuleSimple.CodigoDisciplinaExiste(Codigo: Integer): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := 0 to FDisciplinas.Count - 1 do
    if FDisciplinas[i].Codigo = Codigo then
      Exit(True);
end;

function TDataModuleSimple.CodigoTurmaExiste(Codigo: Integer): Boolean;
var
  i: Integer;
begin
  Result := False;
  for i := 0 to FTurmas.Count - 1 do
    if FTurmas[i].Codigo = Codigo then
      Exit(True);
end;

initialization
  DM := TDataModuleSimple.Create;

finalization
  DM.Free;

end.

