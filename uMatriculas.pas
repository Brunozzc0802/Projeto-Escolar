unit uMatriculas;

interface

  uses uSistema,uEstudante,uProfessor,uDisciplinas,uTurmas;

  type TMatriculas = class
  CodigoMatriculas:Integer;
  CodigoTurma:Integer;
  CodigoEstudante:Integer;
  function getCodigoMatriculas:Integer;
  procedure setCodigoMatriculas(aCodigoMatriculas:Integer);
  function getCodigoTurma:Integer;
  procedure setCodigoTurma(aCodigoTurma:Integer);
  function getCodigoEstudante:Integer;
  procedure setCodigoEstudante(aCodigoEstudante:Integer);
  end;

implementation

{ TMatriculas }

function TMatriculas.getCodigoEstudante: Integer;
  begin
    Result := Self.CodigoEstudante;
  end;

function TMatriculas.getCodigoMatriculas: Integer;
  begin
    Result := Self.CodigoMatriculas;
  end;

function TMatriculas.getCodigoTurma: Integer;
  begin
    Result := Self.CodigoTurma;
  end;

procedure TMatriculas.setCodigoEstudante(aCodigoEstudante: Integer);
  begin
    Self.CodigoEstudante := aCodigoEstudante;
  end;

procedure TMatriculas.setCodigoMatriculas(aCodigoMatriculas: Integer);
  begin
    Self.CodigoMatriculas := aCodigoMatriculas;
  end;

procedure TMatriculas.setCodigoTurma(aCodigoTurma: Integer);
  begin
    Self.CodigoTurma := aCodigoTurma;
  end;

end.
