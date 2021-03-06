unit unCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCad, Vcl.ImgList, cxGraphics, Data.DB,
  MemDS, DBAccess, Uni, Vcl.StdCtrls, Vcl.ExtCtrls, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxContainer, cxEdit, cxMemo,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, unSystem, Vcl.AppEvnts,
  cxCheckBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCalc, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxClasses, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, unMaster,
  cxCurrencyEdit, cxCalendar, dxGDIPlusClasses, cxImage, cxImageComboBox;

type
  TfrmCadProdutos = class(TfrmCad)
    grpDetalhes: TGroupBox;
    PageControl: TcxPageControl;
    tabGeral: TcxTabSheet;
    TabFiscal: TcxTabSheet;
    grp1: TGroupBox;
    lblCodigo: TLabel;
    edtCodigo: TcxDBSpinEdit;
    lblDescricao: TLabel;
    edtNome: TcxDBTextEdit;
    lblCodigoBarra: TLabel;
    edtCodigoBarra: TcxDBTextEdit;
    Label2: TLabel;
    edtIDGrupo: TcxDBSpinEdit;
    Label3: TLabel;
    edtIDSubGrupo: TcxDBSpinEdit;
    Label4: TLabel;
    edtCategoria: TcxDBSpinEdit;
    Label5: TLabel;
    edtIDMarca: TcxDBSpinEdit;
    Label6: TLabel;
    edtIDModelo: TcxDBSpinEdit;
    TabFornecedores: TcxTabSheet;
    grpProdDescriLonga: TGroupBox;
    mmoProdDescricaoLonga: TcxDBMemo;
    cbbinativo: TcxDBCheckBox;
    lblfornecedor: TLabel;
    edtfornecedor: TcxDBSpinEdit;
    cbbFornecedor: TcxDBLookupComboBox;
    cbbCategoria: TcxDBLookupComboBox;
    cbbGrupo: TcxDBLookupComboBox;
    cbbSubGrupo: TcxDBLookupComboBox;
    cbbMarca: TcxDBLookupComboBox;
    cbbModelo: TcxDBLookupComboBox;
    grpDtProduto: TGroupBox;
    grpDimensoes: TGroupBox;
    lblDimensoesAltura: TLabel;
    edtdm_altura: TcxDBCalcEdit;
    Label9: TLabel;
    edtdm_largura: TcxDBCalcEdit;
    lbl1: TLabel;
    edtdm_profundidade: TcxDBCalcEdit;
    grpFabricacao: TGroupBox;
    cbbproducao_propria: TcxDBCheckBox;
    Label7: TLabel;
    Label8: TLabel;
    lblUnidadeConversao: TLabel;
    lblUnidadeTamanho: TLabel;
    cbbUnidadeEntrada: TcxDBLookupComboBox;
    cbbUnidadeSaida: TcxDBLookupComboBox;
    cbbUnidadeConversao: TcxDBLookupComboBox;
    cbbUnidadeTamanho: TcxDBLookupComboBox;
    lblQtdeCaixa: TLabel;
    lblPeso: TLabel;
    lblCarga: TLabel;
    cbbperecivel: TcxDBCheckBox;
    cbbuso_consumo: TcxDBCheckBox;
    cbbtipo: TcxDBCheckBox;
    edtQtdeCaixa: TcxDBSpinEdit;
    edtPeso: TcxDBCalcEdit;
    edtCargaMaxima: TcxDBSpinEdit;
    qConsultacodigo: TIntegerField;
    qConsultanome: TStringField;
    qConsultadescricao: TMemoField;
    qConsultatipo: TStringField;
    qConsultacodigobarras: TStringField;
    qConsultafornecedor: TIntegerField;
    qConsultagrupo: TIntegerField;
    qConsultasubgrupo: TIntegerField;
    qConsultamarca: TIntegerField;
    qConsultacategoria: TIntegerField;
    qConsultamodelo: TIntegerField;
    qConsultaunidade_entrada: TStringField;
    qConsultaunidade_saida: TStringField;
    qConsultaunidade_conversao: TStringField;
    qConsultaunidade_tamanho: TStringField;
    qConsultaproducao_propria: TBooleanField;
    qConsultaperecivel: TBooleanField;
    qConsultauso_consumo: TBooleanField;
    qConsultainativo: TBooleanField;
    qConsultadm_altura: TFloatField;
    qConsultadm_largura: TFloatField;
    qConsultadm_profundidade: TFloatField;
    qConsultadm_quantidade: TIntegerField;
    qConsultadm_peso: TFloatField;
    qConsultadm_carga: TIntegerField;
    qConsultacf_cest: TStringField;
    qConsultacf_ncm: TStringField;
    qConsultatipo_combustivel: TIntegerField;
    qConsultacf_anp: TStringField;
    btnCB: TButton;
    qFornecedores: TUniQuery;
    grpFornecedores: TGroupBox;
    Grid: TcxGrid;
    View: TcxGridDBTableView;
    Master: TcxGridLevel;
    dsFornecedores: TUniDataSource;
    ColumnFornecedor: TcxGridDBColumn;
    ColumnRepresentante: TcxGridDBColumn;
    ColumnUltimaCompra: TcxGridDBColumn;
    ColumnPrecoCompra: TcxGridDBColumn;
    ColumnTempoEntrega: TcxGridDBColumn;
    ColumnMinimoCompra: TcxGridDBColumn;
    StyleRepository: TcxStyleRepository;
    StyleHeader: TcxStyle;
    StyleItemInativo: TcxStyle;
    StyleItemAtivo: TcxStyle;
    Panel1: TPanel;
    btnNovo: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    TabPoliticas: TcxTabSheet;
    grpEmpresas: TGroupBox;
    grpConfiguracoes: TGroupBox;
    GridEmpresas: TcxGrid;
    ViewEmpresas: TcxGridDBTableView;
    MasterEmpresas: TcxGridLevel;
    ColumnID: TcxGridDBColumn;
    ColumnEmpresa: TcxGridDBColumn;
    ColumnMatriz: TcxGridDBColumn;
    ColumnIDMatriz: TcxGridDBColumn;
    dsProdutoEmpresa: TUniDataSource;
    qProdutoEmpresa: TUniQuery;
    qProdutoEmpresacodigo: TIntegerField;
    qProdutoEmpresaempresa: TIntegerField;
    qProdutoEmpresaproduto: TIntegerField;
    qProdutoEmpresavalor_compra: TCurrencyField;
    qProdutoEmpresaultima_compra: TDateField;
    qProdutoEmpresamarkup_vista: TFloatField;
    qProdutoEmpresavalor_vista: TCurrencyField;
    qProdutoEmpresamarkup_prazo: TFloatField;
    qProdutoEmpresavalor_prazo: TCurrencyField;
    qProdutoEmpresacomissao: TFloatField;
    qProdutoEmpresaestoque_minimo: TIntegerField;
    qProdutoEmpresaestoque_maximo: TIntegerField;
    qProdutoEmpresadeposito: TIntegerField;
    Label1: TLabel;
    edtultima_compra: TcxDBDateEdit;
    Label10: TLabel;
    edtvalor_compra: TcxDBCurrencyEdit;
    Label11: TLabel;
    edtmarkup_vista: TcxDBCalcEdit;
    Label12: TLabel;
    edtvalor_vista: TcxDBCurrencyEdit;
    Label13: TLabel;
    edtmarkup_prazo: TcxDBCalcEdit;
    Label14: TLabel;
    edtvalor_prazo: TcxDBCurrencyEdit;
    Label15: TLabel;
    edtcomissao: TcxDBCalcEdit;
    Label16: TLabel;
    edtestoque_minimo: TcxDBSpinEdit;
    Label17: TLabel;
    edtestoque_maximo: TcxDBSpinEdit;
    Label18: TLabel;
    edtdeposito: TcxDBSpinEdit;
    cbbDeposito: TcxDBLookupComboBox;
    cbbmolde: TcxDBCheckBox;
    qConsultamolde: TBooleanField;
    TabEstoque: TcxTabSheet;
    grpEstoque: TGroupBox;
    grpMovimentacao: TGroupBox;
    GridEstoque: TcxGrid;
    ViewEstoque: TcxGridDBTableView;
    MasterEstoque: TcxGridLevel;
    GridMovimento: TcxGrid;
    ViewMovimento: TcxGridDBTableView;
    MasterMovimento: TcxGridLevel;
    ViewEstoqueempresa: TcxGridDBColumn;
    ViewEstoquedata_atualizacao: TcxGridDBColumn;
    ViewEstoquetotal_geral: TcxGridDBColumn;
    ViewEstoquetotal_disponovel: TcxGridDBColumn;
    ViewEstoquetotal_anterior: TcxGridDBColumn;
    ViewEstoquetotal_emprenhado: TcxGridDBColumn;
    ViewMovimentocodigo: TcxGridDBColumn;
    ViewMovimentodata_movimento: TcxGridDBColumn;
    ViewMovimentotipo_movimento: TcxGridDBColumn;
    ViewMovimentoquantidade: TcxGridDBColumn;
    ViewMovimentoquantidade_anterior: TcxGridDBColumn;
    ViewMovimentovalor_compra: TcxGridDBColumn;
    ViewMovimentovalor_venda: TcxGridDBColumn;
    ViewMovimentoorigem: TcxGridDBColumn;
    ViewMovimentoreferencia: TcxGridDBColumn;
    qEstoque: TUniQuery;
    qMovimento: TUniQuery;
    dsEstoque: TUniDataSource;
    dsMovimento: TUniDataSource;
    qTipoMovimento: TUniQuery;
    dsTipoMovimento: TUniDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtIDCestKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure qFornecedoresAfterRefresh(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCBClick(Sender: TObject);
    procedure qMovimentoBeforeOpen(DataSet: TDataSet);
    procedure edtmarkup_vistaExit(Sender: TObject);
    procedure edtmarkup_prazoExit(Sender: TObject);
    procedure edtvalor_vistaExit(Sender: TObject);
    procedure edtvalor_prazoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

{$R *.dfm}
uses unConnection, unDMProdutoConsultas, unCadProdutoFornecedor,
  unCadProdutoCodigoBarras, unParametros;

procedure TfrmCadProdutos.btnCBClick(Sender: TObject);
var FSettings: TFormMode;
begin
  inherited;
  try
    Application.CreateForm(TfrmCadProdutoCodigoBarras, frmCadProdutoCodigoBarras);
    FSettings.Modo := 'NEW';
    FSettings.ID := ds.DataSet.FieldByName('codigo').asInteger;
    TFMaster(frmCadProdutoCodigoBarras).Settings := FSettings;
    TFMaster(frmCadProdutoCodigoBarras).ShowModal;
  finally
    TFMaster(frmCadProdutoCodigoBarras).Release;
  end;
end;

procedure TfrmCadProdutos.btnEditarClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TfrmCadProdutoFornecedor, frmCadProdutoFornecedor);
    TfrmCad(frmCadProdutoFornecedor).Settings.Modo := 'ALTERACAO';
    TfrmCad(frmCadProdutoFornecedor).Settings.ID := ds.DataSet.FieldByName('codigo').asInteger;
    TfrmCad(frmCadProdutoFornecedor).ShowModal;
  finally
    TfrmCad(frmCadProdutoFornecedor).Release;
    dsFornecedores.DataSet.Refresh;
  end;
