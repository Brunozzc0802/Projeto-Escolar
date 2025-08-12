object FormEstudante: TFormEstudante
  Left = 633
  Top = 0
  Cursor = crHandPoint
  Caption = 'FormEstudante'
  ClientHeight = 429
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object PainelEstudante: TPanel
    Left = -8
    Top = 0
    Width = 873
    Height = 433
    Caption = 'PainelEstudante'
    TabOrder = 0
    object MenuEstudante: TStaticText
      Left = 240
      Top = 14
      Width = 246
      Height = 36
      Caption = 'Menu Estudante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object sgEstudantes: TStringGrid
      Left = 16
      Top = 56
      Width = 665
      Height = 346
      Color = clMenu
      ColCount = 2
      DefaultColWidth = 330
      DefaultColAlignment = taCenter
      RowCount = 2
      FixedRows = 0
      TabOrder = 1
      RowHeights = (
        24
        24)
    end
    object PainelBotoes: TPanel
      Left = 695
      Top = 56
      Width = 162
      Height = 345
      TabOrder = 2
      object btnAdicionar: TBitBtn
        AlignWithMargins = True
        Left = 11
        Top = 21
        Width = 140
        Height = 33
        Margins.Left = 10
        Margins.Top = 20
        Margins.Right = 10
        Margins.Bottom = 290
        Align = alClient
        Caption = 'Adicionar'
        TabOrder = 0
        OnClick = btnAdicionarClick
        ExplicitLeft = -93
        ExplicitTop = 186
        ExplicitHeight = 31
      end
      object btnEditar: TBitBtn
        AlignWithMargins = True
        Left = 11
        Top = 71
        Width = 140
        Height = 33
        Margins.Left = 10
        Margins.Top = 70
        Margins.Right = 10
        Margins.Bottom = 240
        Align = alClient
        Caption = 'Editar'
        TabOrder = 1
        OnClick = btnEditarClick
        ExplicitLeft = -61
        ExplicitTop = 21
        ExplicitHeight = 43
      end
      object btnExcluir: TBitBtn
        AlignWithMargins = True
        Left = 11
        Top = 171
        Width = 140
        Height = 33
        Margins.Left = 10
        Margins.Top = 170
        Margins.Right = 10
        Margins.Bottom = 140
        Align = alClient
        Caption = 'Excluir'
        TabOrder = 2
        OnClick = btnExcluirClick
        ExplicitLeft = -29
        ExplicitTop = 121
        ExplicitHeight = 43
      end
      object btnAtualizar: TBitBtn
        AlignWithMargins = True
        Left = 11
        Top = 121
        Width = 140
        Height = 33
        Margins.Left = 10
        Margins.Top = 120
        Margins.Right = 10
        Margins.Bottom = 190
        Align = alClient
        Caption = 'Atualizar'
        TabOrder = 3
        OnClick = btnAtualizarClick
        ExplicitLeft = -77
        ExplicitTop = 71
        ExplicitHeight = 43
      end
      object btnBaixarArquivos: TBitBtn
        AlignWithMargins = True
        Left = 11
        Top = 221
        Width = 140
        Height = 33
        Margins.Left = 10
        Margins.Top = 220
        Margins.Right = 10
        Margins.Bottom = 90
        Align = alClient
        Caption = 'Baixar Arquivos'
        TabOrder = 4
        OnClick = btnBaixarArquivosClick
        ExplicitLeft = -77
        ExplicitTop = 171
        ExplicitHeight = 43
      end
      object btnVoltar: TBitBtn
        AlignWithMargins = True
        Left = 11
        Top = 271
        Width = 140
        Height = 33
        Margins.Left = 10
        Margins.Top = 270
        Margins.Right = 10
        Margins.Bottom = 40
        Align = alClient
        Caption = 'Voltar Ao Menu'
        TabOrder = 5
        OnClick = btnVoltarClick
        ExplicitLeft = -69
        ExplicitTop = 221
        ExplicitHeight = 43
      end
    end
  end
end
