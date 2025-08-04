unit uFormEstudantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormEstudantes = class(TForm)
    PainelEstudantes: TPanel;
    Titulo: TLabel;
    CliqueOpção: TLabel;
    AddEstudante: TLabel;
    VerLista: TLabel;
    procedure AddEstudanteMouseEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstudantes: TFormEstudantes;

implementation

{$R *.dfm}

procedure TFormEstudantes.AddEstudanteMouseEnter(Sender: TObject);
  begin

  end;

end.
