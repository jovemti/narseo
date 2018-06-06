inherited frmCadFrota: TfrmCadFrota
  Caption = 'Cadastro de Frota'
  ClientHeight = 497
  ClientWidth = 670
  ExplicitWidth = 676
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlBotton: TPanel
    Top = 462
    Width = 670
    ExplicitTop = 462
    ExplicitWidth = 670
    inherited btnCancelar: TButton
      Left = 393
      ExplicitLeft = 393
    end
    inherited btnSalvar: TButton
      Left = 486
      ExplicitLeft = 486
    end
    inherited btnFechar: TButton
      Left = 579
      ExplicitLeft = 579
    end
  end
  inherited grpContent: TGroupBox
    Width = 660
    Height = 410
    ExplicitWidth = 660
    ExplicitHeight = 410
    object lblCartao: TLabel
      Left = 248
      Top = 82
      Width = 66
      Height = 15
      Caption = 'Automa'#231#227'o:'
      FocusControl = edtCartao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
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
    object lblid: TLabel
      Left = 17
      Top = 82
      Width = 135
      Height = 15
      Caption = 'Identificador de Veiculo:'
      FocusControl = edtid
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblKM: TLabel
      Left = 461
      Top = 111
      Width = 63
      Height = 15
      Caption = 'Ultimo KM:'
      FocusControl = edtKM
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMotorista: TLabel
      Left = 17
      Top = 111
      Width = 57
      Height = 15
      Caption = 'Motorista:'
      FocusControl = edtMotorista
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPlaca: TLabel
      Left = 524
      Top = 24
      Width = 31
      Height = 15
      Caption = 'Placa:'
      FocusControl = edtPlaca
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTipo: TLabel
      Left = 111
      Top = 24
      Width = 79
      Height = 15
      Caption = 'Tipo de Frota: '
      FocusControl = edtTipo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblVeiculo: TLabel
      Left = 389
      Top = 82
      Width = 43
      Height = 15
      Caption = 'Veiculo:'
      FocusControl = edtVeiculo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTransportadora: TLabel
      Left = 17
      Top = 53
      Width = 87
      Height = 15
      Caption = 'Transportadora:'
      FocusControl = edttransportadora
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object grpObservacao: TGroupBox
      AlignWithMargins = True
      Left = 7
      Top = 285
      Width = 646
      Height = 118
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alBottom
      Caption = ' Observa'#231#245'es '
      TabOrder = 14
      object mmoobservacao: TcxDBMemo
        AlignWithMargins = True
        Left = 7
        Top = 22
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        DataBinding.DataField = 'observacao'
        DataBinding.DataSource = ds
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        OnEnter = grpContentEnter
        Height = 89
        Width = 632
      end
    end
    object grpDatas: TGroupBox
      AlignWithMargins = True
      Left = 7
      Top = 198
      Width = 646
      Height = 82
      Margins.Left = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alBottom
      Caption = ' Eventos '
      TabOrder = 13
      object lblAquisicao: TLabel
        Left = 13
        Top = 21
        Width = 58
        Height = 15
        Caption = 'Aquisi'#231#227'o: '
        FocusControl = edtAquisicao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblManutencao: TLabel
        Left = 188
        Top = 21
        Width = 115
        Height = 15
        Caption = 'Ultima Manuten'#231#227'o: '
        FocusControl = edtManutencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblOleo: TLabel
        Left = 424
        Top = 21
        Width = 118
        Height = 15
        Caption = 'Ultima troca de '#211'leo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblVenda: TLabel
        Left = 31
        Top = 50
        Width = 40
        Height = 15
        Caption = 'Venda: '
        FocusControl = edtVenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtAquisicao: TcxDBDateEdit
        Left = 77
        Top = 18
        DataBinding.DataField = 'data_aquisicao'
        DataBinding.DataSource = ds
        TabOrder = 0
        OnEnter = grpContentEnter
        Width = 90
      end
      object edtManutencao: TcxDBDateEdit
        Left = 309
        Top = 18
        DataBinding.DataField = 'data_ultimamanutencao'
        DataBinding.DataSource = ds
        TabOrder = 1
        OnEnter = grpContentEnter
        Width = 90
      end
      object edtOleo: TcxDBDateEdit
        Left = 548
        Top = 18
        DataBinding.DataField = 'data_ultimatrocaoleo'
        DataBinding.DataSource = ds
        TabOrder = 2
        OnEnter = grpContentEnter
        Width = 90
      end
      object edtVenda: TcxDBDateEdit
        Left = 77
        Top = 47
        DataBinding.DataField = 'data_venda'
        DataBinding.DataSource = ds
        TabOrder = 3
        OnEnter = grpContentEnter
        Width = 90
      end
      object cbbinativo: TcxDBCheckBox
        Left = 190
        Top = 47
        Caption = 'Inativo?'
        DataBinding.DataField = 'inativo'
        DataBinding.DataSource = ds
        Style.TextStyle = [fsBold]
        TabOrder = 4
        OnEnter = grpContentEnter
        Width = 110
      end
      object cbbterceiro: TcxDBCheckBox
        Left = 309
        Top = 47
        Caption = 'Terceiro?'
        DataBinding.DataField = 'terceiro'
        DataBinding.DataSource = ds
        Style.TextStyle = [fsBold]
        TabOrder = 5
        OnEnter = grpContentEnter
        Width = 110
      end
      object cbbesporadico: TcxDBCheckBox
        Left = 425
        Top = 47
        Caption = 'Espor'#225'dico?'
        DataBinding.DataField = 'esporadico'
        DataBinding.DataSource = ds
        Style.TextStyle = [fsBold]
        TabOrder = 6
        OnEnter = grpContentEnter
        Width = 110
      end
    end
    object grpPrevencao: TGroupBox
      AlignWithMargins = True
      Left = 7
      Top = 133
      Width = 646
      Height = 57
      Margins.Left = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alBottom
      Caption = ' Preven'#231#227'o '
      TabOrder = 12
      object lblKmMotor: TLabel
        Left = 10
        Top = 24
        Width = 114
        Height = 15
        Caption = #211'leo do Motor (KM):'
        FocusControl = edtKmMotor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKmCambio: TLabel
        Left = 216
        Top = 24
        Width = 120
        Height = 15
        Caption = #211'leo do Cambio (KM):'
        FocusControl = edtKmCambio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblKmManutencao: TLabel
        Left = 428
        Top = 24
        Width = 102
        Height = 15
        Caption = 'Manuten'#231#227'o (KM):'
        FocusControl = edtKmManutencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtKmMotor: TcxDBCalcEdit
        Left = 130
        Top = 21
        DataBinding.DataField = 'km_oleomotor'
        DataBinding.DataSource = ds
        TabOrder = 0
        OnEnter = grpContentEnter
        Width = 80
      end
      object edtKmCambio: TcxDBCalcEdit
        Left = 342
        Top = 21
        DataBinding.DataField = 'km_oleocambio'
        DataBinding.DataSource = ds
        TabOrder = 1
        OnEnter = grpContentEnter
        Width = 80
      end
      object edtKmManutencao: TcxDBCalcEdit
        Left = 536
        Top = 21
        DataBinding.DataField = 'km_manutencao'
        DataBinding.DataSource = ds
        TabOrder = 2
        OnEnter = grpContentEnter
        Width = 102
      end
    end
    object cbbMotorista: TcxDBLookupComboBox
      Left = 154
      Top = 108
      DataBinding.DataField = 'motorista'
      DataBinding.DataSource = ds
      Properties.KeyFieldNames = 'codigo'
      Properties.ListColumns = <
        item
          Caption = 'Motorista'
          Width = 200
          FieldName = 'fantasia'
        end
        item
          Caption = 'Nome Reduzido'
          Width = 120
          FieldName = 'nomereduzido'
        end>
      Properties.ListSource = dsMotorista
      TabOrder = 10
      OnEnter = grpContentEnter
      Width = 301
    end
    object cbbTipo: TcxDBLookupComboBox
      Left = 252
      Top = 21
      DataBinding.DataField = 'tipo'
      DataBinding.DataSource = ds
      Properties.KeyFieldNames = 'codigo'
      Properties.ListColumns = <
        item
          Caption = 'Descri'#231#227'o'
          Width = 200
          FieldName = 'descricao'
        end>
      Properties.ListSource = dsTipoFrota
      TabOrder = 2
      OnEnter = grpContentEnter
      Width = 266
    end
    object edtCartao: TcxDBTextEdit
      Left = 320
      Top = 79
      DataBinding.DataField = 'automacao'
      DataBinding.DataSource = ds
      TabOrder = 7
      OnEnter = grpContentEnter
      Width = 63
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
    object edtid: TcxDBTextEdit
      Left = 158
      Top = 79
      DataBinding.DataField = 'identificacao'
      DataBinding.DataSource = ds
      TabOrder = 6
      OnEnter = grpContentEnter
      Width = 84
    end
    object edtKM: TcxDBCalcEdit
      Left = 530
      Top = 108
      DataBinding.DataField = 'ultimokm'
      DataBinding.DataSource = ds
      TabOrder = 11
      OnEnter = grpContentEnter
      Width = 115
    end
    object edtMotorista: TcxDBSpinEdit
      Left = 80
      Top = 108
      DataBinding.DataField = 'motorista'
      DataBinding.DataSource = ds
      Properties.SpinButtons.Visible = False
      TabOrder = 9
      OnEnter = grpContentEnter
      Width = 68
    end
    object edtPlaca: TcxDBTextEdit
      Left = 561
      Top = 21
      DataBinding.DataField = 'placa'
      DataBinding.DataSource = ds
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      OnEnter = grpContentEnter
      Width = 84
    end
    object edtTipo: TcxDBSpinEdit
      Left = 196
      Top = 21
      DataBinding.DataField = 'tipo'
      DataBinding.DataSource = ds
      Properties.SpinButtons.Visible = False
      TabOrder = 1
      OnEnter = grpContentEnter
      Width = 50
    end
    object edtVeiculo: TcxDBTextEdit
      Left = 438
      Top = 79
      DataBinding.DataField = 'veiculo'
      DataBinding.DataSource = ds
      Properties.CharCase = ecUpperCase
      TabOrder = 8
      OnEnter = grpContentEnter
      Width = 207
    end
    object edttransportadora: TcxDBSpinEdit
      Left = 110
      Top = 50
      DataBinding.DataField = 'transportadora'
      DataBinding.DataSource = ds
      Properties.SpinButtons.Visible = False
      TabOrder = 4
      OnEnter = grpContentEnter
      Width = 50
    end
    object cbbTransportadora: TcxDBLookupComboBox
      Left = 166
      Top = 50
      DataBinding.DataField = 'transportadora'
      DataBinding.DataSource = ds
      Properties.KeyFieldNames = 'codigo'
      Properties.ListColumns = <
        item
          Caption = 'Motorista'
          Width = 200
          FieldName = 'fantasia'
        end
        item
          Caption = 'Nome Reduzido'
          Width = 120
          FieldName = 'nomereduzido'
        end>
      Properties.ListSource = dsTransportadora
      TabOrder = 5
      OnEnter = grpContentEnter
      Width = 479
    end
  end
  inherited pnlHelp: TPanel
    Width = 661
    ExplicitWidth = 661
    inherited mmoHelp: TMemo
      Width = 614
      ExplicitWidth = 614
    end
  end
  inherited ds: TUniDataSource
    Left = 200
    Top = 360
  end
  inherited qConsulta: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO frotas'
      
        '  (transportadora, tipo, placa, identificacao, automacao, veicul' +
        'o, motorista, ultimokm, data_aquisicao, data_ultimamanutencao, d' +
        'ata_venda, data_ultimatrocaoleo, observacao, km_oleomotor, km_ol' +
        'eocambio, km_manutencao, terceiro, esporadico, inativo)'
      'VALUES'
      
        '  (:transportadora, :tipo, :placa, :identificacao, :automacao, :' +
        'veiculo, :motorista, :ultimokm, :data_aquisicao, :data_ultimaman' +
        'utencao, :data_venda, :data_ultimatrocaoleo, :observacao, :km_ol' +
        'eomotor, :km_oleocambio, :km_manutencao, :terceiro, :esporadico,' +
        ' :inativo)')
    SQLDelete.Strings = (
      'DELETE FROM frotas'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE frotas'
      'SET'
      
        '  transportadora = :transportadora, tipo = :tipo, placa = :placa' +
        ', identificacao = :identificacao, automacao = :automacao, veicul' +
        'o = :veiculo, motorista = :motorista, ultimokm = :ultimokm, data' +
        '_aquisicao = :data_aquisicao, data_ultimamanutencao = :data_ulti' +
        'mamanutencao, data_venda = :data_venda, data_ultimatrocaoleo = :' +
        'data_ultimatrocaoleo, observacao = :observacao, km_oleomotor = :' +
        'km_oleomotor, km_oleocambio = :km_oleocambio, km_manutencao = :k' +
        'm_manutencao, terceiro = :terceiro, esporadico = :esporadico, in' +
        'ativo = :inativo'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM frotas'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT transportadora, tipo, placa, identificacao, automacao, ve' +
        'iculo, motorista, ultimokm, data_aquisicao, data_ultimamanutenca' +
        'o, data_venda, data_ultimatrocaoleo, observacao, km_oleomotor, k' +
        'm_oleocambio, km_manutencao, terceiro, esporadico, inativo FROM ' +
        'frotas'
      'WHERE'
      '  codigo = :codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM frotas'
      ''
      ') t')
    SQL.Strings = (
      'SELECT '#9'ft.codigo, '
      #9'ft.transportadora,'
      #9'ft.tipo, '
      #9'ft.placa, '
      #9'ft.identificacao, '
      #9'ft.automacao, '
      #9'ft.veiculo, '
      #9'ft.motorista, '
      #9'ft.ultimokm,'
      #9'ft.data_aquisicao, '
      #9'ft.data_ultimamanutencao, '
      #9'ft.data_venda, '
      #9'ft.data_ultimatrocaoleo, '
      #9'ft.observacao,'
      #9'ft.km_oleomotor,'
      #9'ft.km_oleocambio,'
      #9'ft.km_manutencao,'
      #9'ft.terceiro,'
      #9'ft.esporadico,'
      #9'ft.inativo'
      '  FROM frotas ft'
      ' WHERE ft.codigo = :codigo;')
    Left = 160
    Top = 360
    object qConsultacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qConsultatipo: TIntegerField
      FieldName = 'tipo'
    end
    object qConsultaplaca: TStringField
      FieldName = 'placa'
      Required = True
      EditMask = '!LLL-9000;0;_'
      FixedChar = True
      Size = 7
    end
    object qConsultaveiculo: TStringField
      FieldName = 'veiculo'
      Size = 160
    end
    object qConsultamotorista: TIntegerField
      FieldName = 'motorista'
    end
    object qConsultaultimokm: TFloatField
      FieldName = 'ultimokm'
      Required = True
    end
    object qConsultadata_aquisicao: TDateField
      FieldName = 'data_aquisicao'
    end
    object qConsultadata_ultimamanutencao: TDateField
      FieldName = 'data_ultimamanutencao'
    end
    object qConsultadata_venda: TDateField
      FieldName = 'data_venda'
    end
    object qConsultadata_ultimatrocaoleo: TDateField
      FieldName = 'data_ultimatrocaoleo'
    end
    object qConsultainativo: TBooleanField
      FieldName = 'inativo'
    end
    object qConsultaobservacao: TMemoField
      FieldName = 'observacao'
      BlobType = ftMemo
    end
    object qConsultakm_oleomotor: TFloatField
      FieldName = 'km_oleomotor'
    end
    object qConsultakm_oleocambio: TFloatField
      FieldName = 'km_oleocambio'
    end
    object qConsultakm_manutencao: TFloatField
      FieldName = 'km_manutencao'
    end
    object qConsultaterceiro: TBooleanField
      FieldName = 'terceiro'
    end
    object qConsultaesporadico: TBooleanField
      FieldName = 'esporadico'
    end
    object qConsultatransportadora: TIntegerField
      FieldName = 'transportadora'
    end
    object qConsultaidentificacao: TStringField
      FieldName = 'identificacao'
      FixedChar = True
      Size = 10
    end
    object qConsultaautomacao: TStringField
      FieldName = 'automacao'
      FixedChar = True
    end
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
    DesignInfo = 23593076
  end
  object qTipoFrota: TUniQuery
    Tag = 7100
    SQLInsert.Strings = (
      'INSERT INTO grupo_produtos_subgrupos'
      '  (codgrupo, descricao, comissao)'
      'VALUES'
      '  (:codgrupo, :descricao, :comissao)')
    SQLDelete.Strings = (
      'DELETE FROM grupo_produtos_subgrupos'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE grupo_produtos_subgrupos'
      'SET'
      
        '  codgrupo = :codgrupo, descricao = :descricao, flag = :flag, co' +
        'missao = :comissao, tipo_comissao = :tipo_comissao'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM grupo_produtos_subgrupos'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT codgrupo, descricao, flag, comissao, tipo_comissao FROM g' +
        'rupo_produtos_subgrupos'
      'WHERE'
      '  codigo = :codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM grupo_produtos_subgrupos'
      ''
      ') t')
    Connection = Connection.Conn
    SQL.Strings = (
      'SELECT '#9'tf.codigo, '
      #9'tf.descricao, '
      #9'tf.bloqueado'
      '  FROM tipo_frota tf'
      ' WHERE tf.bloqueado = false'
      ' order by tf.descricao;')
    MasterSource = ds
    Left = 216
    Top = 264
  end
  object dsTipoFrota: TUniDataSource
    DataSet = qTipoFrota
    Left = 248
    Top = 264
  end
  object dsMotorista: TUniDataSource
    DataSet = qMotorista
    Left = 368
    Top = 264
  end
  object qMotorista: TUniQuery
    Tag = 7100
    SQLInsert.Strings = (
      'INSERT INTO grupo_produtos_subgrupos'
      '  (codgrupo, descricao, comissao)'
      'VALUES'
      '  (:codgrupo, :descricao, :comissao)')
    SQLDelete.Strings = (
      'DELETE FROM grupo_produtos_subgrupos'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE grupo_produtos_subgrupos'
      'SET'
      
        '  codgrupo = :codgrupo, descricao = :descricao, flag = :flag, co' +
        'missao = :comissao, tipo_comissao = :tipo_comissao'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM grupo_produtos_subgrupos'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT codgrupo, descricao, flag, comissao, tipo_comissao FROM g' +
        'rupo_produtos_subgrupos'
      'WHERE'
      '  codigo = :codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM grupo_produtos_subgrupos'
      ''
      ') t')
    Connection = Connection.Conn
    SQL.Strings = (
      'SELECT '#9'ps.codigo, '
      #9'ps.empresa, '
      #9'ps.nome, '
      #9'ps.fantasia, '
      #9'ps.nomereduzido'
      '  FROM '#9'pessoas ps'
      ' WHERE  ps.inativo = false '
      '   and  (ps.colaborador = true or ps.representante = true)'
      ' ORDER  BY ps.fantasia;')
    MasterSource = ds
    Left = 336
    Top = 264
  end
  object qTransportadora: TUniQuery
    Tag = 7100
    SQLInsert.Strings = (
      'INSERT INTO grupo_produtos_subgrupos'
      '  (codgrupo, descricao, comissao)'
      'VALUES'
      '  (:codgrupo, :descricao, :comissao)')
    SQLDelete.Strings = (
      'DELETE FROM grupo_produtos_subgrupos'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLUpdate.Strings = (
      'UPDATE grupo_produtos_subgrupos'
      'SET'
      
        '  codgrupo = :codgrupo, descricao = :descricao, flag = :flag, co' +
        'missao = :comissao, tipo_comissao = :tipo_comissao'
      'WHERE'
      '  codigo = :Old_codigo')
    SQLLock.Strings = (
      'SELECT * FROM grupo_produtos_subgrupos'
      'WHERE'
      '  codigo = :Old_codigo'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT codgrupo, descricao, flag, comissao, tipo_comissao FROM g' +
        'rupo_produtos_subgrupos'
      'WHERE'
      '  codigo = :codigo')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM grupo_produtos_subgrupos'
      ''
      ') t')
    Connection = Connection.Conn
    SQL.Strings = (
      'SELECT '#9'ps.codigo, '
      #9'ps.empresa, '
      #9'ps.nome, '
      #9'ps.fantasia, '
      #9'ps.nomereduzido'
      '  FROM '#9'pessoas ps'
      ' WHERE  ps.inativo = false '
      '   and  (ps.transportadora = true)'
      ' ORDER  BY ps.fantasia;')
    MasterSource = ds
    Left = 336
    Top = 320
  end
  object dsTransportadora: TUniDataSource
    DataSet = qTransportadora
    Left = 368
    Top = 320
  end
end
