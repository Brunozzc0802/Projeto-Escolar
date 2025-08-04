object Form1: TForm1
  Left = 0
  Top = 0
  Margins.Top = 30
  Caption = 'For'
  ClientHeight = 658
  ClientWidth = 952
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Painel: TPanel
    Left = 224
    Top = 80
    Width = 513
    Height = 513
    Margins.Right = 20
    Color = clMedGray
    ParentBackground = False
    TabOrder = 0
    object Titulo: TLabel
      AlignWithMargins = True
      Left = 31
      Top = 16
      Width = 481
      Height = 37
      Margins.Left = 30
      Margins.Top = 15
      Margins.Right = 0
      Align = alTop
      Caption = 'Bem Vindo Ao Menu Principal'
      Color = clFuchsia
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 452
    end
    object Estudantes: TLabel
      Left = 137
      Top = 99
      Width = 256
      Height = 32
      Margins.Right = 20
      Caption = ' 1 - Estudantes'#8287#8287#8287#8287
      Color = clMenu
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Profesores: TLabel
      Left = 137
      Top = 160
      Width = 232
      Height = 32
      Margins.Right = 20
      Caption = ' 2 - Professores'#8287#8287#8287
      Color = clMenu
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Disciplinas: TLabel
      Left = 137
      Top = 218
      Width = 256
      Height = 32
      Margins.Right = 20
      Caption = ' 3 - Disciplinas'#8287#8287#8287#8287#8287
      Color = clMenu
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Turmas: TLabel
      Left = 137
      Top = 276
      Width = 256
      Height = 32
      Margins.Right = 20
      Caption = ' 4 - Turmas'#12644#12644#12644#8287#8287#8287
      Color = clMenu
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Matriculas: TLabel
      Left = 137
      Top = 334
      Width = 256
      Height = 32
      Margins.Right = 20
      Caption = ' 5 - Matr'#237'culas'#12644#8287#8287#8287
      Color = clMenu
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object CliqueOpção: TLabel
      Left = 80
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
  end
end
