inherited frmCadPessoaRepresentante: TfrmCadPessoaRepresentante
  Caption = 'Cadastro de Pessoas - Representante'
  PixelsPerInch = 96
  TextHeight = 15
  inherited grpContent: TGroupBox
    ExplicitHeight = 422
    inherited cbbTipoPessoa: TcxDBImageComboBox
      ExplicitHeight = 23
    end
    inherited chbInativo: TcxDBCheckBox
      ExplicitHeight = 23
    end
    inherited edtCNPJ: TcxDBTextEdit
      ExplicitHeight = 23
    end
    inherited edtCodigo: TcxDBSpinEdit
      ExplicitHeight = 23
    end
    inherited edtDataCadastro: TcxDBDateEdit
      ExplicitHeight = 23
    end
    inherited edtFantasia: TcxDBTextEdit
      ExplicitHeight = 23
    end
    inherited edtIE: TcxDBTextEdit
      ExplicitHeight = 23
    end
    inherited edtIM: TcxDBTextEdit
      ExplicitHeight = 23
    end
    inherited edtNome: TcxDBTextEdit
      ExplicitHeight = 23
    end
    inherited edtNomeReduzido: TcxDBTextEdit
      ExplicitHeight = 23
    end
    inherited grpInfo: TGroupBox
      ExplicitTop = 139
      inherited PageControl: TcxPageControl
        inherited TabContato: TcxTabSheet
          ExplicitTop = 25
          ExplicitWidth = 770
          ExplicitHeight = 228
          inherited PageControlEndereco: TcxPageControl
            inherited TabPrincipal: TcxTabSheet
              inherited edtCEP: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtLogradouro: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtEndereco_numero: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtReferencia: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtComplemento: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtBairro: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtCidade: TcxDBSpinEdit
                ExplicitHeight = 23
              end
              inherited cbbCidade: TcxDBLookupComboBox
                ExplicitHeight = 23
              end
              inherited edtSite: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtEmail: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtTel1: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtTel2: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtTel3: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtPais: TcxDBSpinEdit
                ExplicitHeight = 23
              end
              inherited cbbPais: TcxDBLookupComboBox
                ExplicitHeight = 23
              end
              inherited cbbUF: TcxDBImageComboBox
                ExplicitHeight = 23
              end
            end
            inherited TabCobranca: TcxTabSheet
              inherited edtCOBbairro: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtCOBcep: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtCOBcidade: TcxDBSpinEdit
                ExplicitHeight = 23
              end
              inherited edtCOBcomplemento: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtCOBendereco_numero: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtCOBendereco: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtCOBreferencia: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtCOBtel1: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtCOBtel2: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtCOBtel3: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited cbbCidadeCobranca: TcxDBLookupComboBox
                ExplicitHeight = 23
              end
              inherited edtCOBpais: TcxDBSpinEdit
                ExplicitHeight = 23
              end
              inherited cbbcobuf: TcxDBImageComboBox
                ExplicitHeight = 23
              end
              inherited cbbCOBpais: TcxDBLookupComboBox
                ExplicitHeight = 23
              end
            end
            inherited TabEntrega: TcxTabSheet
              inherited edtENTbairro: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtENTcep: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtENTcidade: TcxDBSpinEdit
                ExplicitHeight = 23
              end
              inherited edtENTcomplemento: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtENTendereco_numero: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtENTendereco: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtENTreferencia: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtENTtel1: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtENTtel2: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited edtENTtel3: TcxDBTextEdit
                ExplicitHeight = 23
              end
              inherited cbbCidadeEntrega: TcxDBLookupComboBox
                ExplicitHeight = 23
              end
              inherited edtENTpais: TcxDBSpinEdit
                ExplicitHeight = 23
              end
              inherited cbbENTpais: TcxDBLookupComboBox
                ExplicitHeight = 23
              end
              inherited cbbentuf: TcxDBImageComboBox
                ExplicitHeight = 23
              end
            end
            inherited TabResponsavel: TcxTabSheet
              ExplicitLeft = 4
              ExplicitTop = 26
              ExplicitWidth = 756
              ExplicitHeight = 192
            end
          end
        end
        inherited TabObsercacao: TcxTabSheet
          ExplicitTop = 25
          ExplicitWidth = 770
          ExplicitHeight = 228
          inherited grp1: TGroupBox
            inherited edtDataNasc: TcxDBDateEdit
              ExplicitHeight = 23
            end
            inherited cbbimgSexo: TcxDBImageComboBox
              ExplicitHeight = 23
            end
          end
        end
        inherited TabPerfil: TcxTabSheet
          ExplicitTop = 25
          ExplicitWidth = 770
          ExplicitHeight = 228
        end
      end
    end
  end
  inherited ImageList16: TcxImageList
    FormatVersion = 1
  end
end
