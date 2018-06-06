unit unCadPessoa;

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
  cxCheckBox, cxDBEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxSpinEdit, dxSkinscxPCPainter, dxBarBuiltInMenu, cxMemo, cxPC, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, JvExStdCtrls, JvCombobox, JvDBCombobox,
  cxImageComboBox, unSystem, unEndereco, unParametros, Vcl.AppEvnts,
  dxGDIPlusClasses, cxImage;

type
  TfrmCadPessoa = class(TfrmCad)
    qCidade: TUniQuery;
    dsCidade: TUniDataSource;
    qConsultacodigo: TIntegerField;
    qConsultaempresa: TIntegerField;
    qConsultadatacadastro: TDateField;
    qConsultanome: TStringField;
    qConsultafantasia: TStringField;
    qConsultanomereduzido: TStringField;
    qConsultatipopessoa: TIntegerField;
    qConsultacnpj: TStringField;
    qConsultaie: TStringField;
    qConsultaim: TStringField;
    qConsultadatanascimento: TDateField;
    qConsultasexo: TStringField;
    qConsultaendereco: TStringField;
    qConsultaendereco_numero: TStringField;
    qConsultacomplemento: TStringField;
    qConsultareferencia: TStringField;
    qConsultabairro: TStringField;
    qConsultacep: TStringField;
    qConsultacidade: TIntegerField;
    qConsultauf: TStringField;
    qConsultapais: TIntegerField;
    qConsultatel1: TStringField;
    qConsultatel2: TStringField;
    qConsultatel3: TStringField;
    qConsultaemail: TStringField;
    qConsultasite: TStringField;
    qConsultaobs: TMemoField;
    qConsultaalerta: TStringField;
    qConsultacliente: TBooleanField;
    qConsultacolaborador: TBooleanField;
    qConsultafornecedor: TBooleanField;
    qConsultarepresentante: TBooleanField;
    qConsultainativo: TBooleanField;
    qPais: TUniQuery;
    dsPais: TUniDataSource;
    qSQL: TUniQuery;
    cbbTipoPessoa: TcxDBImageComboBox;
    chbInativo: TcxDBCheckBox;
    edtCNPJ: TcxDBTextEdit;
    edtCodigo: TcxDBSpinEdit;
    edtDataCadastro: TcxDBDateEdit;
    edtFantasia: TcxDBTextEdit;
    edtIE: TcxDBTextEdit;
    edtIM: TcxDBTextEdit;
    edtNome: TcxDBTextEdit;
    edtNomeReduzido: TcxDBTextEdit;
    grpInfo: TGroupBox;
    PageControl: TcxPageControl;
    TabContato: TcxTabSheet;
    PageControlEndereco: TcxPageControl;
    TabPrincipal: TcxTabSheet;
    lblCEP: TLabel;
    lblLogradouro: TLabel;
    lblEndereco_Numero: TLabel;
    lblReferencia: TLabel;
    lblComplemento: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblSite: TLabel;
    lblEmail: TLabel;
    lblUF: TLabel;
    lblTel1: TLabel;
    lblCelular: TLabel;
    lblTel3: TLabel;
    lblPais: TLabel;
    edtCEP: TcxDBTextEdit;
    btnBuscarCEP: TButton;
    edtLogradouro: TcxDBTextEdit;
    edtEndereco_numero: TcxDBTextEdit;
    edtReferencia: TcxDBTextEdit;
    edtComplemento: TcxDBTextEdit;
    edtBairro: TcxDBTextEdit;
    edtCidade: TcxDBSpinEdit;
    cbbCidade: TcxDBLookupComboBox;
    edtSite: TcxDBTextEdit;
    edtEmail: TcxDBTextEdit;
    edtTel1: TcxDBTextEdit;
    edtTel2: TcxDBTextEdit;
    edtTel3: TcxDBTextEdit;
    edtPais: TcxDBSpinEdit;
    cbbPais: TcxDBLookupComboBox;
    TabCobranca: TcxTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Button2: TButton;
    edtCOBbairro: TcxDBTextEdit;
    edtCOBcep: TcxDBTextEdit;
    edtCOBcidade: TcxDBSpinEdit;
    edtCOBcomplemento: TcxDBTextEdit;
    edtCOBendereco_numero: TcxDBTextEdit;
    edtCOBendereco: TcxDBTextEdit;
    edtCOBreferencia: TcxDBTextEdit;
    edtCOBtel1: TcxDBTextEdit;
    edtCOBtel2: TcxDBTextEdit;
    edtCOBtel3: TcxDBTextEdit;
    cbbCidadeCobranca: TcxDBLookupComboBox;
    TabEntrega: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Button1: TButton;
    edtENTbairro: TcxDBTextEdit;
    edtENTcep: TcxDBTextEdit;
    edtENTcidade: TcxDBSpinEdit;
    edtENTcomplemento: TcxDBTextEdit;
    edtENTendereco_numero: TcxDBTextEdit;
    edtENTendereco: TcxDBTextEdit;
    edtENTreferencia: TcxDBTextEdit;
    edtENTtel1: TcxDBTextEdit;
    edtENTtel2: TcxDBTextEdit;
    edtENTtel3: TcxDBTextEdit;
    cbbCidadeEntrega: TcxDBLookupComboBox;
    TabObsercacao: TcxTabSheet;
    grp1: TGroupBox;
    lblDataNasc: TLabel;
    lblSexo: TLabel;
    edtDataNasc: TcxDBDateEdit;
    grpAlerta: TGroupBox;
    mmAlerta: TcxDBMemo;
    grpObservacoes: TGroupBox;
    mmObservacoes: TcxDBMemo;
    cbbimgSexo: TcxDBImageComboBox;
    TabPerfil: TcxTabSheet;
    lblCNPJ: TLabel;
    lblCodigo: TLabel;
    lblDataCadastro: TLabel;
    lblFantasia: TLabel;
    lblIE: TLabel;
    lblIM: TLabel;
    lblNome: TLabel;
    lblNomeReduzido: TLabel;
    lblTipoPessoa: TLabel;
    qConsultatransportadora: TBooleanField;
    qEndCobranca: TUniQuery;
    dsEndCob: TUniDataSource;
    Label19: TLabel;
    edtCOBpais: TcxDBSpinEdit;
    Label6: TLabel;
    edtENTpais: TcxDBSpinEdit;
    cbbENTpais: TcxDBLookupComboBox;
    qEndEntrega: TUniQuery;
    dsEndEntrega: TUniDataSource;
    qEndCobrancacodigo: TIntegerField;
    qEndCobrancapessoa: TIntegerField;
    qEndCobrancaendereco: TStringField;
    qEndCobrancaendereco_numero: TStringField;
    qEndCobrancacomplemento: TStringField;
    qEndCobrancareferencia: TStringField;
    qEndCobrancabairro: TStringField;
    qEndCobrancacep: TStringField;
    qEndCobrancacidade: TIntegerField;
    qEndCobrancauf: TStringField;
    qEndCobrancapais: TIntegerField;
    qEndCobrancatel1: TStringField;
    qEndCobrancatel2: TStringField;
    qEndCobrancatel3: TStringField;
    qEndEntregacodigo: TIntegerField;
    qEndEntregapessoa: TIntegerField;
    qEndEntregaendereco: TStringField;
    qEndEntregaendereco_numero: TStringField;
    qEndEntregacomplemento: TStringField;
    qEndEntregareferencia: TStringField;
    qEndEntregabairro: TStringField;
    qEndEntregacep: TStringField;
    qEndEntregacidade: TIntegerField;
    qEndEntregauf: TStringField;
    qEndEntregapais: TIntegerField;
    qEndEntregatel1: TStringField;
    qEndEntregatel2: TStringField;
    qEndEntregatel3: TStringField;
    cbbUF: TcxDBImageComboBox;
    cbbcobuf: TcxDBImageComboBox;
    cbbentuf: TcxDBImageComboBox;
    cbbCOBpais: TcxDBLookupComboBox;
    TabResponsavel: TcxTabSheet;
    procedure btnBuscarCEPClick(Sender: TObject);
    procedure edtPaisEnter(Sender: TObject);
    procedure cbbTipoPessoaExit(Sender: TObject);
    procedure edtCNPJExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtTel1Exit(Sender: TObject);
    procedure edtTel2Exit(Sender: TObject);
    procedure edtTel3Exit(Sender: TObject);
    procedure edtFantasiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    Endereco: TEndereco;
    { Public declarations }
  end;

