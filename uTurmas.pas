unit uTurmas;

interface

  uses uSistema,uEstudante,uProfessor;

  type TTurmas = class
    CodigoTurma:Integer;
    CodigoProfessor:Integer;
    CodigoEstudante:Integer;
    function getCodigoTurma:Integer;
    procedure setCodigoTurma(aCodigoTurma:Integer);
    function getCodigoProfessor:Integer;
    procedure setCodigoProfessor(aCodigoProfessor:Integer);
    function getCodigoEstudante:Integer;
    procedure setCodigoEstudante (aCodigoEstudante:Integer);


  end;

implementation

{ TTurmas }

function TTurmas.getCodigoEstudante: Integer;
  begin
    Result := Self.CodigoEstudante;
  end;

function TTurmas.getCodigoProfessor: Integer;
  begin
    Result := Self.CodigoProfessor;
  end;

function TTurmas.getCodigoTurma: Integer;
  begin
    Result := Self.CodigoTurma;
  end;

procedure TTurmas.setCodigoTurma(aCodigoTurma: Integer);
  begin
    Self.CodigoTurma := aCodigoTurma;
  end;

procedure TTurmas.setCodigoEstudante(aCodigoEstudante: Integer);
  begin
    Self.CodigoEstudante := aCodigoEstudante;
  end;

procedure TTurmas.setCodigoProfessor(aCodigoProfessor: Integer);
  begin
    Self.CodigoProfessor := aCodigoProfessor;
  end;

end.
