unit unGridContasReceber;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  Vcl.Menus, cxClasses, DBAccess, Uni, MemDS, Vcl.ImgList,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls, unSystem, unParametros,
  unConnection, cxImageComboBox, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxSkinsdxBarPainter, dxBar, Vcl.ComCtrls, dxRibbon,
  frxClass, frxDBSet;

type
  TfrmGridContasReceber = class(TfrmGrid)
    Viewcodigo: TcxGridDBColumn;
    Viewempresa: TcxGridDBColumn;
    Viewdata_registro: TcxGridDBColumn;
    Viewdata_movimento: TcxGridDBColumn;
    Viewusuario: TcxGridDBColumn;
    Viewcd_tipo_conta: TcxGridDBColumn;
    Viewtipo_conta: TcxGridDBColumn;
    Viewdocumento: TcxGridDBColumn;
    Viewdescricao: TcxGridDBColumn;
    Viewvenda: TcxGridDBColumn;
    Viewvalor: TcxGridDBColumn;
    Viewparcela: TcxGridDBColumn;
    Viewtotal_parcelas: TcxGridDBColumn;
    Viewcd_tipo_pagamento: TcxGridDBColumn;
    Viewtipo_pagamento: TcxGridDBColumn;
    Viewcentro_custo: TcxGridDBColumn;
    Viewvencimento: TcxGridDBColumn;
    Viewvalor_corrigido: TcxGridDBColumn;
    Viewjuros_valor: TcxGridDBColumn;
    Viewdesconto_valor: TcxGridDBColumn;
    Viewdata_recebimento: TcxGridDBColumn;
    Viewcd_pessoa: TcxGridDBColumn;
    Viewpessoa: TcxGridDBColumn;
    Viewstatus: TcxGridDBColumn;
    Viewquitada: TcxGridDBColumn;
    Viewmulta: TcxGridDBColumn;
    Viewnfe: TcxGridDBColumn;
    Gerarbaixa1: TMenuItem;
    Desmembrar1: TMenuItem;
    N2: TMenuItem;
    StyleAberto: TcxStyle;
    StyleCancelado: TcxStyle;
    StyleQuitado: TcxStyle;
    StyleParcial: TcxStyle;
    Baixa1: TMenuItem;
    UtilizarSaldo1: TMenuItem;
    N3: TMenuItem;
    Detalhamentodebaixa1: TMenuItem;
    MiDetalhes: TdxBarSubItem;
    MnPagamentos: TdxBarLargeButton;
    Bs1: TdxBarSeparator;
    Mn1: TdxBarLargeButton;
    MnRelFaturamento: TdxBarLargeButton;
    mniN4: TMenuItem;
    mniFaturamento1: TMenuItem;
    mniReverter1: TMenuItem;
    RepFaturamento: TfrxReport;
    FRDataSetDados: TfrxDBDataset;
    FRDataSetContas: TfrxDBDataset;
    FRDataSetFatura: TfrxDBDataset;
    FRDataSetEmpresa: TfrxDBDataset;
    qFaturamento: TUniQuery;
    qEmpresa: TUniQuery;
    FieldEmpresacodigo: TIntegerField;
    FieldEmpresaempresa: TIntegerField;
    FieldEmpresanome: TStringField;
    FieldEmpresafantasia: TStringField;
    FieldEmpresanomereduzido: TStringField;
    FieldEmpresatipopessoa: TIntegerField;
    FieldEmpresacnpj: TStringField;
    FieldEmpresaie: TStringField;
    FieldEmpresaim: TStringField;
    FieldEmpresaendereco: TStringField;
    FieldEmpresaendereco_numero: TStringField;
    FieldEmpresacomplemento: TStringField;
    FieldEmpresareferencia: TStringField;
    FieldEmpresabairro: TStringField;
    FieldEmpresacep: TStringField;
    FieldEmpresauf: TStringField;
    FieldEmpresatel1: TStringField;
    FieldEmpresatel2: TStringField;
    FieldEmpresatel3: TStringField;
    FieldEmpresaemail: TStringField;
    FieldEmpresasite: TStringField;
    FieldEmpresacidade: TStringField;
    qDados: TUniQuery;
    qFatura: TUniQuery;
    procedure ViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure qConsultaAfterRefresh(DataSet: TDataSet);
    procedure Baixa1Click(Sender: TObject);
    procedure UtilizarSaldo1Click(Sender: TObject);
    procedure pmFuncoesPopup(Sender: TObject);
    procedure MnNovoClick(Sender: TObject);
    procedure MnVisualizarClick(Sender: TObject);
    procedure MnEditarClick(Sender: TObject);
    procedure MnExcluirClick(Sender: TObject);
    procedure Mn1Click(Sender: TObject);
    procedure mniReverter1Click(Sender: TObject);
    procedure MiDetalhesPopup(Sender: TObject);
    procedure MnRelFaturamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGridContasReceber: TfrmGridContasReceber;