var
  frmCadPessoa: TfrmCadPessoa;

implementation

{$R *.dfm}

uses unCEP, unConnection;

procedure TfrmCadPessoa.btnBuscarCEPClick(Sender: TObject);
begin
  inherited;
  // Consulta CEP
  if ds.State in [dsEdit,dsInsert] then
    begin
      CriaFormulario(TfrmCEP,0,'CONSULTA',frmCEP);
      if Parametros.PEndereco.Valido = True then
        begin
          if (Application.MessageBox('Tem certeza que deseja utilizar o CEP pesquisado?','Confirma��o de atualiza��o',MB_ICONQUESTION + MB_YESNO) =  ID_YES) then
            begin
              // Inicia Substitui��o de campos que n�o esta nulos
              Endereco := Parametros.PEndereco;
              // >> CEP
              if Endereco.Cep <> '' then
                begin
                  qConsultacep.AsString := Endereco.Cep;
                end;
              // >> Endere�o
              if Endereco.Tipologradouro <> '' then
                begin
                  qConsultaendereco.AsString := Endereco.Tipologradouro + ' ' + Endereco.Logradouro;
                end
              else
                begin
                  if Endereco.Logradouro <> '' then
                    qConsultaendereco.AsString := Endereco.Logradouro;
                end;
              // >> Complemento
              if Endereco.Complemento <> '' then
                begin
                  qConsultacomplemento.AsString := Endereco.Complemento;
                end;
              // >> Bairro
              if Endereco.Bairro <> '' then
                begin
                  qConsultabairro.AsString := Endereco.Bairro;
                end;
              // >> UF
              if Endereco.Estado <> '' then
                begin
                  qConsultauf.AsString := Endereco.Estado;
                  qCidade.Filtered := False;
                  qCidade.Filter := 'uf = '+QuotedStr(Endereco.Estado);
                  qCidade.Filtered := True;
                end;
              // >> Municipio
              if Endereco.Cidade <> '' then
                begin
                  qSQL.Close;
                  qSQL.SQL.Clear;
                  qSQL.SQL.Text := ' SELECT	cd.codigo ' +
                                   '   FROM cidades cd ' +
                                   '  WHERE retira_acentuacao(cidade) ILIKE retira_acentuacao(' + QuotedStr('%'+Endereco.Cidade+'%') +') '+
                                   '    AND uf = ' + QuotedStr(Endereco.Estado) + ' ;';
                  qSQL.Open;
                  if qSQL.RecordCount = 1 then
                    qConsultacidade.AsInteger := qSQL.FieldByName('codigo').AsInteger;
                end;
            end
          else
            Aviso('INFO','Info','Opera��o cancelada!');
        end
    end
  else
    AbreFormulario(TfrmCEP,frmCEP);
