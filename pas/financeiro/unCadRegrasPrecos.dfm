inherited frmCadRegrasPrecos: TfrmCadRegrasPrecos
  Caption = 'Regras de Pre'#231'os'
  ClientHeight = 450
  ClientWidth = 800
  ExplicitWidth = 806
  ExplicitHeight = 479
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlBotton: TPanel
    Top = 415
    Width = 800
    inherited btnCancelar: TButton
      Left = 523
    end
    inherited btnSalvar: TButton
      Left = 616
    end
    inherited btnFechar: TButton
      Left = 709
    end
  end
  inherited grpContent: TGroupBox
    Width = 790
    Height = 363
    object lblCodigo: TLabel
      Left = 10
      Top = 24
      Width = 41
      Height = 15
      Caption = 'C'#243'digo:'
      FocusControl = edtCodigo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 111
      Top = 24
      Width = 54
      Height = 15
      Caption = 'Descri'#231#227'o:'
      FocusControl = edtdescricao
    end
    object edtCodigo: TcxDBSpinEdit
      Left = 57
      Top = 21
      DataBinding.DataField = 'codigo'
      DataBinding.DataSource = ds
      Enabled = False
      Properties.SpinButtons.Visible = False
      Style.Color = clBtnFace
      TabOrder = 0
      Width = 48
    end
    object edtdescricao: TcxDBTextEdit
      Left = 167
      Top = 21
      DataBinding.DataField = 'descricao'
      DataBinding.DataSource = ds
      TabOrder = 1
      Width = 515
    end
    object grpObservacao: TGroupBox
      AlignWithMargins = True
      Left = 8
      Top = 268
      Width = 774
      Height = 87
      Margins.Left = 6
      Margins.Top = 6
      Margins.Right = 6
      Margins.Bottom = 6
      Align = alBottom
      Caption = ' Observa'#231#245'es '
      TabOrder = 2
      ExplicitLeft = 10
      ExplicitTop = 300
      object mmoobservacao: TcxDBMemo
        AlignWithMargins = True
        Left = 5
        Top = 20
        Align = alClient
        DataBinding.DataField = 'observacao'
        DataBinding.DataSource = ds
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        OnEnter = grpContentEnter
        ExplicitTop = 18
        ExplicitWidth = 485
        ExplicitHeight = 64
        Height = 62
        Width = 764
      end
    end
    object cbbbloqueada: TcxDBCheckBox
      Left = 688
      Top = 21
      Caption = 'Bloqueada'
      DataBinding.DataField = 'bloqueada'
      DataBinding.DataSource = ds
      TabOrder = 3
      Width = 89
    end
    object grpProdutos: TGroupBox
      AlignWithMargins = True
      Left = 8
      Top = 49
      Width = 774
      Height = 210
      Margins.Left = 6
      Margins.Top = 32
      Margins.Right = 6
      Align = alClient
      Caption = ' Produtos relacionados '
      TabOrder = 4
      ExplicitTop = 47
      ExplicitHeight = 212
      object Grid: TcxGrid
        AlignWithMargins = True
        Left = 8
        Top = 20
        Width = 724
        Height = 182
        Margins.Left = 6
        Margins.Right = 6
        Margins.Bottom = 6
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 211
        object View: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsItens
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = ColumnMarkup_vista
              DisplayText = 'Quantidade Total:'
            end
            item
              Kind = skSum
              FieldName = 'entrada'
              Column = ColumnMarkup_prazo
              DisplayText = 'Total Entregue:'
            end
            item
              Kind = skCount
              FieldName = 'produto'
              Column = ColumnProduto
              DisplayText = 'Total de Itens:'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.Indicator = True
          Styles.Header = StyleHeader
          object ColumnID: TcxGridDBColumn
            Caption = '#ID'
            DataBinding.FieldName = 'codigo'
            Width = 50
          end
          object ColumnProduto: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'produto'
            Width = 300
          end
          object ColumnCategoria: TcxGridDBColumn
            Caption = 'Categoria'
            DataBinding.FieldName = 'categoria'
            Visible = False
            GroupIndex = 0
            Width = 100
          end
          object ColumnMarkup_vista: TcxGridDBColumn
            Caption = 'Markup a Vista'
            DataBinding.FieldName = 'markup_vista'
            Width = 80
          end
          object ColumnValor_vista: TcxGridDBColumn
            Caption = 'Valor a Vista'
            DataBinding.FieldName = 'valor_vista'
            Width = 80
          end
          object ColumnMarkup_prazo: TcxGridDBColumn
            Caption = 'Markup a Prazo'
            DataBinding.FieldName = 'markup_prazo'
            Width = 80
          end
          object ColumnValor_prazo: TcxGridDBColumn
            Caption = 'Valor a Prazo'
            DataBinding.FieldName = 'valor_prazo'
            Width = 80
          end
        end
        object Master: TcxGridLevel
          GridView = View
        end
      end
      object pnlACT: TPanel
        Left = 738
        Top = 17
        Width = 34
        Height = 191
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitHeight = 220
        DesignSize = (
          34
          191)
        object btnADD: TButton
          Left = 0
          Top = 3
          Width = 27
          Height = 27
          Anchors = [akTop, akRight]
          Enabled = False
          HotImageIndex = 3
          ImageIndex = 3
          ImageMargins.Left = 2
          Images = ImageList16
          TabOrder = 0
          OnClick = btnADDClick
        end
        object btnEDT: TButton
          Left = 0
          Top = 36
          Width = 27
          Height = 27
          Anchors = [akTop, akRight]
          Enabled = False
          HotImageIndex = 9
          ImageIndex = 9
          ImageMargins.Left = 2
          Images = ImageList16
          TabOrder = 1
          OnClick = btnEDTClick
        end
        object btnRMV: TButton
          Left = 0
          Top = 69
          Width = 27
          Height = 27
          Anchors = [akTop, akRight]
          Enabled = False
          HotImageIndex = 4
          ImageIndex = 4
          ImageMargins.Left = 2
          Images = ImageList16
          TabOrder = 2
          OnClick = btnRMVClick
        end
        object btnAtualizar: TButton
          Left = 0
          Top = 102
          Width = 27
          Height = 27
          Anchors = [akTop, akRight]
          Enabled = False
          HotImageIndex = 5
          ImageIndex = 5
          ImageMargins.Left = 2
          Images = ImageList16
          TabOrder = 3
          OnClick = btnAtualizarClick
        end
      end
    end
  end
  inherited pnlHelp: TPanel
    Width = 791
    inherited mmoHelp: TMemo
      Width = 744
    end
  end
  inherited ds: TUniDataSource
    Left = 520
    Top = 8
  end
  inherited qConsulta: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO produto_regras'
      '  (descricao, observacao, bloqueada)'
      'VALUES'
      '  (:descricao, :observacao, :bloqueada)')
    SQLDelete.Strings = (
      'DELETE FROM produto_regras'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE produto_regras'
      'SET'
      
        '  descricao = :descricao, observacao = :observacao, bloqueada = ' +
        ':bloqueada'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM produto_regras'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT descricao, observacao, bloqueada FROM produto_regras'
      'WHERE'
      '  codigo = :codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM produto_regras'
      ''
      ') t')
    SQL.Strings = (
      'SELECT codigo, empresa, descricao, observacao, bloqueada'
      '  FROM produto_regras'
      ' WHERE codigo = :codigo;')
    Left = 480
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
        Value = 0
      end>
    object FieldConsultacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object FieldConsultaempresa: TIntegerField
      FieldName = 'empresa'
      Required = True
    end
    object FieldConsultadescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 100
    end
    object FieldConsultaobservacao: TStringField
      FieldName = 'observacao'
      Size = 250
    end
    object FieldConsultabloqueada: TBooleanField
      FieldName = 'bloqueada'
      Required = True
    end
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
    DesignInfo = 524724
  end
  object StyleRepository: TcxStyleRepository
    Left = 422
    Top = 190
    PixelsPerInch = 96
    object StyleHeader: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
    end
    object StyleItemInativo: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
    end
    object StyleItemAtivo: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      TextColor = clNavy
    end
  end
  object qItens: TUniQuery
    Tag = 7100
    SQLInsert.Strings = (
      'INSERT INTO venda_itens'
      
        '  (valor_unitario, desconto_unitario, acrescimo_unitario, quanti' +
        'dade, desconto_total, acrescimo_total, valor_total, entregue, ca' +
        'ncelado)'
      'VALUES'
      
        '  (:valor_unitario, :desconto_unitario, :acrescimo_unitario, :qu' +
        'antidade, :desconto_total, :acrescimo_total, :valor_total, :entr' +
        'egue, :cancelado)')
    SQLDelete.Strings = (
      'DELETE FROM venda_itens'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE venda_itens'
      'SET'
      
        '  valor_unitario = :valor_unitario, desconto_unitario = :descont' +
        'o_unitario, acrescimo_unitario = :acrescimo_unitario, quantidade' +
        ' = :quantidade, desconto_total = :desconto_total, acrescimo_tota' +
        'l = :acrescimo_total, valor_total = :valor_total, entregue = :en' +
        'tregue, cancelado = :cancelado'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM venda_itens'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT valor_unitario, desconto_unitario, acrescimo_unitario, qu' +
        'antidade, desconto_total, acrescimo_total, valor_total, entregue' +
        ', cancelado FROM venda_itens'
      'WHERE'
      '  codigo = :P_1_codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM venda_itens'
      ''
      ') t')
    Connection = Connection.Conn
    SQL.Strings = (
      'SELECT pp.codigo,'
      #9'pp.regra, '
      #9'pp.produto as idproduto, '
      #9'pd.nome as produto,'
      #9'pc.categoria,'
      #9'pp.markup_vista, '
      #9'pp.valor_vista, '
      #9'pp.markup_prazo,'
      #9'pp.valor_prazo'
      '   FROM produto_precos pp'
      '   LEFT JOIN produtos pd on pd.codigo = pp.produto'
      '   LEFT JOIN produto_categorias pc on pc.codigo = pd.categoria'
      '  WHERE pp.regra = :codigo'
      '  ORDER BY pc.categoria, pd.nome ASC;')
    MasterSource = ds
    MasterFields = 'codigo'
    DetailFields = 'regra'
    Left = 568
    Top = 6
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsItens: TUniDataSource
    DataSet = qItens
    Left = 608
    Top = 6
  end
end
