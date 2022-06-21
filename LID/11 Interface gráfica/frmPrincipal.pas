unit frmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    Inicio1: TMenuItem;
    este1: TMenuItem;
    Biscoito1: TMenuItem;
    btn1: TButton;
    edt1: TEdit;
    pnl1: TPanel;
    mmo1: TMemo;
    pm1: TPopupMenu;
    E1: TMenuItem;
    este21: TMenuItem;
    ApagarMemo1: TMenuItem;
    ApagarEdit1: TMenuItem;
    btn2: TButton;
    sair1: TMenuItem;
    Sair2: TMenuItem;
    procedure btn1Click(Sender: TObject);
    procedure ApagarMemo1Click(Sender: TObject);
    procedure ApagarEdit1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ApagarEdit1Click(Sender: TObject);
begin
  edt1.Clear;
end;

procedure TForm1.ApagarMemo1Click(Sender: TObject);
begin
  mmo1.Clear;
end;

procedure TForm1.btn1Click(Sender: TObject);
var
retorno : Integer;
begin
  mmo1.Clear;
  retorno := MessageDlg('Teste Msg Erro, Deseja prosseguir?', mtConfirmation, [mbYES, mbNo], 0);
  ShowMessage('Retorno = ' + IntToStr(retorno));

end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Sair2Click(Sender: TObject);
begin
  Close;
end;

end.
