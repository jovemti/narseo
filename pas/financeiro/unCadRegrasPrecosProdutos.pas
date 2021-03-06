unit unCadRegrasPrecosProdutos;

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
  cxCurrencyEdit, cxDBEdit, cxDropDownEdit, cxCalc, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxSpinEdit,
  unSystem, unParametros;

type
  TfrmCadRegrasPrecosProdutos = class(TfrmCad)
    lblCodigo: TLabel;
    edtCodigo: TcxDBSpinEdit;
    lbl1: TLabel;
    edtproduto: TcxDBSpinEdit;
    cbbProduto: TcxDBLookupComboBox;
    lbl2: TLabel;
    edtmarkup_vista: TcxDBCalcEdit;
    lbl3: TLabel;
    edtvalor_vista: TcxDBCurrencyEdit;
    lbl4: TLabel;
    edtmarkup_prazo: TcxDBCalcEdit;
    lbl5: TLabel;
    edtvalor_prazo: TcxDBCurrencyEdit;
    qProduto: TUniQuery;
    dsProduto: TUniDataSource;
    qSQL: TUniQuery;
    FieldConsultacodigo: TIntegerField;
    FieldConsultaregra: TIntegerField;
    FieldConsultaproduto: TIntegerField;
    FieldConsultamarkup_vista: TFloatField;
    FieldConsultavalor_vista: TCurrencyField;
    FieldConsultamarkup_prazo: TFloatField;
    FieldConsultavalor_prazo: TCurrencyField;
    procedure btnSalvarClick(Sender: TObject);
    procedure cbbProdutoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadRegrasPrecosProdutos: TfrmCadRegrasPrecosProdutos;

implementation

{$R *.dfm}

procedure TfrmCadRegrasPrecosProdutos.btnSalvarClick(Sender: TObject);
begin
  ds.DataSet.FieldByName('codigo').AsInteger := Settings.ID;
  inherited;
end;

procedure TfrmCadRegrasPrecosProdutos.cbbProdutoExit(Sender: TObject);
begin
  inherited;
  if ds.State in [dsInsert] then
    begin
      if (FieldConsultaproduto.IsNull = False) or (FieldConsultaproduto.AsInteger <> 0) then
        begin
          qSQL.Close;
          qSQL.ParamByName('empresa').AsInteger := Parametros.cdsParametros.FieldByName('empresa').asInteger;
          qSQL.ParamByName('produto').AsInteger := FieldConsultaproduto.AsInteger;
          qSQL.Open;
          FieldConsultamarkup_vista.AsCurrency := qSQL.FieldByName('markup_vista').AsCurrency;
          FieldConsultavalor_vista.AsCurrency := qSQL.FieldByName('valor_vista').AsCurrency;
          FieldConsultamarkup_prazo.AsCurrency := qSQL.FieldByName('markup_prazo').AsCurrency;
          FieldConsultavalor_prazo.AsCurrency := qSQL.FieldByName('valor_prazo').AsCurrency;
        end
    end;
end;

end.
