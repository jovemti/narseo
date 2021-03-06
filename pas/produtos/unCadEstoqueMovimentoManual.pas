unit unCadEstoqueMovimentoManual;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCad, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxMemo, cxDBEdit,
  cxDropDownEdit, cxCalc, cxTextEdit, cxMaskEdit, cxSpinEdit, cxGroupBox,
  cxRadioGroup, Vcl.ImgList, Data.DB, MemDS, DBAccess, Uni, Vcl.StdCtrls,
  dxGDIPlusClasses, cxImage, Vcl.ExtCtrls, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmCadEstoqueMovimentoManual = class(TfrmCad)
    qProduto: TUniQuery;
    dsProduto: TUniDataSource;
    qTipoMovimento: TUniQuery;
    dsTipoMovimento: TUniDataSource;
    lblProduto: TLabel;
    edtCodigo: TcxDBSpinEdit;
    edtNome: TcxDBTextEdit;
    lblEstoqueAtual: TLabel;
    edtEstoqueAtual: TcxDBCalcEdit;
    lblQuantidade: TLabel;
    edtQuantidade: TcxDBCalcEdit;
    grpDescricao: TGroupBox;
    mmoDescricao: TcxDBMemo;
    lblTipoMovimento: TLabel;
    cbbTipoMovimento: TcxDBLookupComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEstoqueMovimentoManual: TfrmCadEstoqueMovimentoManual;

implementation

{$R *.dfm}

uses unParametros;

procedure TfrmCadEstoqueMovimentoManual.FormShow(Sender: TObject);
begin
  qProduto.ParamByName('empresa').AsInteger := Parametros.cdsParametros.FieldByName('empresa').asInteger;
  qProduto.ParamByName('codigo').AsInteger := Settings.ID;
  inherited;
  if ds.State in [dsInsert] then
    begin
      ds.DataSet.FieldByName('empresa').AsInteger := Parametros.cdsParametros.FieldByName('empresa').asInteger;
      ds.DataSet.FieldByName('produto').AsInteger := Settings.ID;
      ds.DataSet.FieldByName('data_movimento').AsDateTime := Date;
    end;
end;

end.
