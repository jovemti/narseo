inherited frmGridPessoaTransportadora: TfrmGridPessoaTransportadora
  Tag = 2109
  Caption = 'Cadastro de Pessoas - Transportadora'
  ClientWidth = 1300
  ExplicitWidth = 1316
  ExplicitHeight = 539
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlBotton: TPanel
    Width = 1300
    Visible = False
    ExplicitWidth = 1300
    inherited btnNovo: TButton
      Left = 916
      ExplicitLeft = 916
    end
    inherited btnVisualizar: TButton
      Left = 1012
      ExplicitLeft = 1012
    end
    inherited btnEditar: TButton
      Left = 1108
      ExplicitLeft = 1108
    end
    inherited btnExcluir: TButton
      Left = 1204
      ExplicitLeft = 1204
    end
  end
  inherited grpLista: TGroupBox
    Left = 7
    Top = 129
    Width = 1286
    Height = 312
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    ExplicitLeft = 7
    ExplicitTop = 129
    ExplicitWidth = 1286
    ExplicitHeight = 312
    inherited pnlFuncoes: TPanel
      Left = 946
      Height = 285
      Margins.Bottom = 7
      ExplicitLeft = 946
      ExplicitHeight = 285
    end
    inherited Grid: TcxGrid
      Left = 9
      Width = 937
      Height = 285
      Margins.Left = 7
      Margins.Bottom = 7
      ExplicitLeft = 9
      ExplicitWidth = 937
      ExplicitHeight = 285
      inherited View: TcxGridDBTableView
        OnDblClick = ViewDblClick
        object ColViewID: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'codigo'
          Width = 50
        end
        object ColViewCNPJ: TcxGridDBColumn
          Caption = 'CNPJ/CPF'
          DataBinding.FieldName = 'cnpj'
          Width = 80
        end
        object ColViewNome: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'nome'
          Width = 200
        end
        object ColViewFantasia: TcxGridDBColumn
          Caption = 'Fantasia'
          DataBinding.FieldName = 'fantasia'
          Width = 200
        end
        object ColViewCidade: TcxGridDBColumn
          Caption = 'Cidade'
          DataBinding.FieldName = 'cidade'
          Width = 120
        end
        object ColViewTelefone: TcxGridDBColumn
          Caption = 'Telefone'
          DataBinding.FieldName = 'tel1'
          Width = 80
        end
      end
    end
    inherited pnlFiltros: TPanel
      Left = 977
      Height = 285
      Margins.Right = 7
      Margins.Bottom = 7
      ExplicitLeft = 977
      ExplicitHeight = 285
      inherited GridFiltros: TcxGrid
        Height = 285
        Margins.Left = 7
        Margins.Bottom = 7
        ExplicitHeight = 285
      end
    end
  end
  inherited Ribbon: TdxRibbon
    Width = 1300
    ExplicitWidth = 1300
    inherited MTabRegistros: TdxRibbonTab
      Index = 0
    end
  end
  inherited stb: TStatusBar
    Width = 1300
    ExplicitWidth = 1300
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
  end
  inherited qConsulta: TUniQuery
    SQL.Strings = (
      'SELECT vp.codigo, '
      #9'vp.datacadastro, '
      #9'vp.nome, '
      #9'vp.fantasia, '
      #9'vp.cnpj, '
      #9'vp.cidade, '
      #9'vp.uf, '
      #9'vp.tel1, '
      #9'vp.inativo, '
      #9'vp.cliente, '
      #9'vp.colaborador, '
      #9'vp.fornecedor, '
      #9'vp.representante, '
      #9'vp.transportadora'
      '   FROM vw_pessoas vp'
      '  WHERE vp.transportadora = TRUE ;')
  end
  inherited qInfo: TUniQuery
    ParamData = <
      item
        DataType = ftString
        Name = 'colunas'
        ParamType = ptInput
        Value = #39#39
      end
      item
        DataType = ftString
        Name = 'tabela'
        ParamType = ptInput
        Value = 'vw_pessoas'
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
      OnClick = MnNovoClick
    end
    inherited MnVisualizar: TdxBarLargeButton
      OnClick = MnVisualizarClick
    end
    inherited MnEditar: TdxBarLargeButton
      OnClick = MnEditarClick
    end
    inherited MnExcluir: TdxBarLargeButton
      OnClick = MnExcluirClick
    end
  end
end
