unit unGridCFOP;

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
  cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter, dxBar,
  Vcl.ComCtrls, dxRibbon;

type
  TfrmGridCFOP = class(TfrmGrid)
    Viewcodigo: TcxGridDBColumn;
    Viewchave: TcxGridDBColumn;
    Viewdescricao: TcxGridDBColumn;
    Viewmaster: TcxGridDBColumn;
    Viewsubmaster: TcxGridDBColumn;
    Viewdescricao_sefaz: TcxGridDBColumn;
    Viewtipo_mvto: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGridCFOP: TfrmGridCFOP;

implementation

{$R *.dfm}

end.
