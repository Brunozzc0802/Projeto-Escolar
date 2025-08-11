object FormMatriculas: TFormMatriculas
  Left = 0
  Top = 0
  Caption = 'FormMatriculas'
  ClientHeight = 622
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object PainelMatriculas: TPanel
    Left = 88
    Top = 32
    Width = 713
    Height = 561
    TabOrder = 0
    object MenuMatriculas: TStaticText
      Left = 240
      Top = 14
      Width = 251
      Height = 36
      Caption = 'Menu Matriculas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object PainelBotoes: TPanel
      Left = 24
      Top = 464
      Width = 665
      Height = 81
      TabOrder = 1
      object btnAdicionar: TButton
        AlignWithMargins = True
        Left = 16
        Top = 16
        Width = 138
        Height = 49
        Margins.Left = 15
        Margins.Top = 15
        Margins.Right = 510
        Margins.Bottom = 15
        Align = alClient
        Caption = 'Adicionar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnAdicionarClick
      end
      object btnEditar: TButton
        AlignWithMargins = True
        Left = 176
        Top = 16
        Width = 138
        Height = 49
        Margins.Left = 175
        Margins.Top = 15
        Margins.Right = 350
        Margins.Bottom = 15
        Align = alClient
        Caption = 'Editar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnEditarClick
      end
      object btnExcluir: TButton
        AlignWithMargins = True
        Left = 338
        Top = 16
        Width = 138
        Height = 49
        Margins.Left = 337
        Margins.Top = 15
        Margins.Right = 188
        Margins.Bottom = 15
        Align = alClient
        Caption = 'Excluir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnExcluirClick
      end
      object btnAtualizar: TButton
        AlignWithMargins = True
        Left = 501
        Top = 16
        Width = 138
        Height = 49
        Margins.Left = 500
        Margins.Top = 15
        Margins.Right = 25
        Margins.Bottom = 15
        Align = alClient
        Caption = 'Voltar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = btnAtualizarClick
      end
    end
    object btnBaixarArquivos: TButton
      Left = 24
      Top = 408
      Width = 665
      Height = 41
      Caption = 'Baixar Arquivos .txt'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnBaixarArquivosClick
    end
    object sgMatriculas: TStringGrid
      Left = 24
      Top = 72
      Width = 665
      Height = 330
      Color = clMenu
      ColCount = 3
      DefaultColWidth = 219
      DefaultColAlignment = taCenter
      RowCount = 2
      FixedRows = 0
      TabOrder = 3
      RowHeights = (
        24
        24)
    end
  end
end
