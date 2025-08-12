object FormDisciplina: TFormDisciplina
  Left = 633
  Top = 0
  Caption = 'FormDisciplina'
  ClientHeight = 423
  ClientWidth = 871
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object PainelDisciplinas: TPanel
    Left = -8
    Top = 0
    Width = 881
    Height = 425
    TabOrder = 0
    object MenuDisciplinas: TStaticText
      Left = 240
      Top = 14
      Width = 257
      Height = 36
      Caption = 'Menu Disciplinas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object sgDisciplinas: TStringGrid
      Left = 24
      Top = 64
      Width = 665
      Height = 345
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
      Left = 703
      Top = 64
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
      end
    end
  end
end
