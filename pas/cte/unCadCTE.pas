unit unCadCTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCad, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, Vcl.ImgList, Data.DB, MemDS,
  DBAccess, Uni, Vcl.StdCtrls, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxImageComboBox, cxPC, cxCalc, cxMemo,
  cxCurrencyEdit, cxGroupBox, cxRadioGroup;

type
  TfrmCadCTE = class(TfrmCad)
    lblCodigo: TLabel;
    edtCodigo: TcxDBSpinEdit;
    lbl1: TLabel;
    edtdata_registro: TcxDBDateEdit;
    lbl2: TLabel;
    edtconhecimento: TcxDBSpinEdit;
    lbl3: TLabel;
    PageControl1: TcxPageControl;
    TabBasico: TcxTabSheet;
    TabNotas: TcxTabSheet;
    grpRemetente: TGroupBox;
    grpDestinatario: TGroupBox;
    grpNF: TGroupBox;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edtnota: TcxDBSpinEdit;
    edtnfe_chave: TcxDBTextEdit;
    lbl4: TLabel;
    edtremetente: TcxDBSpinEdit;
    cbbremetente: TcxDBLookupComboBox;
    cbbremetente_endereco: TcxDBCheckBox;
    lbl5: TLabel;
    edtdestinatario: TcxDBSpinEdit;
    cbbdestinatario: TcxDBLookupComboBox;
    cbbdestinatario_endereco: TcxDBCheckBox;
    lbl9: TLabel;
    edtchave_cte: TcxDBTextEdit;
    lbl10: TLabel;
    edtdata_cancelamento: TcxDBDateEdit;
    edtchave_cancelamento: TcxDBTextEdit;
    cbbStatus: TcxDBImageComboBox;
    qRemetente: TUniQuery;
    FieldConsultacodigo1: TIntegerField;
    FieldConsultaempresa: TIntegerField;
    FieldConsultadatacadastro: TDateField;
    FieldConsultanome: TStringField;
    FieldConsultafantasia: TStringField;
    FieldConsultanomereduzido: TStringField;
    FieldConsultatipopessoa: TIntegerField;
    FieldConsultacnpj: TStringField;
    FieldConsultaie: TStringField;
    FieldConsultaim: TStringField;
    FieldConsultadatanascimento: TDateField;
    FieldConsultasexo: TStringField;
    FieldConsultaendereco: TStringField;
    FieldConsultaendereco_numero: TStringField;
    FieldConsultacomplemento: TStringField;
    FieldConsultareferencia: TStringField;
    FieldConsultabairro: TStringField;
    FieldConsultacep: TStringField;
    FieldConsultacidade: TIntegerField;
    FieldConsultauf: TStringField;
    FieldConsultapais: TIntegerField;
    FieldConsultatel1: TStringField;
    FieldConsultatel2: TStringField;
    FieldConsultatel3: TStringField;
    FieldConsultaemail: TStringField;
    FieldConsultasite: TStringField;
    qConsultaobs: TMemoField;
    FieldConsultaalerta: TStringField;
    FieldConsultacliente: TBooleanField;
    FieldConsultacolaborador: TBooleanField;
    FieldConsultafornecedor: TBooleanField;
    FieldConsultarepresentante: TBooleanField;
    FieldConsultatransportadora: TBooleanField;
    FieldConsultainativo: TBooleanField;
    qDestinatario: TUniQuery;
    Field1: TIntegerField;
    Field2: TIntegerField;
    Field3: TDateField;
    Field4: TStringField;
    Field5: TStringField;
    Field6: TStringField;
    Field7: TIntegerField;
    Field8: TStringField;
    Field9: TStringField;
    Field10: TStringField;
    Field11: TDateField;
    Field12: TStringField;
    Field13: TStringField;
    Field14: TStringField;
    Field15: TStringField;
    Field16: TStringField;
    Field17: TStringField;
    Field18: TStringField;
    Field19: TIntegerField;
    Field20: TStringField;
    Field21: TIntegerField;
    Field22: TStringField;
    Field23: TStringField;
    Field24: TStringField;
    Field25: TStringField;
    Field26: TStringField;
    MemoField1: TMemoField;
    Field27: TStringField;
    Field28: TBooleanField;
    Field29: TBooleanField;
    Field30: TBooleanField;
    Field31: TBooleanField;
    Field32: TBooleanField;
    Field33: TBooleanField;
    dsRemetente: TUniDataSource;
    dsDestinatario: TUniDataSource;
    qPais: TUniQuery;
    dsPais: TUniDataSource;
    qCidade: TUniQuery;
    dsCidade: TUniDataSource;
    PageControlRemetente: TcxPageControl;
    TabRemetentePadrao: TcxTabSheet;
    TabRemetenteEditado: TcxTabSheet;
    lblCNPJ: TLabel;
    edtCNPJ: TcxDBTextEdit;
    lblNome: TLabel;
    edtNome: TcxDBTextEdit;
    lblIE: TLabel;
    edtIE: TcxDBTextEdit;
    lblFantasia: TLabel;
    edtFantasia: TcxDBTextEdit;
    edtEndereco_numero: TcxDBTextEdit;
    lblEndereco_Numero: TLabel;
    edtLogradouro: TcxDBTextEdit;
    lblLogradouro: TLabel;
    edtCEP: TcxDBTextEdit;
    lblCEP: TLabel;
    lblComplemento: TLabel;
    edtComplemento: TcxDBTextEdit;
    lblReferencia: TLabel;
    edtReferencia: TcxDBTextEdit;
    lblBairro: TLabel;
    edtBairro: TcxDBTextEdit;
    lblPais: TLabel;
    edtPais: TcxDBSpinEdit;
    cbbPais: TcxDBLookupComboBox;
    lblCidade: TLabel;
    edtCidade: TcxDBSpinEdit;
    cbbCidade: TcxDBLookupComboBox;
    lblUF: TLabel;
    cbbUF: TcxDBImageComboBox;
    lbl11: TLabel;
    edtcnpj1: TcxDBTextEdit;
    lbl12: TLabel;
    edtnome1: TcxDBTextEdit;
    lbl13: TLabel;
    edtie1: TcxDBTextEdit;
    lbl14: TLabel;
    edtfantasia1: TcxDBTextEdit;
    edtendereco_numero1: TcxDBTextEdit;
    lbl15: TLabel;
    edtendereco: TcxDBTextEdit;
    lbl16: TLabel;
    edtcep1: TcxDBTextEdit;
    lbl17: TLabel;
    lbl18: TLabel;
    edtcomplemento1: TcxDBTextEdit;
    lbl19: TLabel;
    edtreferencia1: TcxDBTextEdit;
    lbl20: TLabel;
    edtbairro1: TcxDBTextEdit;
    lbl21: TLabel;
    edtpais1: TcxDBSpinEdit;
    cbbpais1: TcxDBLookupComboBox;
    lbl22: TLabel;
    edtcidade1: TcxDBSpinEdit;
    cbbcidade1: TcxDBLookupComboBox;
    lbl23: TLabel;
    cbbuf1: TcxDBImageComboBox;
    btnBuscarCEP: TButton;
    PageControlDestinatario: TcxPageControl;
    ab1: TcxTabSheet;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    lbl33: TLabel;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    edtcnpj2: TcxDBTextEdit;
    edtnome2: TcxDBTextEdit;
    edtie2: TcxDBTextEdit;
    edtfantasia2: TcxDBTextEdit;
    edtendereco_numero2: TcxDBTextEdit;
    edtendereco1: TcxDBTextEdit;
    edtcep2: TcxDBTextEdit;
    edtcomplemento2: TcxDBTextEdit;
    edtreferencia2: TcxDBTextEdit;
    edtbairro2: TcxDBTextEdit;
    edtpais2: TcxDBSpinEdit;
    cbbpais2: TcxDBLookupComboBox;
    edtcidade2: TcxDBSpinEdit;
    cbbcidade2: TcxDBLookupComboBox;
    cbbuf2: TcxDBImageComboBox;
    ab2: TcxTabSheet;
    lbl37: TLabel;
    lbl38: TLabel;
    lbl39: TLabel;
    lbl40: TLabel;
    lbl41: TLabel;
    lbl42: TLabel;
    lbl43: TLabel;
    lbl44: TLabel;
    lbl45: TLabel;
    lbl46: TLabel;
    lbl47: TLabel;
    lbl48: TLabel;
    lbl49: TLabel;
    edtcnpj3: TcxDBTextEdit;
    edtnome3: TcxDBTextEdit;
    edtie3: TcxDBTextEdit;
    edtfantasia3: TcxDBTextEdit;
    edtendereco_numero3: TcxDBTextEdit;
    edtendereco2: TcxDBTextEdit;
    edtcep3: TcxDBTextEdit;
    edtcomplemento3: TcxDBTextEdit;
    edtreferencia3: TcxDBTextEdit;
    edtbairro3: TcxDBTextEdit;
    edtpais3: TcxDBSpinEdit;
    cbbpais3: TcxDBLookupComboBox;
    edtcidade3: TcxDBSpinEdit;
    cbbcidade3: TcxDBLookupComboBox;
    cbbuf3: TcxDBImageComboBox;
    btn1: TButton;
    qPessoas: TUniQuery;
    dsPessoas: TUniDataSource;
    grp1: TGroupBox;
    lbl50: TLabel;
    edtnf_serie: TcxDBSpinEdit;
    lbl51: TLabel;
    lbl52: TLabel;
    edtnf_bcicms: TcxDBCalcEdit;
    lbl53: TLabel;
    edtnf_icms: TcxDBCalcEdit;
    lbl54: TLabel;
    edtnf_icms_st: TcxDBCalcEdit;
    lbl55: TLabel;
    edtnf_bc_icms_st: TcxDBCalcEdit;
    lbl57: TLabel;
    edtvalor_nf: TcxDBCalcEdit;
    lbl58: TLabel;
    edtdata_nfe: TcxDBDateEdit;
    cbbtipo_nota: TcxDBImageComboBox;
    qOperacacoes: TUniQuery;
    dsOperacoes: TUniDataSource;
    cbbnf_cfop: TcxDBLookupComboBox;
    edtnf_cfop: TcxDBTextEdit;
    lbl59: TLabel;
    edtnatureza_carga: TcxDBTextEdit;
    lbl60: TLabel;
    edtqtde_kgm: TcxDBTextEdit;
    lbl61: TLabel;
    lbl62: TLabel;
    edtqtde_volume: TcxDBCalcEdit;
    lbl63: TLabel;
    edtespecie_volume: TcxDBTextEdit;
    lbl64: TLabel;
    edtmarca: TcxDBTextEdit;
    lbl65: TLabel;
    edtfrete_kgm: TcxDBTextEdit;
    lbl67: TLabel;
    edtveiculo_placa: TcxDBTextEdit;
    lbl68: TLabel;
    lbl66: TLabel;
    edtsec_car: TcxDBTextEdit;
    qUnidade: TUniQuery;
    dsUnidade: TUniDataSource;
    cbbUnidadeTamanho: TcxDBLookupComboBox;
    cbbuf4: TcxDBImageComboBox;
    lbl56: TLabel;
    edtnf_total_prod: TcxDBCalcEdit;
    grp2: TGroupBox;
    rgfrete: TcxDBRadioGroup;
    rgredespacho: TcxDBRadioGroup;
    lbl69: TLabel;
    edtdata_coleta: TcxDBDateEdit;
    lbl70: TLabel;
    edtlocal_coleta: TcxDBSpinEdit;
    lbl71: TLabel;
    edtdata_recebimento: TcxDBDateEdit;
    lbl72: TLabel;
    edtlocal_entrega: TcxDBSpinEdit;
    cbblocal_coleta: TcxDBLookupComboBox;
    cbblocal_entrega: TcxDBLookupComboBox;
    lbl73: TLabel;
    edtcalculado_ate: TcxDBCalcEdit;
    lbl74: TLabel;
    lbl75: TLabel;
    edtseguro_averb: TcxDBTextEdit;
    lbl76: TLabel;
    edtseguro_seg: TcxDBTextEdit;
    cbbseguro_resp: TcxDBImageComboBox;
    lbl77: TLabel;
    edtseguro_apol: TcxDBTextEdit;
    lbl78: TLabel;
    edtvalor_frete: TcxDBCurrencyEdit;
    lbl79: TLabel;
    edtdespacho: TcxDBCurrencyEdit;
    lbl80: TLabel;
    edtpedagio: TcxDBCurrencyEdit;
    lbl81: TLabel;
    edtoutras_despesas: TcxDBCurrencyEdit;
    lbl82: TLabel;
    edtprestacao: TcxDBCurrencyEdit;
    lbl83: TLabel;
    edtbasecalc_icms: TcxDBCurrencyEdit;
    lbl84: TLabel;
    edtaliquota: TcxDBCalcEdit;
    lbl85: TLabel;
    edtvalor_icms: TcxDBCurrencyEdit;
    lbl86: TLabel;
    edttarifa: TcxDBCurrencyEdit;
    TabObservacoes: TcxTabSheet;
    grp3: TGroupBox;
    mmo1: TcxDBMemo;
    FieldConsultacodigo: TIntegerField;
    qConsultadata_registro: TDateTimeField;
    qConsultaconhecimento: TLargeintField;
    FieldConsultachave_cte: TStringField;
    FieldConsultachave_cancelamento: TStringField;
    FieldConsultadata_cancelamento: TDateField;
    FieldConsultastatus: TStringField;
    qConsultaremetente: TLargeintField;
    FieldConsultaremetente_endereco: TBooleanField;
    qConsultadestinatario: TLargeintField;
    FieldConsultadestinatario_endereco: TBooleanField;
    qConsultalocal_entrega: TLargeintField;
    FieldConsultadata_entrega: TDateField;
    FieldConsultatipo_nota: TStringField;
    qConsultanota: TLargeintField;
    FieldConsultanfe_chave: TStringField;
    FieldConsultanf_serie: TIntegerField;
    FieldConsultanf_bcicms: TFloatField;
    FieldConsultanf_icms: TFloatField;
    FieldConsultanf_icms_st: TFloatField;
    FieldConsultanf_bc_icms_st: TFloatField;
    FieldConsultanf_total_prod: TFloatField;
    FieldConsultanf_cfop: TStringField;
    FieldConsultavalor_nf: TFloatField;
    FieldConsultadata_nfe: TDateField;
    FieldConsultanatureza_carga: TStringField;
    FieldConsultaqtde_volume: TFloatField;
    FieldConsultaespecie_volume: TStringField;
    FieldConsultamarca: TStringField;
    FieldConsultaqtde_kgm: TStringField;
    FieldConsultafrete_kgm: TStringField;
    FieldConsultafrete: TIntegerField;
    FieldConsultavalor_frete: TFloatField;
    FieldConsultanatureza_operacao: TStringField;
    FieldConsultadespacho: TFloatField;
    FieldConsultapedagio: TFloatField;
    FieldConsultaoutras_despesas: TFloatField;
    FieldConsultaprestacao: TFloatField;
    FieldConsultaaliquota: TFloatField;
    FieldConsultabasecalc_icms: TFloatField;
    FieldConsultavalor_icms: TFloatField;
    FieldConsultatarifa: TFloatField;
    qConsultalocal_coleta: TLargeintField;
    FieldConsultadata_coleta: TDateField;
    FieldConsultafrota: TIntegerField;
    FieldConsultaveiculo_placa: TStringField;
    FieldConsultaveiculo_uf: TStringField;
    FieldConsultasec_car: TStringField;
    FieldConsultabase_calculo: TFloatField;
    FieldConsultacalculado_ate: TFloatField;
    FieldConsultadata_recebimento: TDateField;
    FieldConsultaredespacho: TIntegerField;
    FieldConsultaprocessado: TBooleanField;
    FieldConsultavalor_produto: TFloatField;
    FieldConsultamarcado_manual: TBooleanField;
    FieldConsultaun_med: TStringField;
    FieldConsultaseguro_resp: TStringField;
    FieldConsultaseguro_seg: TStringField;
    FieldConsultaseguro_apol: TStringField;
    FieldConsultaseguro_averb: TStringField;
    FieldConsultaobservacao: TStringField;
    lbl87: TLabel;
    edtnatureza_operacao: TcxDBTextEdit;
    cbbOperacao: TcxDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure edtnatureza_cargaEnter(Sender: TObject);
    procedure edtqtde_kgmEnter(Sender: TObject);
    procedure cbbUnidadeTamanhoEnter(Sender: TObject);
    procedure edtespecie_volumeEnter(Sender: TObject);
    procedure edtvalor_freteExit(Sender: TObject);
    procedure edtaliquotaEnter(Sender: TObject);
    procedure edtaliquotaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCTE: TfrmCadCTE;

