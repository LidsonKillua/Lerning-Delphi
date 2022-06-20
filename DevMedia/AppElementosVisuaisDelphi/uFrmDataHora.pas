unit uFrmDataHora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFrmDataHora = class(TForm)
    panImagem: TPanel;
    panPrincipal: TPanel;
    labTitulo: TLabel;
    labDataHora: TLabel;
    imgRelogio: TImage;
    tmrDataHora: TTimer;
    procedure tmrDataHoraTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDataHora: TFrmDataHora;

implementation

{$R *.dfm}


procedure TFrmDataHora.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tmrDataHora.Enabled := False;
end;

procedure TFrmDataHora.FormShow(Sender: TObject);
begin
  tmrDataHora.Enabled := True;
  labDataHora.Caption := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
end;

procedure TFrmDataHora.tmrDataHoraTimer(Sender: TObject);
begin
  labDataHora.Caption := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
end;

end.
