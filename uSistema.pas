unit uSistema;

interface

  type TClassePai = class
    protected
      Nome:String;
      Cpf:String;

      public
      function getNome:String;
      procedure setNome(aNome:String);
      function getCpf:String;
      procedure setCpf(aCpf:String);
      constructor Create (aNome, aCpf:String);
  end;

implementation

{ TClassePai }

constructor TClassePai.Create(aNome, aCpf: String);
  begin
    Nome := aNome;
    Cpf := aCpf;
  end;

function TClassePai.getCpf: String;
  begin
    Result := Self.Cpf
  end;

function TClassePai.getNome: String;
  begin
    Result := Self.Nome
  end;

procedure TClassePai.setCpf(aCpf: String);
  begin
    Self.Cpf := aCpf;
  end;

procedure TClassePai.setNome(aNome: String);
  begin
    Self.Nome := aNome;
  end;

end.
