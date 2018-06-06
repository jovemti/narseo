unit unNewRegrasPrecos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unNew, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxMemo, cxDBEdit,
  cxMaskEdit, cxSpinEdit, cxTextEdit, Data.DB, DBAccess, Uni, MemDS,
  Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmNewRegrasPrecos = class(TfrmNew)
    FieldConsultacodigo: TIntegerField;
    FieldConsultaempresa: TIntegerField;
    FieldConsultadescricao: TStringField;
    FieldConsultaobservacao: TStringField;
    FieldConsultabloqueada: TBooleanField;
    lbl1: TLabel;
    edtdescricao: TcxDBTextEdit;
    lblCodigo: TLabel;
    edtCodigo: TcxDBSpinEdit;
    grpObservacao: TGroupBox;
    mmoobservacao: TcxDBMemo;
    procedure FormShow(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNewRegrasPrecos: TfrmNewRegrasPrecos;

implementation

{$R *.dfm}

uses unCadRegrasPrecos;

procedure TfrmNewRegrasPrecos.btnAvancarClick(Sender: TObject);
begin
  inherited;
  ActAvancar(TfrmCadRegrasPrecos,frmCadRegrasPrecos);
  Close;
end;

procedure TfrmNewRegrasPrecos.FormShow(Sender: TObject);
begin
  qSQL.ParamByName('sequencial').AsString := 'produto_regras_codigo_seq';
  inherited;
  edtdescricao.SetFocus;
  ds.DataSet.FieldByName('empresa').AsInteger := 1;
  ds.DataSet.FieldByName('bloqueada').AsBoolean := False;
end;

end.
