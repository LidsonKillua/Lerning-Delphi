object Form2: TForm2
  Left = 0
  Top = 0
  ActiveControl = btnResultado
  Caption = 'Form2'
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
  object lblAltura: TLabel
    Left = 72
    Top = 56
    Width = 105
    Height = 25
    Caption = 'Sua Altura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPeso: TLabel
    Left = 72
    Top = 104
    Width = 92
    Height = 25
    Caption = 'Seu Peso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblSexo: TLabel
    Left = 72
    Top = 161
    Width = 93
    Height = 25
    Caption = 'Seu Sexo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnResultado: TButton
    Left = 104
    Top = 232
    Width = 99
    Height = 41
    Caption = 'Resultado'
    TabOrder = 0
    OnClick = btnResultadoClick
  end
  object btnRequisitos: TButton
    Left = 248
    Top = 232
    Width = 99
    Height = 41
    Caption = 'Ver Requisitos'
    TabOrder = 1
    OnClick = btnRequisitosClick
  end
  object panTitulo: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    Caption = 'Calculadora - '#205'ndice de Massa Corporal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 376
    ExplicitTop = 88
    ExplicitWidth = 185
  end
  object edtAltura: TEdit
    Left = 200
    Top = 53
    Width = 171
    Height = 34
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TextHint = 'Digite sua altura'
  end
  object edtPeso: TEdit
    Left = 200
    Top = 101
    Width = 171
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TextHint = 'Digite seu peso'
  end
  object cmbSexo: TComboBox
    Left = 200
    Top = 158
    Width = 171
    Height = 33
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TextHint = 'Escolha o sexo'
    Items.Strings = (
      'F'
      'M')
  end
end
