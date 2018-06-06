unit unCadDespesasFixas;

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
  cxCurrencyEdit, cxDBEdit, cxDropDownEdit, cxCalc, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  cxCalendar, cxMemo;

type
  TfrmCadDespesasFixas = class(TfrmCad)
    FieldConsultacodigo: TIntegerField;
    FieldConsultaempresa: TIntegerField;
    qConsultadata_registro: TDateTimeField;
    FieldConsultadescricao: TStringField;
    FieldConsultadia_vencimento: TIntegerField;
    FieldConsultatipo_conta: TIntegerField;
    FieldConsultatipo_pagamento: TIntegerField;
    FieldConsultacentro_custo: TStringField;
    FieldConsultavalor: TFloatField;
    FieldConsultatotal_parcelas: TIntegerField;
    FieldConsultaparcela_atual: TIntegerField;
    FieldConsultavalor_parcela: TCurrencyField;
    FieldConsultajuros_dia: TFloatField;
    FieldConsultajuros_porc: TFloatField;
    FieldConsultajuros: TFloatField;
    FieldConsultadesconto_porc: TFloatField;
    FieldConsultadesconto: TCurrencyField;
    FieldConsultadocumento: TStringField;
    FieldConsultaultimo_registro: TDateField;
    FieldConsultapessoa: TIntegerField;
    qConsultaobservacoes: TMemoField;
    FieldConsultanfe: TIntegerField;
    FieldConsultacd_nfentrada: TIntegerField;
    FieldConsultachave_nfe: TStringField;
    FieldConsultaserie: TIntegerField;
    FieldConsultacompra: TIntegerField;
    FieldConsultaquitada: TBooleanField;
    FieldConsultadespesa: TBooleanField;
    FieldConsultainativo: TBooleanField;
    edtCodigo: TcxDBSpinEdit;
    lblCodigo: TLabel;
    lbl1: TLabel;
    edtdescricao: TcxDBTextEdit;
    lbl2: TLabel;
    edttipo_conta: TcxDBSpinEdit;
    lbl3: TLabel;
    edttipo_pagamento: TcxDBSpinEdit;
    lbl4: TLabel;
    edtcentro_custo: TcxDBTextEdit;
    lbl5: TLabel;
    edtdia_vencimento: TcxDBSpinEdit;
    lbl6: TLabel;
    edttotal_parcelas: TcxDBSpinEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    edtparcela_atual: TcxDBSpinEdit;
    lbl9: TLabel;
    edtvalor_parcela: TcxDBCurrencyEdit;
    lbl10: TLabel;
    edtjuros_dia: TcxDBCalcEdit;
    lbl11: TLabel;
    edtjuros_porc: TcxDBCalcEdit;
    lbl12: TLabel;
    edtjuros: TcxDBCalcEdit;
    lbl13: TLabel;
    edtdocumento: TcxDBTextEdit;
    qTipoPagamento: TUniQuery;
    dsTipoPagamento: TUniDataSource;
    qTipoConta: TUniQuery;
    dsTipoConta: TUniDataSource;
    qCentroCustos: TUniQuery;
    dsCentroCustos: TUniDataSource;
    cbbTipoPagamento: TcxDBLookupComboBox;
    cbbCentroCustos: TcxDBLookupComboBox;
    cbbTipoConta: TcxDBLookupComboBox;
    edtvalor: TcxDBCurrencyEdit;
    lbl14: TLabel;
    edtdesconto_porc: TcxDBCalcEdit;
    lbl15: TLabel;
    edtdesconto: TcxDBCurrencyEdit;
    lbl16: TLabel;
    edtpessoa: TcxDBSpinEdit;
    qPessoas: TUniQuery;
    dsPessoas: TUniDataSource;
    cbbPessoa: TcxDBLookupComboBox;
    lbl17: TLabel;
    edtultimo_registro: TcxDBDateEdit;
    grpObservacoes: TGroupBox;
    cbbdespesa: TcxDBCheckBox;
    cbbquitada: TcxDBCheckBox;
    cbbinativo: TcxDBCheckBox;
    mmoobservacoes: TcxDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadDespesasFixas: TfrmCadDespesasFixas;

implementation

{$R *.dfm}

end.
