program Project1;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {frmPrincipal},
  Unit3 in 'Unit3.pas' {frmSecundario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmSecundario, frmSecundario);
  Application.Run;
end.
