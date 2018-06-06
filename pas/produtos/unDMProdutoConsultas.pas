unit unDMProdutoConsultas;

interface

uses
  System.SysUtils, System.Classes, unSystem, Data.DB, MemDS, DBAccess, Uni;

type
  TdmProdutoConsultas = class(TDataModule)
    qDepositos: TUniQuery;
    qGrupos: TUniQuery;
    qSubGrupos: TUniQuery;
    qCategoria: TUniQuery;
    qMarca: TUniQuery;
    qModelo: TUniQuery;
    qNCM: TUniQuery;
    qANP: TUniQuery;
    qCEST: TUniQuery;
    qCSOSN: TUniQuery;
    qCFOP: TUniQuery;
    dsDepositos: TUniDataSource;
    dsGrupos: TUniDataSource;
    dsSubGrupos: TUniDataSource;
    dsCategoria: TUniDataSource;
    dsMarca: TUniDataSource;
    dsModelo: TUniDataSource;
    dsNCM: TUniDataSource;
    dsANP: TUniDataSource;
    dsCEST: TUniDataSource;
    dsCSOSN: TUniDataSource;
    dsCFOP: TUniDataSource;
    qFornecedor: TUniQuery;
    dsFornecedor: TUniDataSource;
    qUnidade: TUniQuery;
    dsUnidade: TUniDataSource;
    qEmpresas: TUniQuery;
    dsEmpresas: TUniDataSource;
    qDeposito: TUniQuery;
    dsDeposito: TUniDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure OpenQuery;
  public
    { Public declarations }
    procedure GetINDEX(xQuery: TUniQuery; xKey: String; xID: Variant);
  end;

var
  dmProdutoConsultas: TdmProdutoConsultas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses unConnection, unParametros;

{ TdmProdutoConsultas }

procedure TdmProdutoConsultas.DataModuleCreate(Sender: TObject);
begin
  OpenQuery;
end;

procedure TdmProdutoConsultas.GetINDEX(xQuery: TUniQuery; xKey: String;
  xID: Variant);
begin
  try
    if xQuery.Active = True then
      xQuery.Close;
    xQuery.Open;
    if xQuery.RecordCount > 0 then
      begin
        xQuery.Locate(xKey, xID, []);
      end
    else
      begin
        Aviso('INFO','Registro n�o encontrado','Nenhum registro foi encontrado, verifique na se o cadastro base esta correto.');
        xQuery.Close;
      end;
  except
    Aviso('ERRO','Falha na consulta','N�o foi possivel realizar a consulta.'+#13+'Por favor, entre em contato com o suporte!');
  end;
end;

procedure TdmProdutoConsultas.OpenQuery;
var i:Integer;
begin
  for I := 0 to ComponentCount -1 do
    begin
      if Components[i] is TUniQuery then
        begin
          if TUniQuery(Components[i]).Tag = 7000 then
            begin
              TUniQuery(Components[i]).Open;
            end;
        end;
    end;
  i:= 0;
  for I := 0 to ComponentCount -1 do
    begin
      if Components[i] is TUniQuery then
        begin
          if TUniQuery(Components[i]).Tag = 7100 then
            begin
              TUniQuery(Components[i]).Open;
            end;
        end;
    end;
end;

end.
