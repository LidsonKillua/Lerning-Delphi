unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmSecundario = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    SecGlobal : String;
  end;

var
  frmSecundario: TfrmSecundario;

implementation

{$R *.dfm}

end.