implementation

{$R *.dfm}

procedure TfrmCadCTE.cbbUnidadeTamanhoEnter(Sender: TObject);
begin
  inherited;
  if ds.DataSet.State = dsEdit then
    if ds.DataSet.FieldByName('un_med').AsString = '' then
      begin
        ds.DataSet.FieldByName('un_med').AsString := 'LT';
      end;
end;

procedure TfrmCadCTE.edtaliquotaEnter(Sender: TObject);
begin
  inherited;
  if ds.DataSet.State = dsEdit then
    if ds.DataSet.FieldByName('aliquota').AsString = '' then
      begin
        ds.DataSet.FieldByName('aliquota').AsFloat := 12;
      end;

end;

procedure TfrmCadCTE.edtaliquotaExit(Sender: TObject);
begin
  inherited;
  if ds.DataSet.State = dsEdit then
    begin
      ds.DataSet.FieldByName('valor_icms').AsFloat := ds.DataSet.FieldByName('basecalc_icms').AsFloat * ds.DataSet.FieldByName('aliquota').AsFloat / 100;
    end;
end;

procedure TfrmCadCTE.edtespecie_volumeEnter(Sender: TObject);
begin
  inherited;
  if ds.DataSet.State = dsEdit then
    if ds.DataSet.FieldByName('especie_volume').AsString = '' then
      begin
        ds.DataSet.FieldByName('especie_volume').AsString := 'GRANEL';
      end;
