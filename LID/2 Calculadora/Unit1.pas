{*************************************************************}
{                                                             }
{    Borland Delphi Visual Component Library                  }
{    Copyright (c) 1995,99 Borland International              }
{    Copyright (c) 2021 Lidson Oliveira                       }
{                                                             }
{*************************************************************}

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TfrmCalculadoraBasica = class(TForm)
    edtValor1: TEdit;
    edtValor2: TEdit;
    lbl1: TLabel;
    edtResultado: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    // procedure Enter(Sender: TObject; var Key: Char);
  private
    { Private declarations }

    function somar(Value1, Value2: Integer) : Integer;
    function subtrair(Value1, Value2: Integer) : Integer;
    function multiplicar(Value1, Value2: Integer) : Integer;
    function dividir(Value1, Value2: Integer) : Integer;
    function dividirReais(Value1, Value2: Currency) : Currency;
    function resto(Value1, Value2: Integer) : Integer;

  public
    { Public declarations }
  end;

var
  frmCalculadoraBasica: TfrmCalculadoraBasica;

implementation

{$R *.dfm}

procedure TfrmCalculadoraBasica.btn1Click(Sender: TObject);
var
  Resultado : Integer;
begin
  Resultado := somar(StrToInt(edtValor1.Text), StrToInt(edtValor2.Text));
  edtResultado.Text := IntToStr(Resultado);
end;

procedure TfrmCalculadoraBasica.btn2Click(Sender: TObject);
var
  Resultado : Integer;
begin
  Resultado := subtrair(StrToInt(edtValor1.Text), StrToInt(edtValor2.Text));
  edtResultado.Text := IntToStr(Resultado);
end;


procedure TfrmCalculadoraBasica.btn3Click(Sender: TObject);
var
  Resultado : Integer;
begin
  Resultado := multiplicar(StrToInt(edtValor1.Text), StrToInt(edtValor2.Text));
  edtResultado.Text := IntToStr(Resultado);
end;

procedure TfrmCalculadoraBasica.btn4Click(Sender: TObject);
var
  Resultado : Currency;
begin
  Resultado := dividirReais(StrToCurr(edtValor1.Text), StrToCurr(edtValor2.Text));
  edtResultado.Text := CurrToStr(Resultado);
end;


procedure TfrmCalculadoraBasica.btn5Click(Sender: TObject);
var
  Resultado : Integer;
begin
  Resultado := dividir(StrToInt(edtValor1.Text), StrToInt(edtValor2.Text));
  edtResultado.Text := IntToStr(Resultado);
end;

procedure TfrmCalculadoraBasica.btn6Click(Sender: TObject);
var
  Resultado : Integer;
begin
  Resultado := resto(StrToInt(edtValor1.Text), StrToInt(edtValor2.Text));
  edtResultado.Text := IntToStr(Resultado);
end;

function TfrmCalculadoraBasica.somar(Value1: Integer; Value2: Integer) : Integer;
begin
  Result := Value1 + Value2
end;

function TfrmCalculadoraBasica.multiplicar(Value1, Value2: Integer): Integer;
begin
  Result := Value1 * Value2;
end;

function TfrmCalculadoraBasica.resto(Value1, Value2: Integer): Integer;
begin
  Result := Value1 mod Value2
end;

function TfrmCalculadoraBasica.subtrair(Value1: Integer; Value2: Integer) : Integer;
begin
  Result := Value1 - Value2;
end;
function TfrmCalculadoraBasica.dividir(Value1: Integer; Value2: Integer) : Integer;
begin
  Result := (Value1 div Value2)
end;

function TfrmCalculadoraBasica.dividirReais(Value1, Value2: Currency) : Currency;
begin
  Result := Value1 / Value2;
end;

end.
