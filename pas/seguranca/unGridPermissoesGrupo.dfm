inherited frmGridPermissoesGrupo: TfrmGridPermissoesGrupo
  Tag = 1101
  Caption = '.: Seguran'#231'a: Permiss'#245'es de Grupo de usu'#225'rios '
  ClientWidth = 1000
  ExplicitWidth = 1016
  ExplicitHeight = 539
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlBotton: TPanel
    Width = 1000
    Visible = False
    ExplicitTop = 287
    ExplicitWidth = 923
    inherited btnNovo: TButton
      Left = 615
      Enabled = False
      Visible = False
      ExplicitLeft = 538
    end
    inherited btnVisualizar: TButton
      Left = 903
      ExplicitLeft = 826
    end
    inherited btnEditar: TButton
      Left = 807
      Enabled = False
      Visible = False
      ExplicitLeft = 730
    end
    inherited btnExcluir: TButton
      Left = 711
      Enabled = False
      Visible = False
      ExplicitLeft = 634
    end
  end
  inherited grpLista: TGroupBox
    Left = 7
    Top = 129
    Width = 986
    Height = 312
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    ExplicitLeft = 7
    ExplicitTop = 129
    ExplicitWidth = 909
    ExplicitHeight = 158
    inherited pnlFuncoes: TPanel
      Left = 646
      Height = 285
      Margins.Bottom = 7
      ExplicitLeft = 569
      ExplicitHeight = 131
    end
    inherited Grid: TcxGrid
      Left = 9
      Width = 637
      Height = 285
      Margins.Left = 7
      Margins.Bottom = 7
      ExplicitLeft = 9
      ExplicitWidth = 560
      ExplicitHeight = 131
      inherited View: TcxGridDBTableView
        object Columncodigo: TcxGridDBColumn
          Caption = '#C'#243'digo'
          DataBinding.FieldName = 'codigo'
          Width = 60
        end
        object Columnnome: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'nome'
          Width = 200
        end
        object Columnativo: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ativo'
          Width = 60
        end
      end
    end
    inherited pnlFiltros: TPanel
      Left = 677
      Height = 285
      Margins.Right = 7
      Margins.Bottom = 7
      ExplicitLeft = 600
      ExplicitHeight = 131
      inherited GridFiltros: TcxGrid
        Height = 285
        Margins.Left = 7
        Margins.Bottom = 7
        ExplicitHeight = 131
      end
    end
  end
  inherited Ribbon: TdxRibbon
    Width = 1000
    ExplicitWidth = 923
    inherited MTabRegistros: TdxRibbonTab
      Index = 0
    end
  end
  inherited stb: TStatusBar
    Width = 1000
    ExplicitTop = 327
    ExplicitWidth = 923
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
  end
  inherited qConsulta: TUniQuery
    SQL.Strings = (
      'SELECT codigo, '
      #9'nome, '
      #9'cd_departamento, '
      #9'departamento, '
      #9'ativo'
      '   FROM vw_system_grupo_usuarios ;')
  end
  inherited qInfo: TUniQuery
    SQL.Strings = (
      'SELECT vw.schema, '
      #9'vw.tabela, '
      #9'vw.coluna,'
      #9'(case '
      #9#9'WHEN vw.tipo = '#39'integer'#39' THEN '#39'integer'#39
      #9#9'WHEN vw.tipo ilike '#39'character%'#39' THEN '#39'string'#39
      #9#9'WHEN vw.tipo ilike '#39'date%'#39' THEN '#39'date'#39
      #9#9'WHEN vw.tipo ilike '#39'time%'#39' THEN '#39'time'#39
      #9#9'WHEN vw.tipo ilike '#39'float%'#39' THEN '#39'float'#39
      #9#9'WHEN vw.tipo ilike '#39'boolean'#39' THEN '#39'boolean'#39' END'
      #9') as tipo,'
      #9'vw.padrao, '
      #9'vw.nulo,'
      #9'tc.descricao'
      '   FROM vw_detalhe_tabela vw'
      '   LEFT OUTER JOIN tabelas tb on tb.nome = vw.tabela'
      
        '   LEFT JOIN tabela_campos tc on tc.tabela = tb.codigo and vw.co' +
        'luna = tc.campo'
      '  WHERE vw.tabela = :tabela '
      '    AND vw.coluna NOT IN (:colunas)')
    ParamData = <
      item
        DataType = ftString
        Name = 'tabela'
        ParamType = ptInput
        Value = 'vw_system_grupo_usuarios'
      end
      item
        DataType = ftString
        Name = 'colunas'
        ParamType = ptInput
        Value = #39#39
      end>
  end
  inherited StyleRepository: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited BarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BarOpcoes: TdxBar
      FloatClientWidth = 65
      FloatClientHeight = 216
    end
    inherited BarOutros: TdxBar
      FloatClientWidth = 76
      FloatClientHeight = 21
    end
    inherited BarSistem: TdxBar
      FloatClientWidth = 51
      FloatClientHeight = 108
    end
    inherited MnNovo: TdxBarLargeButton
      Enabled = False
      Visible = ivNever
    end
    inherited MnVisualizar: TdxBarLargeButton
      OnClick = MnVisualizarClick
    end
    inherited MnEditar: TdxBarLargeButton
      OnClick = MnEditarClick
    end
    inherited MnExcluir: TdxBarLargeButton
      Enabled = False
      Visible = ivNever
    end
  end
end
