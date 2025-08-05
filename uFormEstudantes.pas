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
    procedure AddEstudanteMouseLeave(Sender: TObject);
    procedure VerListaMouseEnter(Sender: TObject);
    procedure VerListaMouseLeave(Sender: TObject);

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
    AddEstudante.Font.Color := clBlue;
  end;

procedure TFormEstudantes.AddEstudanteMouseLeave(Sender: TObject);
  begin
    AddEstudante.Font.Color := clBlack;
  end;

procedure TFormEstudantes.VerListaMouseEnter(Sender: TObject);
  begin
    VerLista.Font.Color := clBlue;
  end;

procedure TFormEstudantes.VerListaMouseLeave(Sender: TObject);
  begin
    VerLista.Font.Color := clBlack;
  end;

end.
