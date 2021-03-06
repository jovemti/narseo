inherited frmCadProdutos: TfrmCadProdutos
  Caption = 'Cadastro de Produtos'
  ClientHeight = 656
  ClientWidth = 945
  OnCreate = FormCreate
  ExplicitWidth = 951
  ExplicitHeight = 685
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlBotton: TPanel
    Top = 621
    Width = 945
    TabOrder = 3
    ExplicitTop = 577
    ExplicitWidth = 945
    DesignSize = (
      945
      35)
    inherited btnCancelar: TButton
      Left = 668
      ExplicitLeft = 668
    end
    inherited btnSalvar: TButton
      Left = 761
      ExplicitLeft = 761
    end
    inherited btnFechar: TButton
      Left = 854
      ExplicitLeft = 854
    end
  end
  object grpDetalhes: TGroupBox [1]
    AlignWithMargins = True
    Left = 5
    Top = 51
    Width = 935
    Height = 54
    Margins.Left = 5
    Margins.Right = 5
    Margins.Bottom = 0
    Align = alTop
    Caption = ' Detalhes '
    TabOrder = 0
    ExplicitTop = 3
    DesignSize = (
      935
      54)
    object lblCodigo: TLabel
      Left = 10
      Top = 24
      Width = 41
      Height = 15
      Caption = 'C'#243'digo:'
      FocusControl = edtCodigo
    end
    object lblDescricao: TLabel
      Left = 111
      Top = 24
      Width = 58
      Height = 15
      Caption = 'Descri'#231#227'o:'
      FocusControl = edtNome
    end
    object lblCodigoBarra: TLabel
      Left = 567
      Top = 24
      Width = 97
      Height = 15
      Caption = 'Codigo de Barras:'
      FocusControl = edtCodigoBarra
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
      Left = 175
      Top = 21
      DataBinding.DataField = 'nome'
      DataBinding.DataSource = ds
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      OnEnter = grpContentEnter
      Width = 386
    end
    object edtCodigoBarra: TcxDBTextEdit
      Left = 670
      Top = 21
      DataBinding.DataField = 'codigobarras'
      DataBinding.DataSource = ds
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      OnEnter = grpContentEnter
      Width = 139
    end
    object cbbinativo: TcxDBCheckBox
      Left = 848
      Top = 21
      Caption = 'Inativo'
      DataBinding.DataField = 'inativo'
      DataBinding.DataSource = ds
      TabOrder = 4
      Width = 71
    end
    object btnCB: TButton
      Left = 815
      Top = 19
      Width = 27
      Height = 27
      Hint = 'Adicionar codigo de barras'
      Anchors = [akTop, akRight]
      HotImageIndex = 3
      ImageIndex = 3
      ImageMargins.Left = 2
      Images = ImageList16
      TabOrder = 3
      OnClick = btnCBClick
    end
  end
  inherited grpContent: TGroupBox
    Top = 108
    Width = 935
    Height = 513
    TabOrder = 1
    ExplicitTop = 108
    ExplicitWidth = 935
    ExplicitHeight = 469
    object PageControl: TcxPageControl
      AlignWithMargins = True
      Left = 5
      Top = 20
      Width = 925
      Height = 488
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabGeral
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 3
      ExplicitHeight = 444
      ClientRectBottom = 488
      ClientRectRight = 925
      ClientRectTop = 25
      object tabGeral: TcxTabSheet
        Caption = ' Geral '
        ImageIndex = 0
        ExplicitHeight = 419
        object grp1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 919
          Height = 457
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 413
          object Label2: TLabel
            Left = 10
            Top = 46
            Width = 37
            Height = 15
            Caption = 'Grupo:'
            FocusControl = edtIDGrupo
          end
          object Label3: TLabel
            Left = 456
            Top = 46
            Width = 59
            Height = 15
            Caption = 'Sub-grupo:'
            FocusControl = edtIDSubGrupo
          end
          object Label4: TLabel
            Left = 456
            Top = 16
            Width = 56
            Height = 15
            Caption = 'Categoria:'
            FocusControl = edtCategoria
          end
          object Label5: TLabel
            Left = 10
            Top = 74
            Width = 39
            Height = 15
            Caption = 'Marca:'
            FocusControl = edtIDMarca
          end
          object Label6: TLabel
            Left = 456
            Top = 74
            Width = 45
            Height = 15
            Caption = 'Modelo:'
            FocusControl = edtIDModelo
          end
          object lblfornecedor: TLabel
            Left = 10
            Top = 16
            Width = 65
            Height = 15
            Caption = 'Fornecedor:'
            FocusControl = edtfornecedor
          end
          object edtIDGrupo: TcxDBSpinEdit
            Tag = 100
            Left = 81
            Top = 42
            DataBinding.DataField = 'grupo'
            DataBinding.DataSource = ds
            Properties.SpinButtons.Visible = False
            TabOrder = 4
            OnEnter = grpContentEnter
            Width = 50
          end
          object edtIDSubGrupo: TcxDBSpinEdit
            Tag = 100
            Left = 534
            Top = 42
            DataBinding.DataField = 'subgrupo'
            DataBinding.DataSource = ds
            Properties.SpinButtons.Visible = False
            TabOrder = 6
            OnEnter = grpContentEnter
            Width = 50
          end
          object edtCategoria: TcxDBSpinEdit
            Tag = 100
            Left = 534
            Top = 13
            DataBinding.DataField = 'categoria'
            DataBinding.DataSource = ds
            Properties.SpinButtons.Visible = False
            TabOrder = 2
            OnEnter = grpContentEnter
            Width = 50
          end
          object edtIDMarca: TcxDBSpinEdit
            Tag = 100
            Left = 81
            Top = 71
            DataBinding.DataField = 'marca'
            DataBinding.DataSource = ds
            Properties.SpinButtons.Visible = False
            TabOrder = 8
            OnEnter = grpContentEnter
            Width = 50
          end
          object edtIDModelo: TcxDBSpinEdit
            Tag = 100
            Left = 534
            Top = 71
            DataBinding.DataField = 'modelo'
            DataBinding.DataSource = ds
            Properties.SpinButtons.Visible = False
            TabOrder = 10
            OnEnter = grpContentEnter
            Width = 50
          end
          object grpProdDescriLonga: TGroupBox
            AlignWithMargins = True
            Left = 7
            Top = 315
            Width = 905
            Height = 135
            Margins.Left = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alBottom
            Caption = ' Descri'#231#227'o Longa '
            TabOrder = 16
            ExplicitTop = 271
            object mmoProdDescricaoLonga: TcxDBMemo
              AlignWithMargins = True
              Left = 5
              Top = 20
              Align = alClient
              DataBinding.DataField = 'descricao'
              DataBinding.DataSource = ds
              TabOrder = 0
              OnEnter = grpContentEnter
              Height = 110
              Width = 895
            end
          end
          object edtfornecedor: TcxDBSpinEdit
            Left = 81
            Top = 13
            DataBinding.DataField = 'fornecedor'
            DataBinding.DataSource = ds
            Properties.SpinButtons.Visible = False
            TabOrder = 0
            OnEnter = grpContentEnter
            Width = 50
          end
          object cbbFornecedor: TcxDBLookupComboBox
            Left = 137
            Top = 13
            DataBinding.DataField = 'fornecedor'
            DataBinding.DataSource = ds
            Properties.KeyFieldNames = 'codigo'
            Properties.ListColumns = <
              item
                Caption = 'CNPJ'
                Width = 80
                FieldName = 'cnpj'
              end
              item
                Caption = 'Nome'
                Width = 200
                FieldName = 'nome'
              end
              item
                Caption = 'Fantasia'
                Width = 200
                FieldName = 'fantasia'
              end>
            Properties.ListFieldIndex = 2
            Properties.ListSource = dmProdutoConsultas.dsFornecedor
            TabOrder = 1
            OnEnter = grpContentEnter
            Width = 310
          end
          object cbbCategoria: TcxDBLookupComboBox
            Left = 590
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
            TabOrder = 3
            OnEnter = grpContentEnter
            Width = 310
          end
          object cbbGrupo: TcxDBLookupComboBox
            Left = 137
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
            TabOrder = 5
            OnEnter = grpContentEnter
            Width = 310
          end
          object cbbSubGrupo: TcxDBLookupComboBox
            Left = 590
            Top = 42
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
            TabOrder = 7
            OnEnter = grpContentEnter
            Width = 310
          end
          object cbbMarca: TcxDBLookupComboBox
            Left = 137
            Top = 71
            DataBinding.DataField = 'marca'
            DataBinding.DataSource = ds
            Properties.KeyFieldNames = 'codigo'
            Properties.ListColumns = <
              item
                Caption = 'Descri'#231#227'o'
                Width = 310
                FieldName = 'descricao'
              end>
            Properties.ListSource = dmProdutoConsultas.dsMarca
            TabOrder = 9
            OnEnter = grpContentEnter
            Width = 310
          end
          object cbbModelo: TcxDBLookupComboBox
            Left = 590
            Top = 71
            DataBinding.DataField = 'modelo'
            DataBinding.DataSource = ds
            Properties.KeyFieldNames = 'codigo'
            Properties.ListColumns = <
              item
                Caption = 'Descri'#231#227'o'
                Width = 310
                FieldName = 'descricao'
              end>
            Properties.ListSource = dmProdutoConsultas.dsModelo
            TabOrder = 11
            OnEnter = grpContentEnter
            Width = 310
          end
          object grpDtProduto: TGroupBox
            Left = 7
            Top = 128
            Width = 905
            Height = 185
            Caption = ' Caracteristicas '
            TabOrder = 15
            object grpDimensoes: TGroupBox
              Left = 15
              Top = 111
              Width = 874
              Height = 58
              Caption = ' Dimens'#245'es '
              TabOrder = 1
              object lblDimensoesAltura: TLabel
                Left = 16
                Top = 26
                Width = 37
                Height = 15
                Caption = 'Altura:'
                FocusControl = edtdm_altura
              end
              object Label9: TLabel
                Left = 192
                Top = 26
                Width = 45
                Height = 15
                Caption = 'Largura:'
                FocusControl = edtdm_largura
              end
              object lbl1: TLabel
                Left = 365
                Top = 26
                Width = 78
                Height = 15
                Caption = 'Profundidade:'
                FocusControl = edtdm_profundidade
              end
              object lblUnidadeTamanho: TLabel
                Left = 569
                Top = 26
                Width = 118
                Height = 15
                Caption = 'Unidade de Tamanho:'
              end
              object edtdm_altura: TcxDBCalcEdit
                Left = 59
                Top = 23
                DataBinding.DataField = 'dm_altura'
                DataBinding.DataSource = ds
                TabOrder = 0
                OnEnter = grpContentEnter
                Width = 103
              end
              object edtdm_largura: TcxDBCalcEdit
                Left = 243
                Top = 23
                DataBinding.DataField = 'dm_largura'
                DataBinding.DataSource = ds
                TabOrder = 1
                OnEnter = grpContentEnter
                Width = 103
              end
              object edtdm_profundidade: TcxDBCalcEdit
                Left = 449
                Top = 23
                DataBinding.DataField = 'dm_profundidade'
                DataBinding.DataSource = ds
                TabOrder = 2
                OnEnter = grpContentEnter
                Width = 103
              end
              object cbbUnidadeTamanho: TcxDBLookupComboBox
                Left = 693
                Top = 23
                DataBinding.DataField = 'unidade_tamanho'
                DataBinding.DataSource = ds
                Properties.KeyFieldNames = 'unidade'
                Properties.ListColumns = <
                  item
                    Caption = 'Unidade'
                    Width = 40
                    FieldName = 'unidade'
                  end
                  item
                    Caption = 'Descri'#231#227'o'
                    Width = 120
                    FieldName = 'descricao'
                  end>
                Properties.ListSource = dmProdutoConsultas.dsUnidade
                TabOrder = 3
                OnEnter = grpContentEnter
                Width = 103
              end
            end
            object grpFabricacao: TGroupBox
              Left = 15
              Top = 20
              Width = 874
              Height = 85
              Caption = ' Fabrica'#231#227'o '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              object Label7: TLabel
                Left = 151
                Top = 26
                Width = 111
                Height = 15
                Caption = 'Unidade de Compra:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 377
                Top = 26
                Width = 101
                Height = 15
                Caption = 'Unidade de Venda:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object lblUnidadeConversao: TLabel
                Left = 593
                Top = 26
                Width = 126
                Height = 15
                Caption = 'Unidade de Convers'#227'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object lblQtdeCaixa: TLabel
                Left = 140
                Top = 55
                Width = 122
                Height = 15
                Caption = 'Quantidade por caixa:'
                FocusControl = edtdm_altura
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object lblPeso: TLabel
                Left = 449
                Top = 55
                Width = 29
                Height = 15
                Caption = 'Peso:'
                FocusControl = edtdm_altura
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object lblCarga: TLabel
                Left = 637
                Top = 55
                Width = 82
                Height = 15
                Caption = 'Carga maxima:'
                FocusControl = edtdm_altura
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
              end
              object cbbproducao_propria: TcxDBCheckBox
                Left = 16
                Top = 22
                Caption = 'Produ'#231#227'o propria'
                DataBinding.DataField = 'producao_propria'
                DataBinding.DataSource = ds
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Calibri'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 0
                OnEnter = grpContentEnter
                Width = 121
              end
              object cbbUnidadeEntrada: TcxDBLookupComboBox
                Left = 268
                Top = 23
                DataBinding.DataField = 'unidade_entrada'
                DataBinding.DataSource = ds
                ParentFont = False
                Properties.KeyFieldNames = 'unidade'
                Properties.ListColumns = <
                  item
                    Caption = 'Descri'#231#227'o'
                    Width = 40
                    FieldName = 'unidade'
                  end
                  item
                    Caption = 'Descri'#231#227'o'
                    Width = 120
                    FieldName = 'descricao'
                  end>
                Properties.ListSource = dmProdutoConsultas.dsUnidade
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Calibri'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 1
                OnEnter = grpContentEnter
                Width = 103
              end
              object cbbUnidadeSaida: TcxDBLookupComboBox
                Left = 484
                Top = 23
                DataBinding.DataField = 'unidade_saida'
                DataBinding.DataSource = ds
                ParentFont = False
                Properties.KeyFieldNames = 'unidade'
                Properties.ListColumns = <
                  item
                    Caption = 'Unidade'
                    Width = 40
                    FieldName = 'unidade'
                  end
                  item
                    Caption = 'Descri'#231#227'o'
                    Width = 120
                    FieldName = 'descricao'
                  end>
                Properties.ListSource = dmProdutoConsultas.dsUnidade
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Calibri'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 2
                OnEnter = grpContentEnter
                Width = 103
              end
              object cbbUnidadeConversao: TcxDBLookupComboBox
                Left = 725
                Top = 23
                DataBinding.DataField = 'unidade_conversao'
                DataBinding.DataSource = ds
                ParentFont = False
                Properties.KeyFieldNames = 'unidade'
                Properties.ListColumns = <
                  item
                    Caption = 'Unidade'
                    Width = 40
                    FieldName = 'unidade'
                  end
                  item
                    Caption = 'Descri'#231#227'o'
                    Width = 120
                    FieldName = 'descricao'
                  end>
                Properties.ListSource = dmProdutoConsultas.dsUnidade
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Calibri'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 3
                OnEnter = grpContentEnter
                Width = 103
              end
              object edtQtdeCaixa: TcxDBSpinEdit
                Left = 268
                Top = 52
                DataBinding.DataField = 'dm_quantidade'
                DataBinding.DataSource = ds
                ParentFont = False
                Properties.SpinButtons.Visible = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Calibri'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 4
                OnEnter = grpContentEnter
                Width = 103
              end
              object edtPeso: TcxDBCalcEdit
                Left = 484
                Top = 52
                DataBinding.DataField = 'dm_peso'
                DataBinding.DataSource = ds
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Calibri'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 5
                Width = 103
              end
              object edtCargaMaxima: TcxDBSpinEdit
                Left = 725
                Top = 52
                DataBinding.DataField = 'dm_carga'
                DataBinding.DataSource = ds
                ParentFont = False
                Properties.SpinButtons.Visible = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -13
                Style.Font.Name = 'Calibri'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 6
                OnEnter = grpContentEnter
                Width = 103
              end
            end
          end
          object cbbperecivel: TcxDBCheckBox
            Left = 81
            Top = 100
            Caption = 'Produto perec'#237'vel'
            DataBinding.DataField = 'perecivel'
            DataBinding.DataSource = ds
            TabOrder = 12
            OnEnter = grpContentEnter
            Width = 121
          end
          object cbbuso_consumo: TcxDBCheckBox
            Left = 208
            Top = 100
            Caption = 'Uso e consumo'
            DataBinding.DataField = 'uso_consumo'
            DataBinding.DataSource = ds
            TabOrder = 13
            OnEnter = grpContentEnter
            Width = 121
          end
          object cbbtipo: TcxDBCheckBox
            Left = 327
            Top = 100
            Caption = 'Combustivel'
            DataBinding.DataField = 'tipo'
            DataBinding.DataSource = ds
            Properties.ValueChecked = 'C'
            Properties.ValueGrayed = 'P'
            Properties.ValueUnchecked = 'P'
            TabOrder = 14
            OnEnter = grpContentEnter
            Width = 101
          end
        end
      end
      object tabFiscal: TcxTabSheet
        Caption = ' Fiscal '
        ImageIndex = 1
        ExplicitHeight = 419
        object grp2: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 919
          Height = 457
          Align = alClient
          TabOrder = 0
          Visible = False
          ExplicitHeight = 413
          object lblCEST1: TLabel
            Left = 62
            Top = 16
            Width = 27
            Height = 15
            Caption = 'CEST:'
            FocusControl = edtcf_cest
          end
          object lblNCM: TLabel
            Left = 60
            Top = 45
            Width = 29
            Height = 15
            Caption = 'NCM:'
            FocusControl = edtcf_ncm
          end
          object lblTipoCombustivel: TLabel
            Left = 10
            Top = 74
            Width = 79
            Height = 15
            Caption = 'COMBUSTIVEL:'
            FocusControl = edttipo_combustivel
          end
          object lblANP: TLabel
            Left = 64
            Top = 103
            Width = 25
            Height = 15
            Caption = 'ANP:'
            FocusControl = edtcf_anp
          end
          object edtcf_cest: TcxDBTextEdit
            Left = 95
            Top = 13
            DataBinding.DataField = 'cf_cest'
            DataBinding.DataSource = ds
            TabOrder = 0
            OnEnter = grpContentEnter
            Width = 121
          end
          object edtcf_ncm: TcxDBTextEdit
            Left = 95
            Top = 42
            DataBinding.DataField = 'cf_ncm'
            DataBinding.DataSource = ds
            TabOrder = 1
            OnEnter = grpContentEnter
            Width = 121
          end
          object edttipo_combustivel: TcxDBSpinEdit
            Left = 95
            Top = 71
            DataBinding.DataField = 'tipo_combustivel'
            DataBinding.DataSource = ds
            Properties.SpinButtons.Visible = False
            TabOrder = 2
            OnEnter = grpContentEnter
            Width = 121
          end
          object edtcf_anp: TcxDBTextEdit
            Left = 95
            Top = 100
            DataBinding.DataField = 'cf_anp'
            DataBinding.DataSource = ds
            TabOrder = 3
            OnEnter = grpContentEnter
            Width = 121
          end
          object cbbCEST: TcxDBLookupComboBox
            Left = 222
            Top = 13
            DataBinding.DataSource = ds
            Properties.ListColumns = <>
            TabOrder = 4
            OnEnter = grpContentEnter
            Width = 670
          end
          object cbbNCM: TcxDBLookupComboBox
            Left = 222
            Top = 42
            DataBinding.DataSource = ds
            Properties.ListColumns = <>
            TabOrder = 5
            OnEnter = grpContentEnter
            Width = 670
          end
          object cbbTC: TcxDBLookupComboBox
            Left = 222
            Top = 71
            DataBinding.DataSource = ds
            Properties.ListColumns = <>
            TabOrder = 6
            OnEnter = grpContentEnter
            Width = 670
          end
          object cbbANP: TcxDBLookupComboBox
            Left = 222
            Top = 100
            DataBinding.DataSource = ds
            Properties.ListColumns = <>
            TabOrder = 7
            OnEnter = grpContentEnter
            Width = 670
          end
        end
      end
      object TabFornecedores: TcxTabSheet
        Caption = ' Fornecedores '
        ImageIndex = 2
        ExplicitHeight = 419
        object grpFornecedores: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 919
          Height = 457
          Align = alClient
          Caption = ' Lista de Fornecedores '
          TabOrder = 0
          ExplicitHeight = 413
          object Grid: TcxGrid
            AlignWithMargins = True
            Left = 8
            Top = 20
            Width = 903
            Height = 389
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
            ExplicitHeight = 345
            object View: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsFornecedores
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.Indicator = True
              Styles.Header = StyleHeader
              object ColumnFornecedor: TcxGridDBColumn
                Caption = 'Fornecedor'
                DataBinding.FieldName = 'nome_fornecedor'
                Width = 180
              end
              object ColumnRepresentante: TcxGridDBColumn
                Caption = 'Representante'
                DataBinding.FieldName = 'nome_representante'
                Width = 160
              end
              object ColumnUltimaCompra: TcxGridDBColumn
                Caption = 'Ultima Compra'
                DataBinding.FieldName = 'ultima_compra'
                Width = 70
              end
              object ColumnPrecoCompra: TcxGridDBColumn
                Caption = 'Pre'#231'o  de compra'
                DataBinding.FieldName = 'preco_compra'
                Width = 70
              end
              object ColumnTempoEntrega: TcxGridDBColumn
                Caption = 'Tempo Entrega'
                DataBinding.FieldName = 'tempo_entrega'
                Width = 70
              end
              object ColumnMinimoCompra: TcxGridDBColumn
                Caption = 'Minimo Compra'
                DataBinding.FieldName = 'minimo_compra'
                Width = 70
              end
            end
            object Master: TcxGridLevel
              GridView = View
            end
          end
          object Panel1: TPanel
            Left = 2
            Top = 415
            Width = 915
            Height = 40
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitTop = 371
            DesignSize = (
              915
              40)
            object btnNovo: TButton
              Left = 627
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
              OnClick = btnNovoClick
            end
            object btnEditar: TButton
              Left = 723
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
              HotImageIndex = 6
              ImageIndex = 6
              ImageMargins.Left = 10
              Images = ImageList16
              ParentFont = False
              TabOrder = 1
              OnClick = btnEditarClick
            end
            object btnExcluir: TButton
              Left = 819
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
              HotImageIndex = 7
              ImageIndex = 7
              ImageMargins.Left = 10
              Images = ImageList16
              ParentFont = False
              TabOrder = 2
              OnClick = btnExcluirClick
            end
          end
        end
      end
      object TabPoliticas: TcxTabSheet
        Caption = ' Politicas '
        ImageIndex = 3
        ExplicitHeight = 419
        object grpEmpresas: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 919
          Height = 307
          Align = alClient
          Caption = ' Empresas '
          TabOrder = 0
          ExplicitHeight = 263
          object GridEmpresas: TcxGrid
            AlignWithMargins = True
            Left = 8
            Top = 20
            Width = 903
            Height = 279
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
            ExplicitHeight = 235
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
              Styles.Content = StyleItemAtivo
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
          Top = 316
          Width = 919
          Height = 144
          Align = alBottom
          Caption = ' Configura'#231#245'es '
          TabOrder = 1
          ExplicitTop = 272
          object Label1: TLabel
            Left = 17
            Top = 24
            Width = 84
            Height = 15
            Caption = 'Ultima compra:'
            FocusControl = edtultima_compra
          end
          object Label10: TLabel
            Left = 213
            Top = 24
            Width = 93
            Height = 15
            Caption = 'Valor de compra:'
            FocusControl = edtvalor_compra
          end
          object Label11: TLabel
            Left = 434
            Top = 24
            Width = 177
            Height = 15
            Caption = 'Markup para vendas a vista (%):'
            FocusControl = edtmarkup_vista
          end
          object Label12: TLabel
            Left = 715
            Top = 24
            Width = 72
            Height = 15
            Caption = 'Valor a vista:'
            FocusControl = edtvalor_vista
          end
          object Label13: TLabel
            Left = 430
            Top = 53
            Width = 181
            Height = 15
            Caption = 'Markup para vendas a prazo (%):'
            FocusControl = edtmarkup_prazo
          end
          object Label14: TLabel
            Left = 711
            Top = 53
            Width = 76
            Height = 15
            Caption = 'Valor a prazo:'
            FocusControl = edtvalor_prazo
          end
          object Label15: TLabel
            Left = 17
            Top = 53
            Width = 127
            Height = 15
            Caption = 'Comiss'#227'o sobre venda:'
            FocusControl = edtcomissao
          end
          object Label16: TLabel
            Left = 48
            Top = 112
            Width = 91
            Height = 15
            Caption = 'Estoque minimo:'
            FocusControl = edtestoque_minimo
          end
          object Label17: TLabel
            Left = 251
            Top = 112
            Width = 93
            Height = 15
            Caption = 'Estoque maximo:'
            FocusControl = edtestoque_maximo
          end
          object Label18: TLabel
            Left = 17
            Top = 82
            Width = 122
            Height = 15
            Caption = 'Dep'#243'sito preferencial:'
            FocusControl = edtdeposito
          end
          object edtultima_compra: TcxDBDateEdit
            Left = 107
            Top = 21
            DataBinding.DataField = 'ultima_compra'
            DataBinding.DataSource = dsProdutoEmpresa
            TabOrder = 0
            Width = 100
          end
          object edtvalor_compra: TcxDBCurrencyEdit
            Left = 312
            Top = 21
            DataBinding.DataField = 'valor_compra'
            DataBinding.DataSource = dsProdutoEmpresa
            TabOrder = 1
            Width = 100
          end
          object edtmarkup_vista: TcxDBCalcEdit
            Left = 617
            Top = 21
            DataBinding.DataField = 'markup_vista'
            DataBinding.DataSource = dsProdutoEmpresa
            TabOrder = 2
            Width = 80
          end
          object edtvalor_vista: TcxDBCurrencyEdit
            Left = 793
            Top = 21
            DataBinding.DataField = 'valor_vista'
            DataBinding.DataSource = dsProdutoEmpresa
            TabOrder = 3
            Width = 100
          end
          object edtmarkup_prazo: TcxDBCalcEdit
            Left = 617
            Top = 50
            DataBinding.DataField = 'markup_prazo'
            DataBinding.DataSource = dsProdutoEmpresa
            TabOrder = 4
            Width = 80
          end
          object edtvalor_prazo: TcxDBCurrencyEdit
            Left = 793
            Top = 50
            DataBinding.DataField = 'valor_prazo'
            DataBinding.DataSource = dsProdutoEmpresa
            TabOrder = 5
            Width = 100
          end
          object edtcomissao: TcxDBCalcEdit
            Left = 150
            Top = 50
            DataBinding.DataField = 'comissao'
            DataBinding.DataSource = dsProdutoEmpresa
            TabOrder = 6
            Width = 100
          end
          object edtestoque_minimo: TcxDBSpinEdit
            Left = 145
            Top = 108
            DataBinding.DataField = 'estoque_minimo'
            DataBinding.DataSource = dsProdutoEmpresa
            Properties.SpinButtons.Visible = False
            TabOrder = 9
            Width = 100
          end
          object edtestoque_maximo: TcxDBSpinEdit
            Left = 350
            Top = 108
            DataBinding.DataField = 'estoque_maximo'
            DataBinding.DataSource = dsProdutoEmpresa
            Properties.SpinButtons.Visible = False
            TabOrder = 10
            Width = 100
          end
          object edtdeposito: TcxDBSpinEdit
            Left = 145
            Top = 79
            DataBinding.DataField = 'deposito'
            DataBinding.DataSource = dsProdutoEmpresa
            Properties.SpinButtons.Visible = False
            TabOrder = 7
            Width = 50
          end
          object cbbDeposito: TcxDBLookupComboBox
            Left = 201
            Top = 79
            DataBinding.DataField = 'deposito'
            DataBinding.DataSource = dsProdutoEmpresa
            Properties.KeyFieldNames = 'codigo'
            Properties.ListColumns = <
              item
                Caption = 'Nome'
                Width = 300
                FieldName = 'nome'
              end>
            Properties.ListSource = dmProdutoConsultas.dsDeposito
            TabOrder = 8
            OnEnter = grpContentEnter
            Width = 692
          end
        end
      end
    end
  end
  inherited pnlHelp: TPanel
    Width = 936
    ExplicitLeft = 10
    ExplicitTop = 2
    ExplicitWidth = 936
    inherited mmoHelp: TMemo
      Width = 889
      ExplicitWidth = 889
    end
  end
  inherited ds: TUniDataSource
    Left = 824
    Top = 72
  end
  inherited qConsulta: TUniQuery
    SQL.Strings = (
      'SELECT pd.codigo, '
      #9'pd.nome, '
      #9'pd.descricao, '
      #9'pd.tipo, '
      #9'pd.codigobarras,'
      #9'pd.fornecedor, '
      #9'pd.grupo, '
      #9'pd.subgrupo, '
      #9'pd.marca, '
      #9'pd.categoria, '
      #9'pd.modelo, '
      #9'pd.unidade_entrada, '
      #9'pd.unidade_saida, '
      #9'pd.unidade_conversao, '
      #9'pd.unidade_tamanho, '
      #9'pd.producao_propria, '
      #9'pd.perecivel, '
      #9'pd.uso_consumo, '
      #9'pd.inativo, '
      #9'pd.dm_altura, '
      #9'pd.dm_largura, '
      #9'pd.dm_profundidade, '
      #9'pd.dm_quantidade, '
      #9'pd.dm_peso, '
      #9'pd.dm_carga, '
      #9'pd.cf_cest, '
      #9'pd.cf_ncm, '
      #9'pd.tipo_combustivel, '
      #9'pd.cf_anp'
      '   FROM produtos pd'
      '  WHERE pd.codigo = :codigo;')
    Left = 784
    Top = 72
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
    object qConsultacodigobarras: TStringField
      FieldName = 'codigobarras'
    end
    object qConsultafornecedor: TIntegerField
      FieldName = 'fornecedor'
      Required = True
    end
    object qConsultagrupo: TIntegerField
      FieldName = 'grupo'
      Required = True
    end
    object qConsultasubgrupo: TIntegerField
      FieldName = 'subgrupo'
    end
    object qConsultamarca: TIntegerField
      FieldName = 'marca'
    end
    object qConsultacategoria: TIntegerField
      FieldName = 'categoria'
    end
    object qConsultamodelo: TIntegerField
      FieldName = 'modelo'
    end
    object qConsultaunidade_entrada: TStringField
      FieldName = 'unidade_entrada'
      FixedChar = True
      Size = 2
    end
    object qConsultaunidade_saida: TStringField
      FieldName = 'unidade_saida'
      FixedChar = True
      Size = 2
    end
    object qConsultaunidade_conversao: TStringField
      FieldName = 'unidade_conversao'
      FixedChar = True
      Size = 2
    end
    object qConsultaunidade_tamanho: TStringField
      FieldName = 'unidade_tamanho'
      FixedChar = True
      Size = 2
    end
    object qConsultaproducao_propria: TBooleanField
      FieldName = 'producao_propria'
    end
    object qConsultaperecivel: TBooleanField
      FieldName = 'perecivel'
    end
    object qConsultauso_consumo: TBooleanField
      FieldName = 'uso_consumo'
    end
    object qConsultainativo: TBooleanField
      FieldName = 'inativo'
    end
    object qConsultadm_altura: TFloatField
      FieldName = 'dm_altura'
    end
    object qConsultadm_largura: TFloatField
      FieldName = 'dm_largura'
    end
    object qConsultadm_profundidade: TFloatField
      FieldName = 'dm_profundidade'
    end
    object qConsultadm_quantidade: TIntegerField
      FieldName = 'dm_quantidade'
    end
    object qConsultadm_peso: TFloatField
      FieldName = 'dm_peso'
    end
    object qConsultadm_carga: TIntegerField
      FieldName = 'dm_carga'
    end
    object qConsultacf_cest: TStringField
      FieldName = 'cf_cest'
      Size = 12
    end
    object qConsultacf_ncm: TStringField
      FieldName = 'cf_ncm'
      Size = 12
    end
    object qConsultatipo_combustivel: TIntegerField
      FieldName = 'tipo_combustivel'
    end
    object qConsultacf_anp: TStringField
      FieldName = 'cf_anp'
      Size = 12
    end
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
    DesignInfo = 4719332
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000010050521700C0C50AF0F0F60BF0F0F60BF0D0D
          4FAF050520700000001000000000000000000000000000000000000000000000
          00000000000004042170141496EF0E0EACFF0E0EB6FF1111BFFF1717C6FF1C1C
          C7FF1D1DC0FF1A1A99EF05052070000000000000000000000000000000000000
          00000909439F1515ACFF0606B2FF1616C1FF4F4FD2FF5E5ED3FF6565D6FF6262
          DFFF3E3EE0FF2C2CE2FF2323BDFF0B0B419F0000000000000000000000000404
          21703939BFFF1111B8FF2121BFFF4A4AC3FF1515469F02021050020210501515
          459F6666D8FF3F3FECFF3A3AF2FF2323BDFF0505207000000000000000102121
          A0EF2F2FC2FF0808B4FF161675CF000006300000000000000000000000000404
          1E602929DEFF3030E6FF4A4AEDFF2D2DE3FF1A1A98EF00000010030318604848
          C6FF0B0BB5FF1313B0FF0000063000000000000000000000000003031C601E1E
          D2FF2323D8FF2929DEFF6F6FDCFF4141E1FF1D1DBDFF040418600909449F5F5F
          CFFF1010B5FF0909439F00000000000000000000000002021B601414C8FF1919
          CDFF1E1ED2FF04041E601515459F6666E0FF1C1CC5FF0B0B429F0D0D63BF6D6D
          D5FF3636BFFF12123080000000000000000001011A600D0DBFFF1010C3FF1414
          C8FF03031C6000000000070721707B7BDEFF1616C4FF0F0F60BF0D0D63BF7070
          D6FF3F3FC2FF1111308000000000000019600707B9FF0A0ABCFF0D0DBFFF0202
          1B600000000000000000070721706E6ED9FF1111BDFF0F0F60BF0808449F6868
          D2FF4343C6FF0B0B449F04041A602E2EC2FF2222C0FF1212BCFF01011A600000
          000000000000000000001515469F4F4FD1FF0F0FB4FF0A0A429F030319605B5B
          CEFF4D4DC9FF3131BEFF3737C4FF3838C4FF3131C3FF04041A60000000000000
          000000000000000006305D5DC9FF3434C9FF1C1CB0FF03031860000000102222
          A1EF6F6FD5FF4343C7FF3F3FC6FF3737C4FF04041A6000000000000000000000
          0000000006303333A4EF4646CAFF2626BCFF161697EF00000010000000000404
          22704646C5FF6969D3FF4343C7FF3636BFFF0B0B449F06062270060622700B0B
          449F2C2CB8FF3636C3FF3838C4FF1E1EB0FF0404217000000000000000000000
          00000808449F4646C5FF7777D9FF4E4EC9FF4343C6FF3C3CC1FF3A3AC0FF3D3D
          C4FF3C3CC5FF5E5ED2FF3A3ABFFF0909439F0000000000000000000000000000
          000000000000040422702222A1EF6363D2FF7272D6FF7272D7FF6F6FD7FF6969
          D4FF5F5FCFFF2323A1EF04042170000000000000000000000000000000000000
          0000000000000000000000000010040422700A0A52AF0D0D63BF0D0D63BF0A0A
          52AF040421700000001000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000C2C0E80319F36EF2F8D34DF020602300000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000E42109F43BB49FFA9EEB2FF90E299FF28792CCF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000009400A9F37B53CFFA0E8A9FFA0EEACFFB5F5BFFF71D379FF0F2E
          1180000000000000000000000000000000000000000000000000000000000000
          0000043E059F45BB4AFFA0E6A9FF8EE59AFF84E691FF9DEFA9FFAFF3B9FF49BE
          4FFF02060230000000000000000000000000000000000000000000000000003B
          009F3AB53EFF98E0A1FF84DD8FFF79DE87FFA8ECB2FF99ECA5FFACF3B7FF97E6
          9FFF247728CF0000000000000000000000000000000000000000002F008F33B1
          37FF90DB99FF78D685FF7EDA8BFF9FE6A8FF78D480FFA9EDB3FF91EB9EFFB2F3
          BCFF6BD073FF0E2D0F8000000000000000000000000000000000009700FF89D6
          92FF6FCF7AFF74D380FF97E0A0FF41B946FF12A314FF82D889FF9DEAA8FF92EA
          9FFFA7EDB1FF42BB47FF01060230000000000000000000000000009600FF7DD0
          86FF85D58FFF86D68EFF2EAF31FF023C029F010A014024AB27FFA3E8ACFF87E4
          94FFA1EBACFF8CDF94FF268829DF000000100000000000000000002E008F20A5
          23FF43B648FF10A012FF0030008F0000000000000000053E069F57C45DFF9CE5
          A6FF79DE88FFA5EAAEFF61C968FF0F37108F0000000000000000000000000005
          00300015006000050030000000000000000000000000000000100C8C0DEF89DA
          92FF87DE93FF80DD8CFF98E2A1FF3AB63FFF030B034000000000000000000000
          0000000000000000000000000000000000000000000000000000011601602EAF
          31FF97E0A0FF6AD477FF8CDD96FF7CD485FF218624DF00000010000000000000
          0000000000000000000000000000000000000000000000000000000000000458
          05BF66C96DFF89DA93FF59CB67FF94DE9DFF56C25CFF0D360E8F000000000000
          0000000000000000000000000000000000000000000000000000000000000005
          00300EA00FFF85D58DFF65CC71FF65CC71FF87D790FF25AC29FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000012601803EB542FF88D591FF6ECD78FF89D691FF23AC29FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000010017601DF4BBA51FF65C56CFF4BBA50FF0E5C0FBF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000020020003B009F045804BF053E059F00000010}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000002080F501F58AAFF163F78FF000000570000004D00000021000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          02221B4C93EF225EB1FF153B71FF000000430000003E0000003A000000260000
          0008000000000000000000000000000000000000000000000000000000001238
          6DD3205DB1FF2863B4FF14386CFF0000002E00000029000000230000001E0000
          0018000000050000000000000000000000000000000000000000225FB3FF1D53
          A0FF2463B7FF316DBCFF133769FF000000380000002E00000024000000180000
          0009225FB3FF00000000000000000000000000000000000000002463B7FF2058
          A6FF2869BDFF3A76C2FF123464FF000000380000002E00000024000000180000
          00090D8543FF007200FF00000000000000000000000000000000637288FF235D
          AAFF2B6EC2FF3F6DA7FF384961FF000000380000002E0000002400000018003C
          00A4009900FF007200FF000000000000000000000000000000002969BEFF2662
          AFFF2E73C8FF597596FF4D5E76FF000000380000002E000000240018006F0099
          00FF6AC96FFF007200FF007200FF007200FF007200FF007200FF2B6CC1FF2865
          B4FF3178CDFF5391D5FF133566FF000000380000002E001A0077009900FF56C0
          5AFF49BC4EFF57C35DFF5EC665FF65CA6DFF74D07CFF007200FF2C6FC3FF2A69
          B7FF337CD0FF5B99DBFF133566FF000000380000002E009900FF7DCE80FF41B8
          45FF35B43AFF3DB843FF45BC4BFF4FC156FF65CA6DFF007200FF2E71C6FF2C6B
          BAFF3680D3FF63A0E0FF133566FF000000380000002E001A0077009900FF80CF
          82FF70CA73FF6BC86FFF76CD7BFF7DD082FF67C96DFF007200FF2F73C8FF2D6D
          BCFF3782D6FF60A0E1FF133566FF000000380000002E000000240018006F0099
          00FF84D086FF009900FF009900FF009900FF009900FF009900FF65758BFF2E6F
          BEFF3E88D9FF89BFEEFF1A3653BF000000380000002E0000002400000018003C
          00A4009900FF009900FF000000000000000000000000000000003075CAFF3273
          C0FF76B2E8FF3F586DBF00000046000000380000002E00000024000000180000
          0009118C4BFF009900FF000000000000000000000000000000003176CBFF4B8C
          CFFF346191DE0000004600000046000000380000002E00000024000000180000
          00093176CBFF00000000000000000000000000000000000000003176CBFF3176
          CBFF3176CBFF3176CBFF3176CBFF3176CBFF3176CBFF3176CBFF3176CBFF3176
          CBFF3176CBFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000050000000B000000130000001E000000230000
          00180000000F0000000800000002000000000000000000000000000000000000
          000000000000000000040000000A0000000F207E4EFF207E4EFF207E4EFF207E
          4EFF000000120000000E00000009000000010000000000000000000000000000
          000000000000000000000000000000000003207E4EFF2EB872FF2EB872FF207E
          4EFF000000050000000200000000000000000000000000000000000000000000
          000000000000000000000000000000000000207E4EFF2EB872FF2EB872FF207E
          4EFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000207E4EFF2EB872FF2EB872FF207E
          4EFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000207E4EFF2EB872FF2EB872FF207E
          4EFF00000000000000000000000000000000000000000000000000000000207E
          4EFF207E4EFF207E4EFF207E4EFF207E4EFF207E4EFF30B974FF30B974FF207E
          4EFF207E4EFF207E4EFF207E4EFF207E4EFF207E4EFF0000000000000000207E
          4EFF3ABE7BFF3ABE7BFF3ABE7BFF3ABE7BFF3ABE7BFF3ABE7BFF3ABE7BFF3ABE
          7BFF3ABE7BFF3ABE7BFF3ABE7BFF3ABE7BFF207E4EFF0000000000000000207E
          4EFF44C383FF44C383FF44C383FF44C383FF44C383FF44C383FF44C383FF44C3
          83FF44C383FF44C383FF44C383FF44C383FF207E4EFF0000000000000000207E
          4EFF207E4EFF207E4EFF207E4EFF207E4EFF207E4EFF4EC88BFF4EC88BFF207E
          4EFF207E4EFF207E4EFF207E4EFF207E4EFF207E4EFF00000000000000000000
          000000000000000000000000000000000000207E4EFF58CD92FF58CD92FF207E
          4EFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000207E4EFF62D29AFF62D29AFF207E
          4EFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000207E4EFF6BD7A1FF6BD7A1FF207E
          4EFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000207E4EFF75DCA8FF75DCA8FF207E
          4EFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000207E4EFF207E4EFF207E4EFF207E
          4EFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
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
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000040000000900000009000000090000000900000009000000090000
          0009000000090000000900000009000000040000000000000000000000000000
          000200000015000000290000002C0000002C0000002C0000002C0000002C0000
          002C0000002C0000002C00000029000000150000000200000000000000000000
          00040000001900020046001C00A3003D00E4004E00FF0000002C0000002C0000
          002C0000002C0000002C0000002A000000190000000400000000000000000000
          000100080050004F00F604740DFF098C1AFF005600FF00000003000000030000
          0003000000030000000300000003000000030000000100000000000000000000
          0012005000ED068619FF08921FFF0D9A27FF016102FF00000000000000000000
          000000000000000100240001002400000000000000000000000000000000001F
          008D038012FF14A938FF12A736FF0B8F20FF006902FF00000000000000000000
          000000050039096D12F00B7015F0000500390000000000000000000000000051
          00D810A434FF12AB3BFF079221FF004400C60001001E0000000000000000000C
          00540D8117F80FA232FF0FA232FF138E23F9000E015900000000000000000072
          00F61BBA4CFF1DBE4FFF01850DFF0005003600000000000000000017006F027E
          04FF0C9B26FF12B243FF12B243FF0C9B26FF07880EFF0017006F00000000007A
          00F625C95BFF26CA5DFF008501FF000000030000000000000000000000000000
          0000008500FF26CA5DFF26CA5DFF008400FF0000000000000000000000000065
          00D824CA5AFF22CB5DFF099E15FF000000150000000000000000000000000000
          0012069911FF25CD5FFF26CD5FFF008400F60000000000000000000000000034
          009613BB42FF1DCC60FF29CE59FF014403A90005003300000006000000120032
          009318BE43FF1BCB5FFF17C353FF007000DB0000000000000000000000000005
          0030009E00FC29D567FF1DD165FF30D764FF12B82DFF05A80BFF06A910FF1AC4
          47FF36DE71FF2CD86BFF00B12EFF003500930000000000000000000000000000
          00000031008A02B627FF29D86AFF24D76BFF27D96CFF36DF71FF35DF71FF21D6
          6AFF31DC6EFF07C24BFF00A100F9000300240000000000000000000000000000
          0000000000000035008D00B511FF19CD4FFF35DE6DFF40E575FF37E172FF20D5
          63FF01BF39FF00A800F90015005A000000000000000000000000000000000000
          0000000000000000000000060030003C0093007500CC00B200FC00B600FF0086
          00DB004100990004002A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
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
      end>
  end
  object qFornecedores: TUniQuery
    Tag = 7100
    SQLInsert.Strings = (
      'INSERT INTO produto_fornecedores'
      
        '  (produto, fornecedor, representante, ultima_compra, preco_comp' +
        'ra, tempo_entrega, minimo_compra)'
      'VALUES'
      
        '  (:produto, :fornecedor, :representante, :ultima_compra, :preco' +
        '_compra, :tempo_entrega, :minimo_compra)')
    SQLDelete.Strings = (
      'DELETE FROM produto_fornecedores'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE produto_fornecedores'
      'SET'
      
        '  produto = :produto, fornecedor = :fornecedor, representante = ' +
        ':representante, ultima_compra = :ultima_compra, preco_compra = :' +
        'preco_compra, tempo_entrega = :tempo_entrega, minimo_compra = :m' +
        'inimo_compra'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM produto_fornecedores'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT produto, fornecedor, representante, ultima_compra, preco_' +
        'compra, tempo_entrega, minimo_compra FROM produto_fornecedores'
      'WHERE'
      '  codigo = :P_1_codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM produto_fornecedores'
      ''
      ') t')
    Connection = Connection.Conn
    SQL.Strings = (
      'SELECT pdf.codigo, '
      #9'pdf.produto, '
      #9'pdf.fornecedor, '
      #9'pf.nome as nome_fornecedor,'
      #9'pdf.representante, '
      #9'pr.nome as nome_representante,'
      #9'pdf.ultima_compra, '
      #9'pdf.preco_compra, '
      '        pdf.tempo_entrega,'
      '        pdf.minimo_compra'
      '   FROM produto_fornecedores pdf'
      '   LEFT JOIN pessoas pf on pf.codigo = pdf.fornecedor'
      '   LEFT JOIN pessoas pr on pr.codigo = pdf.representante'
      '  WHERE pdf.produto = :codigo ;')
    MasterSource = ds
    MasterFields = 'codigo'
    DetailFields = 'produto'
    AfterRefresh = qFornecedoresAfterRefresh
    Left = 880
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptInput
        Value = nil
      end>
  end
  object dsFornecedores: TUniDataSource
    DataSet = qFornecedores
    Left = 880
    Top = 120
  end
  object StyleRepository: TcxStyleRepository
    Left = 718
    Top = 255
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
  object dsProdutoEmpresa: TUniDataSource
    DataSet = qProdutoEmpresa
    Left = 480
  end
  object qProdutoEmpresa: TUniQuery
    Tag = 7000
    SQLInsert.Strings = (
      'INSERT INTO produto_empresas'
      
        '  (empresa, produto, valor_compra, ultima_compra, markup_vista, ' +
        'valor_vista, markup_prazo, valor_prazo, comissao, estoque_minimo' +
        ', estoque_maximo, deposito)'
      'VALUES'
      
        '  (:empresa, :produto, :valor_compra, :ultima_compra, :markup_vi' +
        'sta, :valor_vista, :markup_prazo, :valor_prazo, :comissao, :esto' +
        'que_minimo, :estoque_maximo, :deposito)')
    SQLDelete.Strings = (
      'DELETE FROM produto_empresas'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE produto_empresas'
      'SET'
      
        '  empresa = :empresa, produto = :produto, valor_compra = :valor_' +
        'compra, ultima_compra = :ultima_compra, markup_vista = :markup_v' +
        'ista, valor_vista = :valor_vista, markup_prazo = :markup_prazo, ' +
        'valor_prazo = :valor_prazo, comissao = :comissao, estoque_minimo' +
        ' = :estoque_minimo, estoque_maximo = :estoque_maximo, deposito =' +
        ' :deposito'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM produto_empresas'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT empresa, produto, valor_compra, ultima_compra, markup_vis' +
        'ta, valor_vista, markup_prazo, valor_prazo, comissao, estoque_mi' +
        'nimo, estoque_maximo, deposito FROM produto_empresas'
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
      #9'valor_compra, '
      #9'ultima_compra, '
      #9'markup_vista, '
      #9'valor_vista, '
      #9'markup_prazo, '
      #9'valor_prazo, '
      #9'comissao, '
      #9'estoque_minimo, '
      #9'estoque_maximo, '
      #9'deposito'
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
    object qProdutoEmpresavalor_compra: TCurrencyField
      FieldName = 'valor_compra'
      Required = True
    end
    object qProdutoEmpresaultima_compra: TDateField
      FieldName = 'ultima_compra'
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
    object qProdutoEmpresaestoque_minimo: TIntegerField
      FieldName = 'estoque_minimo'
    end
    object qProdutoEmpresaestoque_maximo: TIntegerField
      FieldName = 'estoque_maximo'
    end
    object qProdutoEmpresadeposito: TIntegerField
      FieldName = 'deposito'
    end
  end
end
