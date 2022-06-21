unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);

var
  Nome : String;
  Sobrenome : String;
const
  c_Nome = 'Lidson';

begin
  Nome := InputBox('Entrada de dados', 'Informe seu nome', '');

  if Nome <> 'Lidson' then
    Nome := c_Nome;

  Sobrenome := InputBox('Entrada de dados', 'Informe seu sobrenome', '');
  ShowMessage('Seu nome é: ' + Nome + ' ' + Sobrenome);
end;

end.
