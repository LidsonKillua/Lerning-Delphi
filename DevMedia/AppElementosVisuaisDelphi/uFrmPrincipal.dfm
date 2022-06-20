object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Trabalhando com Eventos e Componentes Visuais'
  ClientHeight = 340
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 57
    Align = alTop
    Caption = 'Trabalhando com Eventos no Delphi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pagPrincipal: TPageControl
    Left = 0
    Top = 57
    Width = 624
    Height = 283
    ActivePage = tabAba1
    Align = alClient
    TabOrder = 1
    object tabAba1: TTabSheet
      Caption = 'Aba 1'
      object gbxDigiteCaracteres: TGroupBox
        Left = 56
        Top = 48
        Width = 185
        Height = 105
        Caption = 'Evento OnExit do Edit'
        TabOrder = 0
        object labDigite: TLabel
          Left = 16
          Top = 33
          Width = 92
          Height = 13
          Caption = 'Digite 4 Caracteres'
        end
        object edtCaracteres: TEdit
          Left = 16
          Top = 52
          Width = 121
          Height = 21
          TabOrder = 0
          TextHint = 'Digite 4 Caracteres'
          OnEnter = edtCaracteresEnter
          OnExit = edtCaracteresExit
        end
      end
      object panMudarAba1: TPanel
        Left = 0
        Top = 214
        Width = 616
        Height = 41
        Align = alBottom
        TabOrder = 1
        object btnMudarAba1: TButton
          Left = 540
          Top = 1
          Width = 75
          Height = 39
          Align = alRight
          Caption = '->'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnMudarAba1Click
        end
      end
      object btnExibirDataHora: TButton
        Left = 392
        Top = 72
        Width = 137
        Height = 66
        Caption = 'Exibir Outro Form'
        TabOrder = 2
        OnClick = btnExibirDataHoraClick
      end
    end
    object tabAba2: TTabSheet
      Caption = 'Aba 2'
      ImageIndex = 1
      object labItensSelecionados: TLabel
        Left = 356
        Top = 33
        Width = 90
        Height = 13
        Caption = 'Itens Selecionados'
      end
      object rgrLinguagens: TRadioGroup
        Left = 24
        Top = 56
        Width = 185
        Height = 105
        Caption = 'Selecione Uma das Op'#231#245'es'
        Columns = 2
        Items.Strings = (
          'Delphi'
          'Python'
          'PHP'
          'Java'
          '.NET')
        TabOrder = 0
      end
      object btnEnviar: TButton
        Left = 231
        Top = 96
        Width = 75
        Height = 25
        Caption = '>>'
        TabOrder = 1
        OnClick = btnEnviarClick
      end
      object btnLimparLista: TButton
        Left = 450
        Top = 167
        Width = 75
        Height = 25
        Caption = 'Limpar'
        TabOrder = 2
        OnClick = btnLimparListaClick
      end
      object pnlMudarAba2: TPanel
        Left = 0
        Top = 214
        Width = 616
        Height = 41
        Align = alBottom
        TabOrder = 3
        object btnMudarAba2: TButton
          Left = 540
          Top = 1
          Width = 75
          Height = 39
          Align = alRight
          Caption = '->'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnMudarAba2Click
        end
        object btnMudarAba3: TButton
          Left = 1
          Top = 1
          Width = 75
          Height = 39
          Align = alLeft
          Caption = '<-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnMudarAba3Click
        end
      end
      object lbxItensSelecionados: TListBox
        Left = 356
        Top = 56
        Width = 169
        Height = 105
        ItemHeight = 13
        TabOrder = 4
      end
    end
    object tabAba3: TTabSheet
      Caption = 'Aba 3'
      ImageIndex = 2
      object lblObservacao: TLabel
        Left = 8
        Top = 16
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
      end
      object mmoObservacao: TMemo
        Left = 8
        Top = 35
        Width = 593
        Height = 118
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object btnLimparObservacao: TButton
        Left = 526
        Top = 159
        Width = 75
        Height = 25
        Caption = 'Limpar'
        TabOrder = 1
        OnClick = btnLimparObservacaoClick
      end
      object pnlMudarAba3: TPanel
        Left = 0
        Top = 214
        Width = 616
        Height = 41
        Align = alBottom
        TabOrder = 2
        object btnMudarAba4: TButton
          Left = 1
          Top = 1
          Width = 75
          Height = 39
          Align = alLeft
          Caption = '<-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnMudarAba4Click
        end
      end
      object btnSelecionarTudo: TButton
        Left = 412
        Top = 159
        Width = 108
        Height = 25
        Caption = 'Selecionar Tudo'
        TabOrder = 3
        OnClick = btnSelecionarTudoClick
      end
    end
  end
  object imlPrincipal: TImageList
    Left = 384
    Top = 64
  end
end