implementation

{$R *.dfm}

uses unCadContasReceber, unBaixaContasReceber, unDMCaixaAdm,
  unAgregateFaturamento;

procedure TfrmGridContasReceber.Baixa1Click(Sender: TObject);
var
  Config: TFormMode;
begin
  inherited;
  // Gera a baixa do contas a receber
  if (ds.DataSet.FieldByName('status').AsString <> 'Q') and (ds.DataSet.FieldByName('quitada').AsBoolean = False) then
    begin
      if dmCaixaAdm.CaixaCheck = True then
        begin
          Config.Modo := 'NEW';
          Config.ID := ds.DataSet.FieldByName('codigo').AsInteger;
          try
            Application.CreateForm(TfrmBaixaContasReceber,frmBaixaContasReceber);
            frmBaixaContasReceber.Settings := Config;
            frmBaixaContasReceber.ShowModal;
          finally
            frmBaixaContasReceber.Release;
            ds.DataSet.Refresh;
          end;
        end
      else
        begin
          Aviso('STOP','Informa��o','Caixa de hoje n�o foi aberto. Opera��o cancelada.');
        end;
    end;
end;

procedure TfrmGridContasReceber.MiDetalhesPopup(Sender: TObject);
begin
  inherited;
  if ds.DataSet.FieldByName('fatura').AsBoolean = true then
    MnRelFaturamento.Enabled := True
  else
    MnRelFaturamento.Enabled := False;
end;

procedure TfrmGridContasReceber.Mn1Click(Sender: TObject);
begin
  inherited;
  CriaFormulario(TfrmAgregateFaturamento,0,'LISTA',frmAgregateFaturamento);
  ds.DataSet.Refresh;
end;

procedure TfrmGridContasReceber.MnEditarClick(Sender: TObject);
begin
  inherited;
  ActEditar(TfrmCadContasReceber,frmCadContasReceber);
end;

procedure TfrmGridContasReceber.MnExcluirClick(Sender: TObject);
begin
  inherited;
  TabelaREF := 'contas_receber';
  ActRemover(TfrmCadContasReceber,frmCadContasReceber);
end;

procedure TfrmGridContasReceber.mniReverter1Click(Sender: TObject);
begin
  inherited;
  if Pergunta('WHAT','Confirma��o','Tem certeza que deseja reverter o faturamento?','SN') = ID_YES then
    begin
      qSQL.Close;
      qSQL.SQL.Clear;
      qSQL.SQL.Text := 'SELECT faturamento_contasreceber_reverter(' + ds.DataSet.FieldByName('codigo').AsString + ');';
      qSQL.Execute;
      ds.DataSet.Refresh
    end;
end;

procedure TfrmGridContasReceber.MnNovoClick(Sender: TObject);
begin
  inherited;
  ActInserir(TfrmCadContasReceber,frmCadContasReceber);
end;

procedure TfrmGridContasReceber.MnRelFaturamentoClick(Sender: TObject);
begin
  inherited;
  qDados.Close;
  qDados.ParamByName('codigo').AsInteger := ds.DataSet.FieldByName('cd_pessoa').AsInteger;
  qDados.Open;
  qFaturamento.Close;
  qFaturamento.ParamByName('fatura').AsInteger := ds.DataSet.FieldByName('codigo').AsInteger;
  qFaturamento.Open;
  qFatura.Close;
  qFatura.ParamByName('fatura').AsInteger := ds.DataSet.FieldByName('codigo').AsInteger;
  qFatura.Open;
  RepFaturamento.ShowReport();
