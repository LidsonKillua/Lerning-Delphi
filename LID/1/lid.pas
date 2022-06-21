unit lid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    n1 : integer;
    n2 : integer;
    f : real;
    s : string;
    b : boolean;

  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



end.
