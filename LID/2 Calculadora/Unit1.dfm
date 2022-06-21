object frmCalculadoraBasica: TfrmCalculadoraBasica
  Left = 0
  Top = 0
  Caption = 'CalculadoraBasica'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 256
    Top = 75
    Width = 8
    Height = 13
    Caption = '='
  end
  object edtValor1: TEdit
    Left = 104
    Top = 72
    Width = 58
    Height = 21
    TabOrder = 0
    TextHint = 'Valor 1'
  end
  object edtValor2: TEdit
    Left = 183
    Top = 72
    Width = 58
    Height = 21
    TabOrder = 1
    TextHint = 'Valor 2'
  end
  object edtResultado: TEdit
    Left = 270
    Top = 72
    Width = 67
    Height = 21
    TabOrder = 2
    TextHint = 'Resultado'
  end
  object btn1: TButton
    Left = 104
    Top = 115
    Width = 58
    Height = 30
    Caption = '+'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 183
    Top = 115
    Width = 58
    Height = 30
    Caption = '-'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 104
    Top = 163
    Width = 58
    Height = 30
    Caption = 'x'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 183
    Top = 163
    Width = 58
    Height = 30
    Caption = '/'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 264
    Top = 115
    Width = 58
    Height = 30
    Caption = 'div'
    TabOrder = 7
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 264
    Top = 163
    Width = 58
    Height = 30
    Caption = 'mod'
    TabOrder = 8
    OnClick = btn6Click
  end
end
