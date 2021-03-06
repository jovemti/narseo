inherited frmCadServicos: TfrmCadServicos
  Caption = 'Cadastro de Servi'#231'os'
  ClientHeight = 626
  ClientWidth = 672
  OnCreate = FormCreate
  ExplicitWidth = 678
  ExplicitHeight = 655
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlBotton: TPanel
    Top = 591
    Width = 672
    TabOrder = 3
    ExplicitTop = 591
    ExplicitWidth = 672
    inherited btnCancelar: TButton
      Left = 395
      ExplicitLeft = 395
    end
    inherited btnSalvar: TButton
      Left = 488
      ExplicitLeft = 488
    end
    inherited btnFechar: TButton
      Left = 581
      ExplicitLeft = 581
    end
  end
  inherited grpContent: TGroupBox
    Top = 109
    Width = 662
    Height = 482
    TabOrder = 1
    ExplicitTop = 109
    ExplicitWidth = 662
    ExplicitHeight = 482
    object PageControl: TcxPageControl
      AlignWithMargins = True
      Left = 5
      Top = 20
      Width = 652
      Height = 457
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabGeral
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 3
      ClientRectBottom = 457
      ClientRectRight = 652
      ClientRectTop = 25
      object tabGeral: TcxTabSheet
        Caption = ' Geral '
        ImageIndex = 0
        object grp1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 646
          Height = 426
          Align = alClient
          TabOrder = 0
          object Label2: TLabel
            Left = 35
            Top = 45
            Width = 38
            Height = 15
            Caption = 'Grupo:'
            FocusControl = edtIDGrupo
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 11
            Top = 74
            Width = 62
            Height = 15
            Caption = 'Sub-grupo:'
            FocusControl = edtIDSubGrupo
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 17
            Top = 16
            Width = 56
            Height = 15
            Caption = 'Categoria:'
            FocusControl = edtCategoria
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 44
            Top = 132
            Width = 159
            Height = 15
            Caption = 'Tempo minimo de execu'#231#227'o:'
            FocusControl = edtexecucao_minimo
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 336
            Top = 132
            Width = 162
            Height = 15
            Caption = 'Tempo maximo de execucao:'
            FocusControl = edtexecucao_maximo
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtIDGrupo: TcxDBSpinEdit
            Tag = 100
            Left = 79
            Top = 42
            DataBinding.DataField = 'grupo'
            DataBinding.DataSource = ds
            Properties.SpinButtons.Visible = False
            TabOrder = 2
            OnEnter = grpContentEnter
            Width = 50
          end
          object edtIDSubGrupo: TcxDBSpinEdit
            Tag = 100
            Left = 79
            Top = 71
            DataBinding.DataField = 'subgrupo'
            DataBinding.DataSource = ds
            Properties.SpinButtons.Visible = False
            TabOrder = 4
            OnEnter = grpContentEnter
            Width = 50
          end
          object edtCategoria: TcxDBSpinEdit
            Tag = 100
            Left = 79
            Top = 13
            DataBinding.DataField = 'categoria'
            DataBinding.DataSource = ds
            Properties.SpinButtons.Visible = False
            TabOrder = 0
            OnEnter = grpContentEnter
            Width = 50
          end
          object grpProdDescriLonga: TGroupBox
            AlignWithMargins = True
            Left = 7
            Top = 177
            Width = 632
            Height = 242
            Margins.Left = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alBottom
            Caption = ' Descri'#231#227'o Longa '
            TabOrder = 10
            object mmoProdDescricaoLonga: TcxDBMemo
              AlignWithMargins = True
              Left = 5
              Top = 20
              Align = alClient
              DataBinding.DataField = 'descricao'
              DataBinding.DataSource = ds
              TabOrder = 0
              OnEnter = grpContentEnter
              Height = 217
              Width = 622
            end
          end
          object cbbCategoria: TcxDBLookupComboBox
            Left = 135
            Top = 13
            DataBinding.DataField = 'categoria'
            DataBinding.DataSource = ds
            Properties.KeyFieldNames = 'codigo'
            Properties.ListColumns = <
              item
                Caption = 'Descri'#231#227'o'
                Width = 310
                FieldName = 'categoria'
              end>
            Properties.ListSource = dmProdutoConsultas.dsCategoria
            TabOrder = 1
            OnEnter = grpContentEnter
            Width = 490
          end
          object cbbGrupo: TcxDBLookupComboBox
            Left = 135
            Top = 42
            DataBinding.DataField = 'grupo'
            DataBinding.DataSource = ds
            Properties.KeyFieldNames = 'codigo'
            Properties.ListColumns = <
              item
                Caption = 'Descri'#231#227'o'
                Width = 310
                FieldName = 'descricao'
              end>
            Properties.ListSource = dmProdutoConsultas.dsGrupos
            TabOrder = 3
            OnEnter = grpContentEnter
            Width = 490
          end
          object cbbSubGrupo: TcxDBLookupComboBox
            Left = 135
            Top = 71
            DataBinding.DataField = 'subgrupo'
            DataBinding.DataSource = ds
            Properties.KeyFieldNames = 'codigo'
            Properties.ListColumns = <
              item
                Caption = 'Descri'#231#227'o'
                Width = 310
                FieldName = 'descricao'
              end>
            Properties.ListSource = dmProdutoConsultas.dsSubGrupos
            TabOrder = 5
            OnEnter = grpContentEnter
            Width = 490
          end
          object cbbempenho: TcxDBCheckBox
            Left = 17
            Top = 100
            Caption = 'Empenho de produtos e materiais para execu'#231#227'o.'
            DataBinding.DataField = 'empenho'
            DataBinding.DataSource = ds
            Style.TextStyle = [fsBold]
            TabOrder = 6
            OnEnter = grpContentEnter
            OnExit = cbbempenhoExit
            Width = 306
          end
          object edtexecucao_minimo: TcxDBSpinEdit
            Left = 209
            Top = 129
            DataBinding.DataField = 'execucao_minimo'
            DataBinding.DataSource = ds
            Properties.SpinButtons.Visible = False
            TabOrder = 7
            OnEnter = grpContentEnter
            Width = 121
          end
          object edtexecucao_maximo: TcxDBSpinEdit
            Left = 504
            Top = 129
            DataBinding.DataField = 'execucao_maximo'
            DataBinding.DataSource = ds
            Properties.SpinButtons.Visible = False
            TabOrder = 8
            OnEnter = grpContentEnter
            Width = 121
          end
          object cbbcertificado: TcxDBCheckBox
            Left = 17
            Top = 153
            Caption = 'Servi'#231'o exige certifica'#231#227'o ap'#243's conclus'#227'o.'
            DataBinding.DataField = 'certificado'
            DataBinding.DataSource = ds
            Style.TextStyle = [fsBold]
            TabOrder = 9
            OnEnter = grpContentEnter
            Width = 306
          end
        end
      end
      object tabFiscal: TcxTabSheet
        Caption = ' Fiscal '
        ImageIndex = 1
        object grp2: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 646
          Height = 426
          Align = alClient
          TabOrder = 0
          Visible = False
        end
      end
      object TabPoliticas: TcxTabSheet
        Caption = ' Politicas '
        ImageIndex = 3
        object grpEmpresas: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 646
          Height = 306
          Align = alClient
          Caption = ' Empresas '
          TabOrder = 0
          object GridEmpresas: TcxGrid
            AlignWithMargins = True
            Left = 8
            Top = 20
            Width = 630
            Height = 278
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
            object ViewEmpresas: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dmProdutoConsultas.dsEmpresas
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.Header = StyleHeader
              object ColumnID: TcxGridDBColumn
                Caption = '#ID'
                DataBinding.FieldName = 'codigo'
                Width = 60
              end
              object ColumnEmpresa: TcxGridDBColumn
                Caption = 'Empresa'
                DataBinding.FieldName = 'fantasia'
                Width = 300
              end
              object ColumnMatriz: TcxGridDBColumn
                Caption = 'Matriz'
                DataBinding.FieldName = 'matriz'
                Width = 80
              end
              object ColumnIDMatriz: TcxGridDBColumn
                Caption = 'ID Matriz'
                DataBinding.FieldName = 'cd_matriz'
              end
            end
            object MasterEmpresas: TcxGridLevel
              GridView = ViewEmpresas
            end
          end
        end
        object grpConfiguracoes: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 315
          Width = 646
          Height = 114
          Align = alBottom
          Caption = ' Configura'#231#245'es '
          TabOrder = 1
          object Label11: TLabel
            Left = 19
            Top = 24
            Width = 174
            Height = 15
            Caption = 'Markup para vendas a vista (%):'
            FocusControl = edtmarkup_vista
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 291
            Top = 24
            Width = 69
            Height = 15
            Caption = 'Valor a vista:'
            FocusControl = edtvalor_vista
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 14
            Top = 53
            Width = 179
            Height = 15
            Caption = 'Markup para vendas a prazo (%):'
            FocusControl = edtmarkup_prazo
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 286
            Top = 53
            Width = 74
            Height = 15
            Caption = 'Valor a prazo:'
            FocusControl = edtvalor_prazo
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 47
            Top = 82
            Width = 146
            Height = 15
            Caption = 'Comiss'#227'o sobre venda (%):'
            FocusControl = edtcomissao
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtmarkup_vista: TcxDBCalcEdit
            Left = 199
            Top = 21
            DataBinding.DataField = 'markup_vista'
            DataBinding.DataSource = dsProdutoEmpresa
            TabOrder = 0
            OnEnter = grpContentEnter
            Width = 80
          end
          object edtvalor_vista: TcxDBCurrencyEdit
            Left = 366
            Top = 21
            DataBinding.DataField = 'valor_vista'
            DataBinding.DataSource = dsProdutoEmpresa
            TabOrder = 1
            OnEnter = grpContentEnter
            Width = 100
          end
          object edtmarkup_prazo: TcxDBCalcEdit
            Left = 199
            Top = 50
            DataBinding.DataField = 'markup_prazo'
            DataBinding.DataSource = dsProdutoEmpresa
            TabOrder = 2
            OnEnter = grpContentEnter
            Width = 80
          end
          object edtvalor_prazo: TcxDBCurrencyEdit
            Left = 366
            Top = 50
            DataBinding.DataField = 'valor_prazo'
            DataBinding.DataSource = dsProdutoEmpresa
            TabOrder = 3
            OnEnter = grpContentEnter
            Width = 100
          end
          object edtcomissao: TcxDBCalcEdit
            Left = 199
            Top = 79
            DataBinding.DataField = 'comissao'
            DataBinding.DataSource = dsProdutoEmpresa
            TabOrder = 4
            OnEnter = grpContentEnter
            Width = 80
          end
        end
      end
      object TabEmpenho: TcxTabSheet
        Caption = ' Empenho de produtos '
        ImageIndex = 3
        object grpEmpenho: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 646
          Height = 426
          Align = alClient
          Caption = 
            ' Lista de produtos empenhados por padr'#227'o para execu'#231#227'o do Servi'#231 +
            'o '
          TabOrder = 0
          Visible = False
          object GridEmpenho: TcxGrid
            AlignWithMargins = True
            Left = 8
            Top = 20
            Width = 630
            Height = 358
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
            object ViewEmpenho: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dmProdutoConsultas.dsEmpresas
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              Styles.Header = StyleHeader
              object ColumnPDID: TcxGridDBColumn
                Caption = '#ID'
                Width = 50
              end
              object ColumnPDNome: TcxGridDBColumn
                Caption = 'Produto'
                Width = 300
              end
              object ColumnPDQuantidade: TcxGridDBColumn
                Caption = 'Quantidade'
                Width = 80
              end
              object ColumnPDObrigatorio: TcxGridDBColumn
                Caption = 'Obrigatorio'
                Width = 80
              end
            end
            object MasterEmpenho: TcxGridLevel
              GridView = ViewEmpenho
            end
          end
          object pnlACT: TPanel
            Left = 2
            Top = 384
            Width = 642
            Height = 40
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              642
              40)
            object btnNovo: TButton
              Left = 354
              Top = 3
              Width = 90
              Height = 30
              Anchors = [akTop, akRight]
              Caption = 'Novo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotImageIndex = 3
              ImageIndex = 3
              ImageMargins.Left = 10
              Images = ImageList16
              ParentFont = False
              TabOrder = 0
            end
            object btnEditar: TButton
              Left = 450
              Top = 3
              Width = 90
              Height = 30
              Anchors = [akTop, akRight]
              Caption = 'Editar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotImageIndex = 7
              ImageIndex = 7
              ImageMargins.Left = 10
              Images = ImageList16
              ParentFont = False
              TabOrder = 1
            end
            object btnExcluir: TButton
              Left = 546
              Top = 3
              Width = 90
              Height = 30
              Anchors = [akTop, akRight]
              Caption = 'Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              HotImageIndex = 6
              ImageIndex = 6
              ImageMargins.Left = 10
              Images = ImageList16
              ParentFont = False
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  object grpDetalhes: TGroupBox [2]
    AlignWithMargins = True
    Left = 5
    Top = 52
    Width = 662
    Height = 54
    Margins.Left = 5
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alTop
    Caption = ' Detalhes '
    TabOrder = 0
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
    object lblDescricao: TLabel
      Left = 111
      Top = 24
      Width = 57
      Height = 15
      Caption = 'Descri'#231#227'o:'
      FocusControl = edtNome
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCodigo: TcxDBSpinEdit
      Left = 57
      Top = 21
      DataBinding.DataField = 'codigo'
      DataBinding.DataSource = ds
      Properties.SpinButtons.Visible = False
      Style.Color = clBtnFace
      TabOrder = 0
      Width = 48
    end
    object edtNome: TcxDBTextEdit
      Left = 174
      Top = 21
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = ds
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      OnEnter = grpContentEnter
      Width = 387
    end
    object cbbinativo: TcxDBCheckBox
      Left = 567
      Top = 21
      Caption = 'Inativo'
      DataBinding.DataField = 'inativo'
      DataBinding.DataSource = ds
      Style.TextStyle = [fsBold]
      TabOrder = 2
      Width = 71
    end
  end
  inherited pnlHelp: TPanel
    Width = 663
    ExplicitWidth = 663
    inherited mmoHelp: TMemo
      Width = 616
      ExplicitWidth = 616
    end
  end
  inherited ds: TUniDataSource
    Left = 360
    Top = 0
  end
  inherited qConsulta: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO produtos'
      
        '  (nome, descricao, tipo, grupo, subgrupo, categoria, inativo, e' +
        'mpenho, execucao_minimo, execucao_maximo, certificado, cf_servic' +
        'o)'
      'VALUES'
      
        '  (:nome, :descricao, :tipo, :grupo, :subgrupo, :categoria, :ina' +
        'tivo, :empenho, :execucao_minimo, :execucao_maximo, :certificado' +
        ', :cf_servico)')
    SQLDelete.Strings = (
      'DELETE FROM produtos'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE produtos'
      'SET'
      
        '  nome = :nome, descricao = :descricao, tipo = :tipo, grupo = :g' +
        'rupo, subgrupo = :subgrupo, categoria = :categoria, inativo = :i' +
        'nativo, empenho = :empenho, execucao_minimo = :execucao_minimo, ' +
        'execucao_maximo = :execucao_maximo, certificado = :certificado, ' +
        'cf_servico = :cf_servico'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM produtos'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT nome, descricao, tipo, grupo, subgrupo, categoria, inativ' +
        'o, empenho, execucao_minimo, execucao_maximo, certificado, cf_se' +
        'rvico FROM produtos'
      'WHERE'
      '  codigo = :codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM produtos'
      ''
      ') t')
    SQL.Strings = (
      'SELECT pd.codigo, '
      #9'pd.nome, '
      #9'pd.descricao, '
      #9'pd.tipo, '
      #9'pd.grupo, '
      #9'pd.subgrupo, '
      #9'pd.categoria, '
      #9'pd.inativo, '
      #9'pd.empenho,'
      #9'pd.execucao_minimo,'
      #9'pd.execucao_maximo,'
      #9'pd.certificado,'
      #9'pd.cf_servico'
      '   FROM produtos pd'
      '  WHERE pd.codigo = :codigo;')
    Left = 320
    Top = 0
    object qConsultacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qConsultanome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 200
    end
    object qConsultadescricao: TMemoField
      FieldName = 'descricao'
      BlobType = ftMemo
    end
    object qConsultatipo: TStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object qConsultagrupo: TIntegerField
      FieldName = 'grupo'
      Required = True
    end
    object qConsultasubgrupo: TIntegerField
      FieldName = 'subgrupo'
    end
    object qConsultacategoria: TIntegerField
      FieldName = 'categoria'
    end
    object qConsultainativo: TBooleanField
      FieldName = 'inativo'
    end
    object qConsultaempenho: TBooleanField
      FieldName = 'empenho'
    end
    object qConsultaexecucao_minimo: TIntegerField
      FieldName = 'execucao_minimo'
    end
    object qConsultaexecucao_maximo: TIntegerField
      FieldName = 'execucao_maximo'
    end
    object qConsultacertificado: TBooleanField
      FieldName = 'certificado'
    end
    object qConsultacf_servico: TStringField
      FieldName = 'cf_servico'
    end
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
    DesignInfo = 276
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000002020B100C0C4C70131376AF151581BF151580BF1414
          75AF0D0D4B7002020B1000000000000000000000000000000000000000000000
          0000000000000B0B4C701616A0EF0F0FACFF0F0FB6FF1212BFFF1818C6FF1D1D
          C7FF1E1EC0FF1C1CA3EF0D0D4A70000000000000000000000000000000000000
          000010106C9F1616ACFF0707B2FF1717C1FF5050D2FF5F5FD3FF6666D6FF6363
          DFFF3F3FE0FF2D2DE2FF2424BDFF1313699F0000000000000000000000000B0B
          4D703A3ABFFF1212B8FF2222BFFF4B4BC3FF2222719F09093650090936502323
          709F6767D8FF4040ECFF3B3BF2FF2424BDFF0D0D4A700000000002020B102424
          ABEF3030C2FF0909B4FF1C1C90CF050521300000000000000000000000000D0D
          51602A2ADEFF3131E6FF4B4BEDFF2E2EE3FF1C1CA2EF02020B10090942604949
          C6FF0C0CB5FF1414B0FF0505213000000000000000000000000009094D601F1F
          D2FF2424D8FF2A2ADEFF7070DCFF4242E1FF1E1EBDFF0B0B40600F0F6E9F6060
          CFFF1111B5FF10106C9F000000000000000000000000060649601515C8FF1A1A
          CDFF1F1FD2FF0D0D51602323709F6767E0FF1D1DC5FF12126B9F121284BF6E6E
          D5FF3737BFFF242460800000000000000000040447600E0EBFFF1111C3FF1515
          C8FF09094D600000000010104D707C7CDEFF1717C4FF151580BF121284BF7171
          D6FF4040C2FF2323608000000000020245600808B9FF0B0BBCFF0E0EBFFF0606
          4960000000000000000010104D706F6FD9FF1212BDFF151581BF0E0E6E9F6969
          D2FF4444C6FF13136E9F0B0B47602F2FC2FF2323C0FF1313BCFF040447600000
          000000000000000000002222719F5050D1FF1010B4FF11116B9F090943605C5C
          CEFF4E4EC9FF3232BEFF3838C4FF3939C4FF3232C3FF0B0B4760000000000000
          000000000000050521305E5EC9FF3535C9FF1D1DB0FF0A0A416001010B102525
          ACEF7070D5FF4444C7FF4040C6FF3838C4FF0B0B476000000000000000000000
          0000050521303737AFEF4747CAFF2727BCFF1818A1EF02020B10000000000A0A
          4E704747C5FF6A6AD3FF4444C7FF3737BFFF13136E9F0E0E4E700E0E4F701313
          6E9F2D2DB8FF3737C3FF3939C4FF1F1FB0FF0B0B4C7000000000000000000000
          00000E0E6E9F4747C5FF7878D9FF4F4FC9FF4444C6FF3D3DC1FF3B3BC0FF3E3E
          C4FF3D3DC5FF5F5FD2FF3B3BBFFF10106C9F0000000000000000000000000000
          0000000000000A0A4E702525ACEF6464D2FF7373D6FF7373D7FF7070D7FF6A6A
          D4FF6060CFFF2626ACEF0B0B4D70000000000000000000000000000000000000
          0000000000000000000001010B100A0A4E70101079AF121284BF121284BF1010
          79AF0B0B4D7002020B1000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000019591C8035AA3AEF37A13CDF0C230E300000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000186B1A9F44BB4AFFA9EEB2FF90E299FF329537CF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001068119F38B53DFFA0E8A9FFA0EEACFFB5F5BFFF72D37AFF1F5C
          2280000000000000000000000000000000000000000000000000000000000000
          00000864099F46BB4BFFA0E6A9FF8EE59AFF84E691FF9DEFA9FFAFF3B9FF4ABE
          50FF0B220C300000000000000000000000000000000000000000000000000160
          019F3BB53FFF98E0A1FF84DD8FFF7ADE87FFA8ECB2FF99ECA5FFACF3B7FF97E6
          9FFF2D9332CF00000000000000000000000000000000000000000055008F34B1
          38FF90DB99FF79D685FF7FDA8BFF9FE6A8FF79D480FFA9EDB3FF91EB9EFFB2F3
          BCFF6CD074FF1C5B1E8000000000000000000000000000000000009700FF89D6
          92FF70CF7BFF75D380FF97E0A0FF42B947FF13A315FF82D889FF9DEAA8FF92EA
          9FFFA7EDB1FF43BB48FF0A220B30000000000000000000000000009600FF7ED0
          86FF85D58FFF86D68EFF2FAF32FF0461049F0428054025AB28FFA3E8ACFF87E4
          94FFA1EBACFF8CDF94FF2C9C30DF030B041000000000000000000054008F21A5
          24FF44B649FF11A013FF0056008F000000000000000009640A9F58C45EFF9CE5
          A6FF7ADE88FFA5EAAEFF62C969FF1B641E8F000000000000000000000000001C
          003000390060001D0030000000000000000000000000010A01100D960EEF89DA
          92FF87DE93FF80DD8CFF98E2A1FF3BB640FF0C2C0D4000000000000000000000
          0000000000000000000000000000000000000000000000000000033B04602FAF
          32FF97E0A0FF6BD478FF8CDD96FF7DD485FF26992ADF030B0310000000000000
          0000000000000000000000000000000000000000000000000000000000000676
          07BF67C96EFF89DA93FF5ACB68FF94DE9DFF57C25DFF18621A8F000000000000
          000000000000000000000000000000000000000000000000000000000000011D
          01300FA010FF85D58DFF66CC72FF66CC72FF87D790FF26AC2AFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000024D02803FB543FF88D591FF6FCD79FF89D691FF24AC2AFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000A0010028702DF4CBA52FF66C56DFF4CBA51FF137C15BF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000001300200160019F067606BF0964099F010A0110}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000091A33502059AAFF174079FF000000570000004D00000021000000000000
          000000000000000000000000000000000000000000000000000000000000040B
          15221D529DEF235FB1FF163C72FF000000430000003E0000003A000000260000
          0008000000000000000000000000000000000000000000000000000000001744
          84D3215EB1FF2964B4FF15396DFF0000002E00000029000000230000001E0000
          00180000000500000000000000000000000000000000000000002360B3FF1E54
          A0FF2564B7FF326EBCFF14386AFF000000380000002E00000024000000180000
          00092360B3FF00000000000000000000000000000000000000002564B7FF2159
          A6FF296ABDFF3B77C2FF133565FF000000380000002E00000024000000180000
          00090E8544FF007300FF00000000000000000000000000000000647388FF245E
          AAFF2C6FC2FF406EA7FF394A62FF000000380000002E0000002400000018005F
          00A4009900FF007300FF000000000000000000000000000000002A6ABEFF2763
          AFFF2F74C8FF5A7696FF4E5F77FF000000380000002E000000240039006F0099
          00FF6BC970FF007300FF007300FF007300FF007300FF007300FF2C6DC1FF2966
          B4FF3279CDFF5491D5FF143667FF000000380000002E00390077009900FF57C0
          5BFF4ABC4FFF58C35EFF5FC666FF66CA6EFF75D07DFF007300FF2D70C3FF2B6A
          B7FF347DD0FF5C99DBFF143667FF000000380000002E009900FF7ECE80FF42B8
          46FF36B43BFF3EB844FF46BC4CFF50C157FF66CA6EFF007300FF2F72C6FF2D6C
          BAFF3780D3FF64A0E0FF143667FF000000380000002E00390077009900FF80CF
          82FF71CA74FF6CC870FF77CD7CFF7ED082FF68C96EFF007300FF3074C8FF2E6E
          BCFF3882D6FF61A0E1FF143667FF000000380000002E000000240039006F0099
          00FF84D086FF009900FF009900FF009900FF009900FF009900FF66768BFF2F70
          BEFF3F88D9FF89BFEEFF234970BF000000380000002E0000002400000018005F
          00A4009900FF009900FF000000000000000000000000000000003176CAFF3374
          C0FF77B2E8FF557692BF00010146000000380000002E00000024000000180000
          0009128C4CFF009900FF000000000000000000000000000000003277CBFF4C8C
          CFFF3C71A7DE0001014600010146000000380000002E00000024000000180000
          00093277CBFF00000000000000000000000000000000000000003277CBFF3277
          CBFF3277CBFF3277CBFF3277CBFF3277CBFF3277CBFF3277CBFF3277CBFF3277
          CBFF3277CBFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000050000000B000000130000001E000000230000
          00180000000F0000000800000002000000000000000000000000000000000000
          000000000000000000040000000A0000000F217F4FFF217F4FFF217F4FFF217F
          4FFF000000120000000E00000009000000010000000000000000000000000000
          000000000000000000000000000000000003217F4FFF2FB873FF2FB873FF217F
          4FFF000000050000000200000000000000000000000000000000000000000000
          000000000000000000000000000000000000217F4FFF2FB873FF2FB873FF217F
          4FFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000217F4FFF2FB873FF2FB873FF217F
          4FFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000217F4FFF2FB873FF2FB873FF217F
          4FFF00000000000000000000000000000000000000000000000000000000217F
          4FFF217F4FFF217F4FFF217F4FFF217F4FFF217F4FFF31B975FF31B975FF217F
          4FFF217F4FFF217F4FFF217F4FFF217F4FFF217F4FFF0000000000000000217F
          4FFF3BBE7CFF3BBE7CFF3BBE7CFF3BBE7CFF3BBE7CFF3BBE7CFF3BBE7CFF3BBE
          7CFF3BBE7CFF3BBE7CFF3BBE7CFF3BBE7CFF217F4FFF0000000000000000217F
          4FFF45C383FF45C383FF45C383FF45C383FF45C383FF45C383FF45C383FF45C3
          83FF45C383FF45C383FF45C383FF45C383FF217F4FFF0000000000000000217F
          4FFF217F4FFF217F4FFF217F4FFF217F4FFF217F4FFF4FC88BFF4FC88BFF217F
          4FFF217F4FFF217F4FFF217F4FFF217F4FFF217F4FFF00000000000000000000
          000000000000000000000000000000000000217F4FFF59CD92FF59CD92FF217F
          4FFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000217F4FFF63D29AFF63D29AFF217F
          4FFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000217F4FFF6CD7A1FF6CD7A1FF217F
          4FFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000217F4FFF76DCA8FF76DCA8FF217F
          4FFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000217F4FFF217F4FFF217F4FFF217F
          4FFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000003000000070000000B0000000F00000013000000140000
          00110000000D0000000900000006000000020000000000000000000000000000
          0000000000050000000A0000000F000000150000001A0000001F000000220000
          001F0000001A00000015000000100000000A0000000400000000000000000000
          000000000000000000000000000300000006000000080000000A0000000B0000
          000A000000080000000600000003000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          A4FF0000A4FF0000A4FF0000A4FF0000A4FF0000A4FF0000A4FF0000A4FF0000
          A4FF0000A4FF0000A4FF0000A4FF0000A4FF0000A4FF00000000000000000000
          A4FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000
          CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000A4FF00000000000000000000
          A4FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000
          CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000A4FF00000000000000000000
          A4FF0000A4FF0000A4FF0000A4FF0000A4FF0000A4FF0000A4FF0000A4FF0000
          A4FF0000A4FF0000A4FF0000A4FF0000A4FF0000A4FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000040000000900000009000000090000000900000009000000090000
          0009000000090000000900000009000000040000000000000000000000000000
          000200000015000000290000002C0000002C0000002C0000002C0000002C0000
          002C0000002C0000002C00000029000000150000000200000000000000000000
          000400000019000A0046002D00A3004500E4004F00FF0000002C0000002C0000
          002C0000002C0000002C0000002A000000190000000400000000000000000000
          0001001A0050005300F605750EFF0A8C1BFF005701FF00000003000000030000
          0003000000030000000300000003000000030000000100000000000000000007
          0012005700ED07861AFF099220FF0E9A28FF026203FF00000000000000000000
          000000000000000D0024000D0024000000000000000000000000000000000039
          008D048013FF15A939FF13A737FF0C8F21FF016A03FF00000000000000000000
          0000001700390A7514F00C7817F0001700390000000000000000000000000060
          00D811A435FF13AB3CFF089222FF005800C6000D001E00000000000000000025
          00540E8518F810A233FF10A233FF149125F9022B035900000000000000000077
          00F61CBA4DFF1EBE50FF02850EFF001A003600000000000000000036006F037F
          05FF0D9B27FF13B244FF13B244FF0D9B27FF08880FFF0036006F00000000007F
          00F626C95CFF27CA5EFF008502FF000200030000000000000000000000000000
          0000008501FF27CA5EFF27CA5EFF008400FF0000000000000000000000000078
          00D825CA5BFF23CB5EFF0A9E16FF000C0015000000000000000000000000000A
          0012079912FF26CD60FF27CD60FF008900F60000000000000000000000000059
          009614BB43FF1ECC61FF2ACE5AFF036805A9001E003300040006000B00120058
          009319BE44FF1CCB60FF18C354FF008300DB000000000000000000000000001E
          003001A001FC2AD568FF1ED166FF31D765FF13B82EFF06A80CFF07A911FF1BC4
          48FF37DE72FF2DD86CFF01B12FFF005D00930000000000000000000000000000
          0000005B008A03B628FF2AD86BFF25D76CFF28D96DFF37DF72FF36DF72FF22D6
          6BFF32DC6FFF08C24CFF00A500F9001800240000000000000000000000000000
          0000000000000061008D00B512FF1ACD50FF36DE6EFF41E576FF38E173FF21D5
          64FF02BF3AFF00AC00F9003E005A000000000000000000000000000000000000
          000000000000000000000022003000690093009200CC00B400FC00B600FF009C
          00DB006D0099001E002A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000011131F008292ED008292EC0057
          629E001214210000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000A0C13007D8CE24EC1D0FD5BD3E1FF2FB1
          C2FA088B9BF6005D69A9000B0C14000000000000000000000000000000000000
          0000000000000000000000000000006E7BC535B1C1FA5FD8E7FF26CADFFF4ED4
          E5FF6DD9E7FF31B1C2FB007F8FE6001517260000000000000000000000000000
          00000000000000000000002529431996A5F66CDAE8FF10C5DCFF03C2DAFF03C2
          DAFF15C6DCFF5BD7E7FF56C7D5FE058797F10022273F00000000000000000000
          00000000000000000000017685D45ECFDDFF46DAEDFF18D0E7FF11CBE3FF07C4
          DCFF03C2DAFF03C2DAFF4CD3E4FF58CDDCFF048898F4000F111C000000000000
          000000000000000E101A108FA0F78BEDFBFF3CE5FCFF37E4FBFF2FDEF6FF23D7
          EEFF14CDE5FF04C3DBFF03C2DAFF56D6E6FF32B3C3FB005E69A8000000000000
          000000000000002F3A5F2DA9B8F58AEFFDFF5FEAFDFF61EBFDFF52E9FDFF3CE6
          FDFF2ADBF3FF18D0E7FF10C6DCFF49D2E4FF67D4E2FF018191E9000000000000
          000000040407001E88D71341ABFC84EAFBFF6BECFDFF84EFFDFF6DECFDFF52E9
          FDFF44E5FBFF65E3F3FF77DDEBFF49C0CEFE1A97A6F3008090EA000000000034
          3A5F008292EB289FB4F6284ABBFF1D38B8FF61D8F6FF63EAFDFF6CEBFDFF7DEE
          FDFF88EAF8FF44BAC9FA058B9AF7005B66A30023274000010102000000000031
          375A018898F64FC8D8FF68DCECFF336DC8FF0D1BABFF62B1D7FF72DCEAFF41B7
          C6F7098B9CF60159639F000F111B000000000000000000000000000000000000
          00000033448100879BFE41BDCDFF77DEEBFF1666AAF700308FE4017684D20041
          4977000B0D15000000000000000000000000000000000000000000010102002B
          4895014B7AF40B76B2FF0188A1FF32ADBDFE1C98A8F20021253D000000000000
          00000000000000000000000000000000000000000000000000000020356F034E
          80F40F7ABCFF107DC1FF014E7DF2006B7CCE008B9CFF00161929000000000000
          0000000000000000000000000000000000000000000000000000004572ED0C72
          B2FF107DC1FF0A6BA9FF003F69DA0001010200475082000A0C13000000000000
          000000000000000000000000000000000000000000000000000000426EE50A69
          A6FF0B6DABFF004776F500132044000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000111C3B0040
          6ADA00426DE30014214700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00100000001600000024000000290000002C0000002200000000000000000000
          00000000000000000000000000000000000000000019000000220000002C0000
          003300010137080D18552A3655BB3C404EFF1F1F1FFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000108
          121D365B97F3516191FE546490FD6578A3FF424B5CFD00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000374
          BFFF0066ACF956729EFF8AA0CEFFA7C2E3FF576898F700000000000000000000
          00000000000000000000000000000000000000000000000000000376C1FF0076
          D4FF0275A9CC0190C4DAADC9E9FC6A7CA9FF35476DAE00000000000000000000
          000000000000000000000000000000000000000000000377C2FF0076D4FF0AB4
          EEFF02ADEAFF03ACE8FF28BFF7FE5576ABFD0719325000000000000000000000
          0000000000000000000000000000000000000478C2FF0076D4FF10BAF0FF02AD
          ECFF05B1ECFF24D3FFFF0083DBFC0661A0E20001010200000000000000000000
          00000000000000000000000000000478C2FF0076D4FF1CC1F4FF02B1F0FF05B2
          EFFF24D3FFFF0086E1FF037BC8FF000305080000000000000000000000000000
          00000000000000000000037CCAFF0076D4FF26C6F6FF02B3F1FF09B7F1FF24D3
          FFFF0086E1FF037BC9FF00000000000000000000000000000000000000000000
          00000E10263C5D6050FF0076D4FF26C6F6FF02B5F5FF0DBBF4FF98ECFFFF0086
          E1FF037BC9FF0000000000000000000000000000000000000000000000001C31
          7AAD636251FF99987BFF4C574AFF37A6CDFF10BEF6FF98ECFFFF0086E1FF037B
          CAFF00000000000000000000000000000000000000000000000002071017244D
          C2FF345CD9FF494D45FF46443DFFD6D7B3FF63C7E4FF0086E1FF037CCAFF0000
          0000000000000000000000000000000000000000000000000000142B677B254F
          C6FF3766DEFF3B66D9FFD5D7BBFFD4D4ACFF72725BFF0672C4FF000000000000
          0000000000000000000000000000000000000000000000000000000000002042
          A1DA3967DAFF9BA5EEFF414BB2FF72725BFF5F5E4EFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000306
          1016335BC1FDC0C8FFFF9BA5EEFF5A594AFF060A172500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010204061B3A94CB273A8FD1080916220000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object StyleRepository: TcxStyleRepository
    Left = 396
    Top = 207
    PixelsPerInch = 96
    object StyleHeader: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
    end
    object StyleItemInativo: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
    end
    object StyleItemAtivo: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
  end
  object qProdutoEmpresa: TUniQuery
    Tag = 7000
    SQLInsert.Strings = (
      'INSERT INTO produto_empresas'
      
        '  (empresa, produto, markup_vista, valor_vista, markup_prazo, va' +
        'lor_prazo, comissao)'
      'VALUES'
      
        '  (:empresa, :produto, :markup_vista, :valor_vista, :markup_praz' +
        'o, :valor_prazo, :comissao)')
    SQLDelete.Strings = (
      'DELETE FROM produto_empresas'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE produto_empresas'
      'SET'
      
        '  empresa = :empresa, produto = :produto, markup_vista = :markup' +
        '_vista, valor_vista = :valor_vista, markup_prazo = :markup_prazo' +
        ', valor_prazo = :valor_prazo, comissao = :comissao'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM produto_empresas'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT empresa, produto, markup_vista, valor_vista, markup_prazo' +
        ', valor_prazo, comissao FROM produto_empresas'
      'WHERE'
      '  codigo = :codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM produto_empresas'
      ''
      ') t')
    Connection = Connection.Conn
    SQL.Strings = (
      'SELECT codigo, '
      #9'empresa, '
      #9'produto, '
      #9'markup_vista, '
      #9'valor_vista, '
      #9'markup_prazo, '
      #9'valor_prazo, '
      #9'comissao'
      '   FROM produto_empresas'
      '  WHERE produto = :produto and empresa = :codigo;')
    MasterSource = dmProdutoConsultas.dsEmpresas
    MasterFields = 'codigo'
    DetailFields = 'empresa'
    Left = 424
    ParamData = <
      item
        DataType = ftInteger
        Name = 'produto'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
        Value = nil
      end>
    object qProdutoEmpresacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qProdutoEmpresaempresa: TIntegerField
      FieldName = 'empresa'
      Required = True
    end
    object qProdutoEmpresaproduto: TIntegerField
      FieldName = 'produto'
      Required = True
    end
    object qProdutoEmpresamarkup_vista: TFloatField
      FieldName = 'markup_vista'
    end
    object qProdutoEmpresavalor_vista: TCurrencyField
      FieldName = 'valor_vista'
    end
    object qProdutoEmpresamarkup_prazo: TFloatField
      FieldName = 'markup_prazo'
    end
    object qProdutoEmpresavalor_prazo: TCurrencyField
      FieldName = 'valor_prazo'
    end
    object qProdutoEmpresacomissao: TFloatField
      FieldName = 'comissao'
    end
  end
  object dsProdutoEmpresa: TUniDataSource
    DataSet = qProdutoEmpresa
    Left = 480
  end
end
