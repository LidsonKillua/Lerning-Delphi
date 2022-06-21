unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    btn1: TButton;
    pb1: TProgressBar;
    lbl1: TLabel;
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
  {
  for i := 0 to 10000 do    // i += 1 até 10000
  begin
    pb1.Position := i;
    Application.ProcessMessages;
  end;
  }
  for i := 10000 downto 0 do
    begin
      pb1.Position := i;
      Application.ProcessMessages;
    end;

end;

end.