end;

procedure TfrmCadPessoa.cbbTipoPessoaExit(Sender: TObject);
begin
  inherited;
  if qConsultatipopessoa.AsInteger = 0 then
    begin
      qConsultacnpj.EditMask := '000\.000\.000\-00;0;_';
      lblCNPJ.Caption := 'CPF:';
      lblCNPJ.Visible := True;
      lblNome.Caption := 'Nome:';
      lblNome.Visible := True;
      lblIE.Caption := 'RG:';
      lblIE.Visible := True;
      lblFantasia.Caption := 'Abreviatura';
      lblFantasia.Visible := True;
      lblIM.Caption := 'OID:';
      lblIM.Visible := True;
      lblNomeReduzido.Caption := 'Apelido:';
      lblNomeReduzido.Visible := True;
      TabResponsavel.TabVisible := False;
    end
  else
    begin
      qConsultacnpj.EditMask := '00\.000\.000\/0000\-00;0;_';
      lblCNPJ.Caption := 'CNPJ:';
      lblCNPJ.Visible := True;
      lblNome.Caption := 'Raz�o Social:';
      lblNome.Visible := True;
      lblIE.Caption := 'IE:';
      lblIE.Visible := True;
      lblFantasia.Caption := 'Fantasia';
      lblFantasia.Visible := True;
      lblIM.Caption := 'IM:';
      lblIM.Visible := True;
      lblNomeReduzido.Caption := 'Abreviatura:';
      lblNomeReduzido.Visible := True;
      TabResponsavel.TabVisible := True;
    end;
end;

procedure TfrmCadPessoa.edtCNPJExit(Sender: TObject);
begin
  inherited;
  if ds.State in [dsEdit, dsInsert] then
    begin
      if validaCGC(ds.DataSet.FieldByName('cnpj').AsString) = False then
        begin
          edtCNPJ.SetFocus;
        end;
    end;
end;

procedure TfrmCadPessoa.edtFantasiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ds.State in [dsEdit, dsInsert] then
    begin
      if Key = 13 then
        begin
          ds.DataSet.FieldByName('fantasia').AsString := ds.DataSet.FieldByName('nome').AsString;
        end;
    end;
end;

procedure TfrmCadPessoa.edtPaisEnter(Sender: TObject);
begin
  inherited;
  if edtPais.text = '' then
	  qConsultapais.AsInteger := 1058;
end;

procedure TfrmCadPessoa.edtTel1Exit(Sender: TObject);
begin
  inherited;
  if Length(qConsultatel1.AsString) = 10 then
    begin
      qConsultatel1.EditMask := '!\(99\) 0000-0000;0;_';
    end
  else
    begin
      qConsultatel1.EditMask := '!\(99\) 0000-00000;0;_';
    end;
end;

procedure TfrmCadPessoa.edtTel2Exit(Sender: TObject);
begin
  inherited;
  if Length(qConsultatel2.AsString) = 10 then
    begin
      qConsultatel2.EditMask := '!\(99\) 0000-0000;0;_';
    end
  else
    begin
      qConsultatel2.EditMask := '!\(99\) 0000-00000;0;_';
    end;
end;

procedure TfrmCadPessoa.edtTel3Exit(Sender: TObject);
begin
  inherited;
  if Length(qConsultatel3.AsString) = 10 then
    begin
      qConsultatel3.EditMask := '!\(99\) 0000-0000;0;_';
    end
  else
    begin
      qConsultatel3.EditMask := '!\(99\) 0000-00000;0;_';
    end;
end;

procedure TfrmCadPessoa.FormShow(Sender: TObject);
begin
  inherited;
  if ds.State in [dsInsert] then
    begin
      ds.DataSet.FieldByName('datacadastro').AsDateTime := Date;
      ds.DataSet.FieldByName('pais').AsInteger := 1058;
      cbbTipoPessoa.SetFocus;
    end
  else
    begin
      cbbTipoPessoaExit(Self);
    end;
end;

end.