end;

procedure TfrmCadCTE.edtnatureza_cargaEnter(Sender: TObject);
begin
  inherited;
  if ds.DataSet.State = dsEdit then
    if ds.DataSet.FieldByName('natureza_carga').AsString = '' then
      begin
        ds.DataSet.FieldByName('natureza_carga').AsString := 'ETANOL';
      end;
end;

procedure TfrmCadCTE.edtqtde_kgmEnter(Sender: TObject);
begin
  inherited;
  if ds.DataSet.State = dsEdit then
    if ds.DataSet.FieldByName('qtde_kgm').AsString = '' then
      begin
        ds.DataSet.FieldByName('qtde_kgm').AsString := 'LTS';
      end;
end;

procedure TfrmCadCTE.edtvalor_freteExit(Sender: TObject);
begin
  inherited;
  if ds.DataSet.State = dsEdit then
    begin
      ds.DataSet.FieldByName('basecalc_icms').AsFloat := ds.DataSet.FieldByName('valor_frete').AsFloat;
      ds.DataSet.FieldByName('prestacao').AsFloat := ds.DataSet.FieldByName('valor_frete').AsFloat;
    end;
end;

procedure TfrmCadCTE.FormShow(Sender: TObject);
begin
  inherited;
  PageControlRemetente.HideTabs := True;
  PageControlDestinatario.HideTabs := True;
end;

end.
