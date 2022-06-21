program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frmCalculadoraBasica};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCalculadoraBasica, frmCalculadoraBasica);
  Application.Run;
end.
