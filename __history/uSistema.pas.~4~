unit uSistema;

interface

  type TClassePai = class
    protected
      Nome:String;
      Codigo:Integer;
      public
      function getNome:String;
      procedure setNome(aNome:String);
      function getCodigo:Integer;
      procedure setCodigo(aCodigo:Integer);

      constructor Create (aCodigo:Integer; aNome:String);
  end;

implementation

{ TClassePai }

//Construtor

constructor TClassePai.Create(aCodigo: Integer; aNome: String);
  begin
    Self.Nome := aNome;
    Self.Codigo := aCodigo;
  end;


  //Funções
function TClassePai.getCodigo: Integer;
  begin
    Result := Self.Codigo
  end;

function TClassePai.getNome: String;
  begin
    Result := Self.Nome
  end;


  //Procedures
procedure TClassePai.setCodigo(aCodigo: Integer);
  begin
    Self.Codigo := aCodigo;
  end;

procedure TClassePai.setNome(aNome: String);
  begin
    Self.Nome := aNome;
  end;

end.
