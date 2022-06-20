unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, uFrmDataHora;

type
  TfrmPrincipal = class(TForm)
    pnlTitulo: TPanel;
    pagPrincipal: TPageControl;
    tabAba1: TTabSheet;
    tabAba2: TTabSheet;
    tabAba3: TTabSheet;
    gbxDigiteCaracteres: TGroupBox;
    labDigite: TLabel;
    edtCaracteres: TEdit;
    btnExibirDataHora: TButton;
    imlPrincipal: TImageList;
    panMudarAba1: TPanel;
    btnMudarAba1: TButton;
    rgrLinguagens: TRadioGroup;
    btnEnviar: TButton;
    labItensSelecionados: TLabel;
    btnLimparLista: TButton;
    pnlMudarAba2: TPanel;
    btnMudarAba2: TButton;
    btnMudarAba3: TButton;
    mmoObservacao: TMemo;
    lblObservacao: TLabel;
    btnLimparObservacao: TButton;
    btnSelecionarTudo: TButton;
    pnlMudarAba3: TPanel;
    btnMudarAba4: TButton;
    lbxItensSelecionados: TListBox;
    procedure FormShow(Sender: TObject);
    procedure edtCaracteresEnter(Sender: TObject);
    procedure edtCaracteresExit(Sender: TObject);
    procedure btnMudarAba1Click(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnLimparListaClick(Sender: TObject);
    procedure btnMudarAba2Click(Sender: TObject);
    procedure btnMudarAba3Click(Sender: TObject);
    procedure btnMudarAba4Click(Sender: TObject);
    procedure btnLimparObservacaoClick(Sender: TObject);
    procedure btnSelecionarTudoClick(Sender: TObject);
    procedure btnExibirDataHoraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnEnviarClick(Sender: TObject);
begin
  if rgrLinguagens.ItemIndex >= 0 then
    begin
        lbxItensSelecionados.Items.Add(rgrLinguagens.Items[rgrLinguagens.ItemIndex]);
        rgrLinguagens.ItemIndex := -1;
    end;
end;

procedure TfrmPrincipal.btnExibirDataHoraClick(Sender: TObject);
begin
  FrmDataHora.ShowModal;
end;

procedure TfrmPrincipal.btnLimparListaClick(Sender: TObject);
begin
  lbxItensSelecionados.Items.Clear;
end;

procedure TfrmPrincipal.btnLimparObservacaoClick(Sender: TObject);
begin
  mmoObservacao.Lines.Clear;
end;

procedure TfrmPrincipal.btnMudarAba1Click(Sender: TObject);
begin
  pagPrincipal.ActivePageIndex := 1;
end;

procedure TfrmPrincipal.btnMudarAba2Click(Sender: TObject);
begin
  pagPrincipal.ActivePageIndex := 2;
end;

procedure TfrmPrincipal.btnMudarAba3Click(Sender: TObject);
begin
  pagPrincipal.ActivePageIndex := 0;
end;

procedure TfrmPrincipal.btnMudarAba4Click(Sender: TObject);
begin
  pagPrincipal.ActivePageIndex := 1;
end;

procedure TfrmPrincipal.btnSelecionarTudoClick(Sender: TObject);
begin
  mmoObservacao.SelectAll;
  mmoObservacao.SetFocus;
end;

procedure TfrmPrincipal.edtCaracteresEnter(Sender: TObject);
begin
  edtCaracteres.Color := clYellow;
end;

procedure TfrmPrincipal.edtCaracteresExit(Sender: TObject);
begin
  if edtCaracteres.Text = '' then
  begin
    MessageDlg('Você não digitou nenhum conteúdo', mtError, [mbOK], 0);
    edtCaracteres.SetFocus;
  end
  else
    if Length(edtCaracteres.Text) <> 4 then
    begin
      MessageDlg('Você não digitou 4 caracteres', mtError, [mbOK], 0);
      edtCaracteres.SetFocus;
      edtCaracteres.SelectAll;
    end
    else
      edtCaracteres.Color := clWindow;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  pnlTitulo.Color := clBlack;
end;

end.
