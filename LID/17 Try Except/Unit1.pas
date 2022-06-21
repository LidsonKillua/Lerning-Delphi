unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    edt1: TEdit;
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
i : Integer;
s : string;
begin
{
try
      //bloco de código
except
      //bloco de código se der erro
end;
}

{
try
  i := StrToInt(Edt1.Text);
  ShowMessage('Sucesso');
except
  Messagedlg('Erro de conversão', mtError, [mbOK], 0);
end;
}

try
  if tryStrToInt(Edt1.Text, i) then
    ShowMessage('Convertido com sucesso')
  else
  begin
    Messagedlg('O valor não pode ser convertido', mtwarning, [mbOK], 0);
    exit;
  end;
  i := StrToInt(Edt1.Text);
  ShowMessage('Sucesso!')
except
  Messagedlg('Erro de conversão', mtError, [mbOK], 0);
end;

end;

end.
