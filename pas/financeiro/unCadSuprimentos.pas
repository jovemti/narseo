unit unCadSuprimentos;

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
  DBAccess, Uni, Vcl.StdCtrls, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls, cxMemo,
  cxDBEdit, cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, unParametros;

type
  TfrmCadSuprimentos = class(TfrmCad)
    lblCodigo: TLabel;
    edtCodigo: TcxDBSpinEdit;
    qConsultacodigo: TIntegerField;
    qConsultacaixa: TIntegerField;
    qConsultaturno: TIntegerField;
    qConsultadata_movimento: TDateField;
    qConsultaoperador_sistema: TIntegerField;
    qConsultamotivo: TStringField;
    qConsultavalor: TCurrencyField;
    qConsultacupom: TIntegerField;
    qConsultadata_hora: TDateTimeField;
    qConsultatipo: TStringField;
    qConsultaoperador_caixa: TIntegerField;
    qConsultatipo_pagamento: TIntegerField;
    qConsultaconta: TIntegerField;
    qConsultaobservacao: TStringField;
    lblMotivo: TLabel;
    edtmotivo: TcxDBTextEdit;
    lblValor: TLabel;
    edtValor: TcxDBCurrencyEdit;
    lblOperador: TLabel;
    edtoperador_sistema: TcxDBSpinEdit;
    grpObservacoes: TGroupBox;
    mmoobservacao: TcxDBMemo;
    cbbOperador: TcxDBLookupComboBox;
    qPessoas: TUniQuery;
    dsPessoas: TUniDataSource;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadSuprimentos: TfrmCadSuprimentos;

implementation

uses unDMCaixaAdm;

{$R *.dfm}

procedure TfrmCadSuprimentos.FormShow(Sender: TObject);
begin
  inherited;
  if ds.State in [dsInsert] then
    begin
      ds.DataSet.FieldByName('caixa').AsInteger := dmCaixaAdm.GetCaixa;
      ds.DataSet.FieldByName('turno').AsInteger := dmCaixaAdm.GetCaixaTurno;
      ds.DataSet.FieldByName('operador_sistema').AsInteger := Parametros.cdsParametros.FieldByName('pessoa').AsInteger;
      ds.DataSet.FieldByName('operador_caixa').AsInteger := dmCaixaAdm.GetCaixaOperador;
      ds.DataSet.FieldByName('tipo').AsString := 'R';
      ds.DataSet.FieldByName('tipo_pagamento').AsInteger := 1;
      ds.DataSet.FieldByName('data_movimento').AsDateTime := Now;
    end;
end;

end.
