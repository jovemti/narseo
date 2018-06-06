unit unCadPessoaContasBancarias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCad, Vcl.ImgList, cxGraphics, Data.DB,
  MemDS, DBAccess, Uni, Vcl.StdCtrls, Vcl.ExtCtrls, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, dxGDIPlusClasses, cxImage,
  cxCheckBox, cxImageComboBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmCadPessoaContasBancarias = class(TfrmCad)
    edtCodigo: TcxDBSpinEdit;
    lblCodigo: TLabel;
    qConsultacodigo: TIntegerField;
    qConsultapessoa: TIntegerField;
    qConsultabanco: TIntegerField;
    qConsultatipo_conta: TStringField;
    qConsultaagencia_num: TIntegerField;
    qConsultaagencia_cod: TIntegerField;
    qConsultaconta_num: TIntegerField;
    qConsultaconta_cod: TIntegerField;
    qConsultaconta_principal: TBooleanField;
    qConsultaconta_inativa: TBooleanField;
    lblbanco: TLabel;
    edtbanco: TcxDBSpinEdit;
    lbltipo_conta: TLabel;
    cbbbanco: TcxDBLookupComboBox;
    cbbtipo_conta: TcxDBImageComboBox;
    lblAgencia: TLabel;
    edtagencia_num: TcxDBSpinEdit;
    lblagenciaCod: TLabel;
    edtagencia_cod: TcxDBSpinEdit;
    lblconta: TLabel;
    edtconta_num: TcxDBSpinEdit;
    lblcontaCod: TLabel;
    edtconta_cod: TcxDBSpinEdit;
    cbbconta_principal: TcxDBCheckBox;
    cbbContaInativa: TcxDBCheckBox;
    qBancos: TUniQuery;
    dsBancos: TUniDataSource;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPessoaContasBancarias: TfrmCadPessoaContasBancarias;

implementation

{$R *.dfm}

procedure TfrmCadPessoaContasBancarias.btnSalvarClick(Sender: TObject);
begin
  if ds.State = dsInsert then
    ds.DataSet.FieldByName('pessoa').AsInteger := Settings.ID;
  inherited;
end;

end.