end;

procedure TfrmCadProdutos.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if Pergunta('INFO','Exclus�o de registro','Tem certeza que deseja remover o registro selecionado?','SN') = ID_YES then
    begin
      dsFornecedores.DataSet.Delete;
      dsFornecedores.DataSet.Refresh;
    end;
end;

procedure TfrmCadProdutos.btnNovoClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TfrmCadProdutoFornecedor, frmCadProdutoFornecedor);
    TfrmCad(frmCadProdutoFornecedor).Settings.Modo := 'NEW';
    TfrmCad(frmCadProdutoFornecedor).Settings.ID := ds.DataSet.FieldByName('codigo').asInteger;
    TfrmCad(frmCadProdutoFornecedor).ShowModal;
  finally
    TfrmCad(frmCadProdutoFornecedor).Release;
    dsFornecedores.DataSet.Refresh;
  end;
end;

procedure TfrmCadProdutos.btnSalvarClick(Sender: TObject);
begin
  if dsProdutoEmpresa.State in [dsEdit] then
    qProdutoEmpresa.Post;
  ds.DataSet.FieldByName('tipo').AsString := 'P';
  inherited;
end;

procedure TfrmCadProdutos.edtIDCestKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  {if (Key = #13) then
    begin
      if (edtIDCest.Text <> '') then
        SelectNext(ActiveControl,True,True)
      else
        begin
          CriaFormulario(TFrmGridCEST,0,'CONSULTA',FrmGridCEST);
          if Connection.Find.eValido = True then
            begin
              dmProdutoConsultas.GetINDEX(dmProdutoConsultas.qCEST,'codigo',Connection.Find.eChave);
              qConsultacest.AsString := dmProdutoConsultas.qCEST.FieldByName('cest').AsString;
              Connection.Find.eValido := False;
            end;
        end;
    end;}
end;

procedure TfrmCadProdutos.edtmarkup_prazoExit(Sender: TObject);
begin
  inherited;
  if ds.State in [dsInsert, dsEdit] then
    begin
      dsProdutoEmpresa.DataSet.FieldByName('valor_prazo').AsCurrency := Margem(dsProdutoEmpresa.DataSet.FieldByName('valor_compra').AsCurrency,dsProdutoEmpresa.DataSet.FieldByName('markup_prazo').AsFloat);
    end;
end;

procedure TfrmCadProdutos.edtmarkup_vistaExit(Sender: TObject);
begin
  inherited;
  if ds.State in [dsInsert, dsEdit] then
    begin
      dsProdutoEmpresa.DataSet.FieldByName('valor_vista').AsCurrency := Margem(dsProdutoEmpresa.DataSet.FieldByName('valor_compra').AsCurrency,dsProdutoEmpresa.DataSet.FieldByName('markup_vista').AsFloat);
    end;
end;

procedure TfrmCadProdutos.edtvalor_prazoExit(Sender: TObject);
begin
  inherited;
  if ds.State in [dsInsert, dsEdit] then
    begin
      dsProdutoEmpresa.DataSet.FieldByName('markup_prazo').AsCurrency := Porcentagem(dsProdutoEmpresa.DataSet.FieldByName('valor_compra').AsCurrency,dsProdutoEmpresa.DataSet.FieldByName('valor_prazo').AsCurrency);
    end;
end;

procedure TfrmCadProdutos.edtvalor_vistaExit(Sender: TObject);
begin
  inherited;
  if ds.State in [dsInsert, dsEdit] then
    begin
      dsProdutoEmpresa.DataSet.FieldByName('markup_vista').AsCurrency := Porcentagem(dsProdutoEmpresa.DataSet.FieldByName('valor_compra').AsCurrency,dsProdutoEmpresa.DataSet.FieldByName('valor_vista').AsCurrency);
    end;
end;

procedure TfrmCadProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmProdutoConsultas.Free;
end;

procedure TfrmCadProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TdmProdutoConsultas, dmProdutoConsultas);
end;

