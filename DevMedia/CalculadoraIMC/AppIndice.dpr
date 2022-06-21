program AppIndice;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Form2},
  uFrmRequisitos in 'uFrmRequisitos.pas' {FrmRequisitos},
  uFrmResultado in 'uFrmResultado.pas' {FrmResultado},
  uDadosPessoa in 'uDadosPessoa.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFrmRequisitos, FrmRequisitos);
  Application.CreateForm(TFrmResultado, FrmResultado);
  Application.Run;
end.