end;

procedure TfrmGridContasReceber.MnVisualizarClick(Sender: TObject);
begin
  inherited;
  ActVisualizar(TfrmCadContasReceber,frmCadContasReceber);
end;

procedure TfrmGridContasReceber.pmFuncoesPopup(Sender: TObject);
begin
  inherited;
  if (ds.DataSet.FieldByName('status').AsString <> 'Q') and (ds.DataSet.FieldByName('quitada').AsBoolean = False) then
    begin
      // Desmembrar1.Enabled := True;
      Baixa1.Enabled := True;
      UtilizarSaldo1.Enabled := True;
      if (ds.DataSet.FieldByName('fatura').AsBoolean = True) and (ds.DataSet.FieldByName('status').AsString = 'A') then
        mniFaturamento1.Enabled := True
      else
        mniFaturamento1.Enabled := False;
    end
  else
    begin
      // Desmembrar1.Enabled := False;
      Baixa1.Enabled := False;
      UtilizarSaldo1.Enabled := False;
      mniFaturamento1.Enabled := False;
    end;
end;

procedure TfrmGridContasReceber.qConsultaAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  if ds.DataSet.RecordCount = 0 then
    begin
      pmFuncoes.Items.Enabled := False;
    end
  else
    begin
      pmFuncoes.Items.Enabled := True;
    end;
end;

procedure TfrmGridContasReceber.UtilizarSaldo1Click(Sender: TObject);
var
  Config: TFormMode;
begin
  inherited;
  if (ds.DataSet.FieldByName('status').AsString <> 'Q') and (ds.DataSet.FieldByName('quitada').AsBoolean = False) then
    begin
      qSQL.SQL.Clear;
      qSQL.SQL.Text := 'select coalesce(sum(valor),0::money) as valor from pessoa_saldo WHERE liquidado = false and tipo_receita = 0 and pessoa = ' + ds.DataSet.FieldByName('cd_pessoa').AsString + ';';
      qSQL.Open;
      if qSQL.FieldByName('valor').AsCurrency > 1 then
        begin
          if dmCaixaAdm.CaixaCheck = True then
            begin
              Config.Modo := 'SALDO';
              Config.ID := ds.DataSet.FieldByName('codigo').AsInteger;
              try
                Application.CreateForm(TfrmBaixaContasReceber,frmBaixaContasReceber);
                frmBaixaContasReceber.Settings := Config;
                frmBaixaContasReceber.ShowModal;
              finally
                frmBaixaContasReceber.Release;
                ds.DataSet.Refresh;
              end;
            end
          else
            begin
              Aviso('STOP','Informa��o','Caixa de hoje n�o foi aberto. Opera��o cancelada.');
            end;
        end
      else
        begin
          Aviso('INFO','Informa��o','O cedente n�o possui saldo minimo suficiente para realizar a baixa. Opera��o cancelada.');
        end;
      qSQL.Close;
    end;
end;

procedure TfrmGridContasReceber.ViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  inherited;
// >> Define o Style
  if (ARecord is TcxGridDataRow) and (ARecord.Selected) then
    begin
      AStyle := StyleItemAtivo;
    end
  else
  // > Pendente
  if (ARecord is TcxGridDataRow) And Not (ARecord.Selected) And (ARecord.Values[Viewstatus.Index] = 'A') then
    begin
      AStyle := StyleAberto;
    end
  else
  // > Quitado
  if (ARecord is TcxGridDataRow) And Not (ARecord.Selected) And (ARecord.Values[Viewstatus.Index] = 'Q') then
    begin
      AStyle := StyleQuitado;
    end
  else
  // > Parcial
  if (ARecord is TcxGridDataRow) And Not (ARecord.Selected) And (ARecord.Values[Viewstatus.Index] = 'P') then
    begin
      AStyle := StyleParcial;
    end
  else
  // > Cancelado
  if (ARecord is TcxGridDataRow) And Not (ARecord.Selected) And (ARecord.Values[Viewstatus.Index] = 'C') then
    begin
      AStyle := StyleCancelado;
    end
  else
    begin
      AStyle := StyleItemAtivo;
    end;
end;

end.
