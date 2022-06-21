unit uFrmResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDadosPessoa;

type
  TFrmResultado = class(TForm)
    panTitulo: TPanel;
    labAltura: TLabel;
    labPeso: TLabel;
    labSexo: TLabel;
    labIMC: TLabel;
    labResultAltura: TLabel;
    labResultPeso: TLabel;
    labResultSexo: TLabel;
    labResultIMC: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmResultado: TFrmResultado;

implementation

{$R *.dfm}

procedure TFrmResultado.FormShow(Sender: TObject);
begin
  labResultAltura.Caption := FloatToStr(PDadosPessoa.Altura);
  labResultPeso.Caption := FloatToStr(PDadosPessoa.Peso);
  labResultSexo.Caption := PDadosPessoa.Sexo;
  labResultIMC.Caption := PDadosPessoa.IMC;
end;

end.
