unit unGridPermissoesGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxClasses, DBAccess, Uni, MemDS, Vcl.ImgList,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls, Datasnap.DBClient,
  Vcl.Menus, unSystem, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxSkinsdxBarPainter, dxBar, dxRibbon, Vcl.ComCtrls;

type
  TfrmGridPermissoesGrupo = class(TfrmGrid)
    Columncodigo: TcxGridDBColumn;
    Columnnome: TcxGridDBColumn;
    Columnativo: TcxGridDBColumn;
    procedure MnVisualizarClick(Sender: TObject);
    procedure MnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGridPermissoesGrupo: TfrmGridPermissoesGrupo;

implementation

{$R *.dfm}

uses unConfigGrupoUsuario;

procedure TfrmGridPermissoesGrupo.MnEditarClick(Sender: TObject);
begin
  inherited;
  CfgEditar(TfrmConfigGrupoUsuario,frmConfigGrupoUsuario);
end;

procedure TfrmGridPermissoesGrupo.MnVisualizarClick(Sender: TObject);
begin
  inherited;
  CfgVisualizar(TfrmConfigGrupoUsuario,frmConfigGrupoUsuario);
end;

end.
