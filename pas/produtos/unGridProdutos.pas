unit unGridProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxControls,
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
  cxNavigator, Data.DB, cxDBData, cxContainer, cxClasses, DBAccess, Uni, MemDS,
  Vcl.ImgList, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls, unSystem, unGrid, Datasnap.DBClient,
  Vcl.Menus, cxGraphics, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxRibbonCustomizationForm, dxSkinsdxBarPainter, dxBar, Vcl.ComCtrls, dxRibbon;

type
  TfrmGridProdutos = class(TfrmGrid)
    ColumnID: TcxGridDBColumn;
    ColumnDescricao: TcxGridDBColumn;
    ColumnSigla: TcxGridDBColumn;
    ColumnCodigoBarras: TcxGridDBColumn;
    btnReplicar: TButton;
    ColumnCategoria: TcxGridDBColumn;
    Columnmolde: TcxGridDBColumn;
    MnReplicar: TdxBarLargeButton;
    procedure ViewDblClick(Sender: TObject);
    procedure MnNovoClick(Sender: TObject);
    procedure MnReplicarClick(Sender: TObject);
    procedure MnVisualizarClick(Sender: TObject);
    procedure MnEditarClick(Sender: TObject);
    procedure MnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGridProdutos: TfrmGridProdutos;

implementation

{$R *.dfm}

uses unCadProdutos;

procedure TfrmGridProdutos.MnEditarClick(Sender: TObject);
begin
  inherited;
  ActEditar(TfrmCadProdutos,frmCadProdutos);
end;

procedure TfrmGridProdutos.MnExcluirClick(Sender: TObject);
begin
  inherited;
  TabelaREF := 'produtos';
  ActRemover(TfrmCadProdutos,frmCadProdutos);
end;

procedure TfrmGridProdutos.MnNovoClick(Sender: TObject);
begin
  inherited;
  ActInserir(TfrmCadProdutos,frmCadProdutos);
end;

procedure TfrmGridProdutos.MnReplicarClick(Sender: TObject);
var
  NewDescricao :string;
begin
  inherited;
  if Pergunta('WHAT','Aten��o','Tem certeza que deseja replicar o registro selecionado?','SN') = ID_YES then
    begin
      qSQL.Close;
      NewDescricao := InputBox('Replica de registro','Por favor, insira um valor para o campo '+QuotedStr('SABOR') +':','');
      if NewDescricao = '' then
        begin
          Exit;
        end;
      qSQL.SQL.Clear;
      qSQL.SQL.Text := 'SELECT set_replica('+ ds.DataSet.FieldByName('codigo').AsString +','+ QuotedStr(NewDescricao) +')';
      try
        qSQL.Execute;
        if qSQL.FieldByName('set_replica').AsBoolean = True then
          begin
            Aviso('INFO','Sucesso','O regristro selecionado foi replicado com sucesso.');
          end
        else
          begin
            Aviso('WARN','Aten��o','N�o foi possivel replicar o registro selecionado.'+#13+'Por favor, entre em contato com o suporte.');
          end;
        qSQL.Close;
        qSQL.SQL.Clear;
        ds.DataSet.Refresh;
      except
        Aviso('ERRO','Aten��o','N�o foi possivel replicar o registro selecionado.'+#13+'Por favor, entre em contato com o suporte.');
      end;
    end;
end;

procedure TfrmGridProdutos.MnVisualizarClick(Sender: TObject);
begin
  inherited;
  ActVisualizar(TfrmCadProdutos,frmCadProdutos);
end;

procedure TfrmGridProdutos.ViewDblClick(Sender: TObject);
var NewConsulta :TConsulta;
begin
  inherited;
  Find(ds.DataSet.FieldByName('codigo').AsInteger,ds.DataSet.FieldByName('nome').AsString);
end;

end.
