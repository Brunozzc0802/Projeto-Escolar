unit uProfessor;

interface

  uses uSistema;

  type TProfessores = class (TCodigo)
    NomeProfessor:String;
    CodigoProfessor:Integer;
    Cpf:String;
    function getNomeProfessor:String;
    procedure setNomeProfessor(aNomeProfessor:String);
    function getCodigoProfessor:Integer;
    procedure setCodigoProfessor(aCodigoProfessor:Integer);
    function getCpf:String;
    procedure setCpf(aCpf:String);
  end;


implementation

{ TProfessores }

function TProfessores.getCodigoProfessor: Integer;
  begin
    Result := Self.CodigoProfessor;
  end;

function TProfessores.getCpf: String;
  begin
    Result := Self.Cpf;
  end;

function TProfessores.getNomeProfessor: String;
  begin
    Result := Self.NomeProfessor;
  end;

procedure TProfessores.setCodigoProfessor(aCodigoProfessor: Integer);
  begin
    Self.CodigoProfessor := aCodigoProfessor;
  end;

procedure TProfessores.setCpf(aCpf: String);
  begin
    Self.Cpf := aCpf;
  end;

procedure TProfessores.setNomeProfessor(aNomeProfessor: String);
  begin
    Self.NomeProfessor := aNomeProfessor;
  end;

end.
