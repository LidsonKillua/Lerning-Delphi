object Form1: TForm1
  Left = 0
  Top = 0
  Caption = '12 - Propriedades do Form'
  ClientHeight = 446
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PopupMenu = pm1
  Position = poScreenCenter
  DesignSize = (
    814
    446)
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 814
    Height = 49
    Align = alTop
    Caption = 'pnl1'
    TabOrder = 0
    ExplicitWidth = 635
    DesignSize = (
      814
      49)
    object btn1: TButton
      Left = 672
      Top = 0
      Width = 142
      Height = 46
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Limpar'
      TabOrder = 0
      OnClick = btn1Click
    end
    object edt1: TEdit
      Left = 0
      Top = 0
      Width = 669
      Height = 46
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 1
    end
  end
  object mmo1: TMemo
    Left = 0
    Top = 52
    Width = 814
    Height = 355
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'mmo1')
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    ExplicitWidth = 635
    ExplicitHeight = 264
  end
  object btn2: TButton
    Left = 731
    Top = 413
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Sair'
    TabOrder = 2
    OnClick = btn2Click
    ExplicitLeft = 552
    ExplicitTop = 322
  end
  object mm1: TMainMenu
    Left = 144
    Top = 184
    object Inicio1: TMenuItem
      Caption = 'Inicio'
      object este1: TMenuItem
        Caption = 'Teste'
      end
      object Biscoito1: TMenuItem
        Caption = 'Biscoito'
      end
    end
    object sair1: TMenuItem
      Caption = 'sair'
      object Sair2: TMenuItem
        Caption = 'Sair'
        OnClick = Sair2Click
      end
    end
  end
  object pm1: TPopupMenu
    Left = 312
    Top = 192
    object E1: TMenuItem
      Caption = 'Teste'
    end
    object este21: TMenuItem
      Caption = 'Teste2'
      object ApagarMemo1: TMenuItem
        Caption = 'Apagar Memo'
        OnClick = ApagarMemo1Click
      end
      object ApagarEdit1: TMenuItem
        Caption = 'Apagar Edit'
        OnClick = ApagarEdit1Click
      end
    end
  end
end
