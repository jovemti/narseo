unit unGridRegrasPrecos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter, dxBar,
  Datasnap.DBClient, Vcl.Menus, cxClasses, DBAccess, Uni, MemDS, Vcl.ImgList,
  Vcl.ComCtrls, dxRibbon, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TfrmGridRegrasPrecos = class(TfrmGrid)
    ColumnViewcodigo: TcxGridDBColumn;
    ColumnViewempresa: TcxGridDBColumn;
    ColumnViewdescricao: TcxGridDBColumn;
    ColumnViewobservacao: TcxGridDBColumn;
    ColumnViewbloqueada: TcxGridDBColumn;
    procedure MnNovoClick(Sender: TObject);
    procedure MnVisualizarClick(Sender: TObject);
    procedure MnEditarClick(Sender: TObject);
    procedure MnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGridRegrasPrecos: TfrmGridRegrasPrecos;

implementation

{$R *.dfm}

uses unCadRegrasPrecos, unNewRegrasPrecos;

procedure TfrmGridRegrasPrecos.MnEditarClick(Sender: TObject);
begin
  inherited;
  ActEditar(TfrmCadRegrasPrecos,frmCadRegrasPrecos);
end;

procedure TfrmGridRegrasPrecos.MnExcluirClick(Sender: TObject);
begin
  inherited;
  ActRemover(TfrmCadRegrasPrecos,frmCadRegrasPrecos);
end;

procedure TfrmGridRegrasPrecos.MnNovoClick(Sender: TObject);
begin
  inherited;
  ActNew(TfrmNewRegrasPrecos,frmNewRegrasPrecos);
end;

procedure TfrmGridRegrasPrecos.MnVisualizarClick(Sender: TObject);
begin
  inherited;
  ActVisualizar(TfrmCadRegrasPrecos,frmCadRegrasPrecos);
end;

end.