procedure TfrmCadProdutos.FormShow(Sender: TObject);
begin
  qProdutoEmpresa.ParamByName('produto').AsInteger := Settings.ID;
  inherited;
  if ds.State in [dsInsert] then
    begin
      TabFiscal.Enabled := False;
      TabFornecedores.Enabled := False;
      TabPoliticas.Enabled := False;
      TabEstoque.Enabled := False;
    end
  else
    begin
      TabFiscal.Enabled := False;
      TabFornecedores.Enabled := True;
      TabPoliticas.Enabled := True;
      TabEstoque.Enabled := True;
    end;
  if ds.State in [dsEdit] then
    begin
      btnCB.Enabled := True;
      btnNovo.Enabled := True;
      qProdutoEmpresa.Edit;
      if dsFornecedores.DataSet.RecordCount > 0 then
        begin
          btnEditar.Enabled := True;
          btnExcluir.Enabled := True;
        end
      else
        begin
          btnEditar.Enabled := False;
          btnExcluir.Enabled := False;
        end;
    end
  else
    begin
      btnCB.Enabled := False;
      btnNovo.Enabled := False;
      btnEditar.Enabled := False;
      btnExcluir.Enabled := False;
    end;
end;

procedure TfrmCadProdutos.qFornecedoresAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  if dsFornecedores.DataSet.RecordCount > 0 then
    begin
      btnEditar.Enabled := True;
      btnExcluir.Enabled := True;
    end
  else
    begin
      btnEditar.Enabled := False;
      btnExcluir.Enabled := False;
    end;
end;

procedure TfrmCadProdutos.qMovimentoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qMovimento.ParamByName('empresa').AsInteger := Parametros.cdsParametros.FieldByName('empresa').asInteger;
end;

end.
