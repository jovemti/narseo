unit unGridDespesasFixas;

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
  Vcl.ExtCtrls, cxCurrencyEdit;

type
  TfrmGridDespesasFixas = class(TfrmGrid)
    ColumnViewcodigo: TcxGridDBColumn;
    ColumnViewdata_registro: TcxGridDBColumn;
    ColumnViewdescricao: TcxGridDBColumn;
    ColumnViewdia_vencimento: TcxGridDBColumn;
    ColumnViewtipo_conta: TcxGridDBColumn;
    ColumnViewtipo_pagamento: TcxGridDBColumn;
    ColumnViewvalor: TcxGridDBColumn;
    ColumnViewtotal_parcelas: TcxGridDBColumn;
    ColumnViewparcela_atual: TcxGridDBColumn;
    ColumnViewvalor_parcela: TcxGridDBColumn;
    ColumnViewdocumento: TcxGridDBColumn;
    ColumnViewultimo_registro: TcxGridDBColumn;
    ColumnViewpessoa: TcxGridDBColumn;
    ColumnViewcompra: TcxGridDBColumn;
    ColumnViewquitada: TcxGridDBColumn;
    ColumnViewdespesa: TcxGridDBColumn;
    ColumnViewinativo: TcxGridDBColumn;
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
  frmGridDespesasFixas: TfrmGridDespesasFixas;

implementation

{$R *.dfm}

uses unCadDespesasFixas;

procedure TfrmGridDespesasFixas.MnEditarClick(Sender: TObject);
begin
  inherited;
  ActEditar(TfrmCadDespesasFixas,frmCadDespesasFixas);
end;

procedure TfrmGridDespesasFixas.MnExcluirClick(Sender: TObject);
begin
  inherited;
  TabelaREF := 'despesas_fixas';
  ActRemover(TfrmCadDespesasFixas,frmCadDespesasFixas);
end;

procedure TfrmGridDespesasFixas.MnNovoClick(Sender: TObject);
begin
  inherited;
  ActInserir(TfrmCadDespesasFixas,frmCadDespesasFixas);
end;

procedure TfrmGridDespesasFixas.MnVisualizarClick(Sender: TObject);
begin
  inherited;
  ActVisualizar(TfrmCadDespesasFixas,frmCadDespesasFixas);
end;

end.
