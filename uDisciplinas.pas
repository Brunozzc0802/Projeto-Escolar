unit uDisciplinas;

interface

  uses uSistema,uEstudante,uProfessor;

  type TDisciplinas = class
    NomeDisciplinas:String;
    CodigoDisciplinas:Integer;
    function getCodigoDisciplinas:Integer;
    procedure setCodigoDisciplinas(aCodigoDisciplinas:Integer);
    function getNomeDisciplinas:String;
    procedure setNomeDisciplinas(aNomeDisciplinas:String);
  end;

implementation

{ TDisciplinas }

function TDisciplinas.getCodigoDisciplinas: Integer;
  begin
    Result := Self.CodigoDisciplinas;
  end;

function TDisciplinas.getNomeDisciplinas: String;
  begin
    Result := Self.NomeDisciplinas;
  end;


procedure TDisciplinas.setCodigoDisciplinas(aCodigoDisciplinas: Integer);
  begin
    Self.CodigoDisciplinas := aCodigoDisciplinas
  end;

procedure TDisciplinas.setNomeDisciplinas(aNomeDisciplinas: String);
  begin
    Self.NomeDisciplinas := aNomeDisciplinas;
  end;

end.
