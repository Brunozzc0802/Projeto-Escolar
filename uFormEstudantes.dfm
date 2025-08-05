object FormEstudantes: TFormEstudantes
  AlignWithMargins = True
  Left = 102
  Top = 83
  Margins.Left = 30
  Margins.Right = 30
  Caption = 'FormEstudantes'
  ClientHeight = 683
  ClientWidth = 861
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object PainelEstudantes: TPanel
    Left = 192
    Top = 56
    Width = 529
    Height = 513
    Margins.Right = 20
    Color = clMedGray
    ParentBackground = False
    TabOrder = 0
    object Titulo: TLabel
      AlignWithMargins = True
      Left = 51
      Top = 16
      Width = 447
      Height = 37
      Margins.Left = 50
      Margins.Top = 15
      Margins.Right = 30
      Align = alTop
      Alignment = taCenter
      Caption = 'Menu Estudantes'
      Color = clFuchsia
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 129
      ExplicitWidth = 391
    end
    object CliqueOpção: TLabel
      Left = 97
      Top = 449
      Width = 350
      Height = 23
      Caption = 'Clique Na Op'#231#227'o Que Deseja Acessar'
      Font.Charset = 163
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic, fsUnderline]
      ParentFont = False
    end
    object AddEstudante: TLabel
      AlignWithMargins = True
      Left = 51
      Top = 76
      Width = 427
      Height = 36
      Margins.Left = 50
      Margins.Top = 20
      Margins.Right = 50
      Margins.Bottom = 400
      Align = alClient
      Alignment = taCenter
      Caption = ' 1 - Adicionar Estudante'#8287
      Color = clMenu
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnMouseEnter = AddEstudanteMouseEnter
      OnMouseLeave = AddEstudanteMouseLeave
      ExplicitWidth = 369
      ExplicitHeight = 32
    end
    object VerLista: TLabel
      AlignWithMargins = True
      Left = 51
      Top = 136
      Width = 427
      Height = 36
      Margins.Left = 50
      Margins.Top = 80
      Margins.Right = 50
      Margins.Bottom = 340
      Align = alClient
      Alignment = taCenter
      Caption = ' 2 - Lista De Estudantes'#8287
      Color = clMenu
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnMouseEnter = VerListaMouseEnter
      OnMouseLeave = VerListaMouseLeave
      ExplicitWidth = 363
      ExplicitHeight = 32
    end
  end
end
