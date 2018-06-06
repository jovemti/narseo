unit unDMCaixa;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, unDMBasico;

type
  TdmCaixa = class(TDMBasico)
    qColaborador: TUniQuery;
    qCliente: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCaixa: TdmCaixa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
Uses unParametros, unConnection;

end.
