unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    btn1: TButton;
    mmo1: TMemo;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
var
  i : Integer;
begin
  i := 0;
  mmo1.Clear;
  {
  while i <= 10 do     //Testa antes
  begin
    mmo1.Lines.Add('Adicionando Linha: ' + IntToStr(i));
    Inc(i);
  end;

  mmo1.Lines.Add('Finalizado');
  }
  repeat     //Testa depois
    mmo1.Lines.Add('Adicionando Linha: ' + IntToStr(i));
    inc(i);
  until (i > 10);
end;

end.
