unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uFrmRequisitos, uFrmResultado, uDadosPessoa;

type
  TForm2 = class(TForm)
    btnResultado: TButton;
    btnRequisitos: TButton;
    lblAltura: TLabel;
    lblPeso: TLabel;
    lblSexo: TLabel;
    panTitulo: TPanel;
    edtAltura: TEdit;
    edtPeso: TEdit;
    cmbSexo: TComboBox;
    procedure btnRequisitosClick(Sender: TObject);
    procedure btnResultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnRequisitosClick(Sender: TObject);
begin
  FrmRequisitos.ShowModal;
end;

procedure TForm2.btnResultadoClick(Sender: TObject);
begin
  try
    PDadosPessoa.Altura := StrToFloat(edtAltura.Text);
    PDadosPessoa.Peso   := StrToFloat(edtPeso.Text);
    PDadosPessoa.Sexo   := cmbSexo.Text;
    PDadosPessoa.IMC    := CalcularIMC(PDadosPessoa.Peso,
                                       PDadosPessoa.Altura,
                                       PDadosPessoa.Sexo);
    FrmResultado.ShowModal;
  except
    ShowMessage('Dados Inválidos!');
  end;

end;

end.
