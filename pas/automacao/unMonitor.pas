unit unMonitor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unExecute, Vcl.ImgList,
  cxGraphics, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.ActnMan, Vcl.ToolWin,
  Vcl.ActnCtrls, Vcl.Ribbon, Vcl.RibbonObsidianStyleActnCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, EZClient, unSystem, unParametros, unConnection,
  unMaster;

type
  TfrmMonitor = class(TFMaster)
    ActionManager: TActionManager;
    actClose: TAction;
    actDesBlokBomba: TAction;
    actEncerrantes: TAction;
    actCartoes: TAction;
    actBlokBomba: TAction;
    actLerAbastecimentos: TAction;
    actCarregarConfig: TAction;
    ImageList: TcxImageList;
    TimerAppLoop: TTimer;
    procedure actCloseExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerAppLoopTimer(Sender: TObject);
    procedure chProcEventsClick(Sender: TObject);
    procedure btLogonClick(Sender: TObject);
    procedure btCheckConnectionClick(Sender: TObject);
    procedure btLoadConfigClick(Sender: TObject);
    procedure btClearMessagesClick(Sender: TObject);
    procedure PriceChangeClick(Sender: TObject);
    procedure btPresetClick(Sender: TObject);
    //
    procedure DesbloqueiaBomba(Sender: TObject);
    procedure BloqueiaBomba(Sender: TObject);
    procedure LerEncerrantes(Sender: TObject);
    procedure LerCartoes(Sender: TObject);
    procedure LerAbastecimentos(Sender: TObject);
    procedure actBlokBombaExecute(Sender: TObject);
    procedure actDesBlokBombaExecute(Sender: TObject);
    procedure actCartoesExecute(Sender: TObject);
    procedure actEncerrantesExecute(Sender: TObject);
    procedure actCarregarConfigExecute(Sender: TObject);
    procedure actLerAbastecimentosExecute(Sender: TObject);
    procedure btGetAllDeliveriesClick(Sender: TObject);
  private
    { Private declarations }
    lastStatus : WideString;
    EZInterface : TEZClient;   // Objeto TEZClient
    procedure ReadPumpsStatus();
    procedure InternalProccessEvents();
    // Listagem
    procedure ListGrades();
    procedure ListTanks();
    procedure ListPumps();
    procedure ListHoses();
    // Mensagens
    procedure WriteMessage(msg : String );
    procedure SetMsgListScrollBar();

  public
    { Public declarations }
    function GoodResult(res : Integer) : bool;
    function CompanyID(HoseNumber: SmallInt; PumpNumber: SmallInt ) : String;

  end;

var
  frmMonitor: TfrmMonitor;

implementation

{$R *.dfm}

procedure TfrmMonitor.actBlokBombaExecute(Sender: TObject);
begin
  inherited;
  BloqueiaBomba(nil);
end;

procedure TfrmMonitor.actCarregarConfigExecute(Sender: TObject);
begin
  inherited;
  ListGrades();
  ListTanks();
  ListPumps();
  ListHoses();
end;

procedure TfrmMonitor.actCartoesExecute(Sender: TObject);
begin
  inherited;
  LerCartoes(nil);
end;

procedure TfrmMonitor.actCloseExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmMonitor.actDesBlokBombaExecute(Sender: TObject);
begin
  inherited;
  DesbloqueiaBomba(nil);
end;

procedure TfrmMonitor.actEncerrantesExecute(Sender: TObject);
begin
  inherited;
  LerEncerrantes(nil);
end;

procedure TfrmMonitor.actLerAbastecimentosExecute(Sender: TObject);
begin
  inherited;
  LerAbastecimentos(nil);
end;

procedure TfrmMonitor.BloqueiaBomba(Sender: TObject);
var
  Bomba   : Integer;
  IdBomba : Integer;
begin
  Bomba := cbPump.ItemIndex+1;   // Le o numero da bomba no combo
  // Verifica conexao
  if not GoodResult( EZInterface.TestConnection ) then
    System.Exit;
  // Pega Id da Bomba escolhida
  if not GoodResult( EZInterface.GetPumpByOrdinal(Bomba, @IdBomba) ) then
    System.Exit;
  // Envia bloqueio (desautorizacao) para bomba
  if GoodResult( EZInterface.CancelAuthorise(IdBomba) ) then
    WriteMessage('Bomba ' + IntToStr(Bomba) + ' Desautorizada!');
end;

procedure TfrmMonitor.btCheckConnectionClick(Sender: TObject);
begin
  inherited;
    if not GoodResult( EZInterface.TestConnection ) then
    begin
      edServerAddress.Enabled := true;
      self.btLogonClick(self);
    end
    else
      WriteMessage('Conexao com EZServer OK!');
end;

procedure TfrmMonitor.btClearMessagesClick(Sender: TObject);
begin
  inherited;
  MsgList.Items.Clear;
end;

procedure TfrmMonitor.btGetAllDeliveriesClick(Sender: TObject);
begin
  inherited;
  LerAbastecimentos(nil);
end;

procedure TfrmMonitor.btLoadConfigClick(Sender: TObject);
begin
  inherited;
    ListGrades();
    ListTanks();
    ListPumps();
    ListHoses();
end;

procedure TfrmMonitor.btLogonClick(Sender: TObject);
var
    ITmp : Int32;
begin
  inherited;


    if chProcEvents.Checked = true then
    begin
       ITmp := 7;
    end
    else
       ITmp := 1;

    if edServerAddress.Enabled = True then
    begin
      WriteMessage('Conectando no servidor: ' + edServerAddress.Text);

      if GoodResult( EZInterface.ClientLogonEx( 25, ITmp, edServerAddress.Text, 5123, 5124, 10000, 0, 0, 0) ) then
      begin
        edServerAddress.Enabled := false;
        chProcEvents.Enabled := false;
        btLogon.Caption := 'Logoff';

        //self.ReadPumpsStatus;
      end;

    end
    else
    begin

      WriteMessage('Desconectando do servidor: ' + edServerAddress.Text);
      GoodResult( EZInterface.ClientLogoff );

      edServerAddress.Enabled := true;
      chProcEvents.Enabled := true;
      btLogon.Caption := 'Logon';

    end;
end;

procedure TfrmMonitor.btPresetClick(Sender: TObject);
var
    Bomba   : Integer;
    Bico    : Integer;
    IdBomba : Integer;
    IdBico  : SmallInt;
    LType   : SmallInt;
    PsValue : Double;

  begin

    Bomba        := cbPump.ItemIndex+1;   // Le o numero da bomba no combo
    Bico         := cbHose.ItemIndex+1;   // Le o numero da bico no combo

    LType        := cbPresetType.ItemIndex+2;  // SmallInt(EZClient.DOLLAR_PRESET_TYPE);
    PsValue      := strtofloat(edtPreset.Text);  // Le valor do campo de predeterminacao

    // Verifica conexao
    if not GoodResult( EZInterface.TestConnection ) then
      System.Exit;

    // Pega Id da Bomba escolhida
    if not GoodResult( EZInterface.GetPumpByOrdinal(Bomba, @IdBomba) ) then
      System.Exit;

    IdBico := 1 shl (Bico-1);  // Calcula ID do bico escolhido

    // Envia preset para bomba
    if( GoodResult( EZInterface.LoadPreset(IdBomba, LType, PsValue, IdBico, 1) ) ) then
      WriteMessage( 'Preset Enviado: Bomba ' + IntToStr(Bomba) +
                                   ', Bico ' + IntToStr(Bico) +
                                   ', Tipo ' + IntToStr(LType) +
                                  ', Valor ' + FloatToStr(PsValue) +
                                  ', Nivel de Preco 1' ) ;
end;

procedure TfrmMonitor.chProcEventsClick(Sender: TObject);
begin
  inherited;
    if chProcEvents.Checked = false then
    begin
      WriteMessage('Processando por Polling!');
    end
    else
      WriteMessage('Processando por Evento!');
end;

function TfrmMonitor.CompanyID(HoseNumber, PumpNumber: SmallInt): String;
var offset : Integer;
begin
    case HoseNumber of
       2: Offset := $44;
       3: Offset := $84;
       4: Offset := $C4;
    else // Outros valores s�o tratados como Bico 1
       Offset := $04;
    end;

    CompanyID := IntToHex( ((PumpNumber-1)+Offset), 2);
end;

procedure TfrmMonitor.DesbloqueiaBomba(Sender: TObject);
var
  Bomba   : Integer;
  IdBomba : Integer;
begin
  Bomba := cbPump.ItemIndex+1;   // Le o numero da bomba no combo
  // Verifica conexao
  if not GoodResult( EZInterface.TestConnection ) then
    System.Exit;
  // Pega Id da Bomba escolhida
  if not GoodResult( EZInterface.GetPumpByOrdinal(Bomba, @IdBomba) ) then
    System.Exit;
  // Envia Autorizacao para bomba
  if GoodResult( EZInterface.Authorise(IdBomba) ) then
    WriteMessage('Bomba ' + IntToStr(Bomba) + ' Autorizada!');
end;

procedure TfrmMonitor.FormCreate(Sender: TObject);
  Var
    Version : String;
    Index   : Integer;
begin
  inherited;
    EZInterface := TEZClient.Create;  // Instancia TEZClient

    //self.edServerAddress.Text := 'localhost';
    //self.edServerAddress.Text := '127.0.0.1';
    //self.edServerAddress.Text := '192.168.0.11';

    if EZInterface.IsLoaded = True then
    begin
      EZInterface.DllVersion( @Version );
      WriteMessage( Version );
    end;

    chProcEventsClick( self );

    // O correto ao fazer loguim seria levantar a lista de bombas e bicos
    // para preencher os ComboBox dinamicamente

    // Preenche lista de bombas
    for Index := 1 to 32 do
      cbPump.Items.Add( IntToStr(Index) );

    cbPump.ItemIndex := 0;   // Seleciona primeiro Item da lista

    // Preenche lista de bicos
    for Index := 1 to 4 do
      cbHose.Items.Add( IntToStr(Index) );

    cbHose.ItemIndex := 0;   // Seleciona primeiro Item da lista

    // Preenche lista de tipos de preset
    cbPresetType.Items.Add('Dinheiro');
    cbPresetType.Items.Add('Volume');
    cbPresetType.ItemIndex := 0;

    // Seta lista de estado de bombas
    lastStatus := '00000000000000000000000000000000000000000000000000';
end;

function TfrmMonitor.GoodResult(res: Integer): bool;
Var
    MSG: WideString;

  begin
    GoodResult := true;

    if res = 0 then
      System.Exit;

    GoodResult := false;

    MSG := EZInterface.ResultString( res);

    WriteMessage( '        *** Error: (' + IntToStr(res) + ') ' + MSG );

end;

procedure TfrmMonitor.InternalProccessEvents;
var
    EvtCt: Integer;
    EvtType: Integer;

    PumpID: Integer;
    PumpNumber: Smallint;
    State: Smallint;
    ReservedFor: Smallint;
    ReservedBy: Integer;
    HoseID: Integer;
    HoseNumber: Smallint;
    HosePhisicalNumber: Smallint;
    GradeID: Integer;
    GradeNumber: Integer;
    GradeName: WideString;
    ShortGradeName: WideString;
    PriceLevel: Smallint;
    Price: Double;
    Volume: Double;
    Value: Double;
    StackSize: Smallint;
    PumpName: WideString;
    PhysicalNumber: Integer;
    Side: Smallint;
    Address: Smallint;
    PriceLevel1: Smallint;
    PriceLevel2: Smallint;
    PumpType: Smallint;
    PortID: Integer ;
    AuthMode: Smallint ;
    StackMode: Smallint;
    PrepayAllowed: Smallint;
    PreauthAllowed: Smallint;
    PriceFormat: Smallint;
    ValueFormat: Smallint;
    VolumeFormat: Smallint;
    Tag: Int64;
    AttendantID: Integer;
    AttendantNumber: Integer;
    AttendantName: WideString;
    AttendantTag: Int64;
    CardClientID: Integer;
    CardClientNumber: Integer;
    CardClientName: WideString;
    CardClientTag: Int64;

    DeliveryID: Integer;
    HosePhysicalNumber: Integer;
    TankID: Integer;
    TankNumber: Integer;
    TankName: WideString;
    GradeShortName: WideString;
    GradeCode: WideString;
    DeliveryState: Smallint;
    DeliveryType: Smallint;
    Volume2: Double;
    CompletedDT: TDateTime;
    LockedBy: Integer;
    Age: Integer;
    ClearedDT: TDateTime;
    OldVolumeETot: Double;
    OldVolume2ETot: Double;
    OldValueETot: Double;
    NewVolumeETot: Double;
    NewVolume2ETot: Double;
    NewValueETot: Double;
    Duration: Integer;

    CardReadID: Integer;
    Number: Integer;
    Name: WideString;
    CardType: Smallint;
    ParentID: Integer;
    TimeStamp: TDateTime;

    VolumeETot: Double;
    ValueETot: Double;

    EventID: Integer;
    ClientID: Integer;
    EventText: WideString;

  begin

    // Verifica se esta conectado ao servidor
    if EZInterface.TestConnection <> 0 then
      System.Exit;

    // Inicia processamento de eventos
    if not GoodResult( EZInterface.ProcessEvents() ) then
      System.Exit;

    // Le numero de eventos disponiveis
    if not Goodresult( EZInterface.GetEventsCount( @EvtCt ) ) then
      System.Exit;

    // Le o proximo evento
    if not GoodResult( EZInterface.GetNextEventType( @EvtType ) ) then
      System.Exit;

    case TClientEvent( EvtType )  of
        //---------------------------------------------------------------------
        NO_CLIENT_EVENT :  // Trata Eventos do Cliente
        begin

        end;

        //---------------------------------------------------------------------
        PUMP_EVENT :   // Trata Eventos das Bombas
        begin

          if GoodResult( EZInterface.GetNextPumpEventEx2(@PumpID, @PumpNumber, @State,
                                                         @ReservedFor, @ReservedBy, @HoseID,
                                                         @HoseNumber, @HosePhisicalNumber,
                                                         @GradeID, @GradeNumber, @GradeName,
                                                         @ShortGradeName, @PriceLevel, @Price,
                                                         @Volume, @Value, @StackSize,
                                                         @PumpName, @PhysicalNumber, @Side,
                                                         @Address, @PriceLevel1, @PriceLevel2,
                                                         @PumpType, @PortID, @AuthMode, @StackMode,
                                                         @PrepayAllowed, @PreauthAllowed, @PriceFormat,
                                                         @ValueFormat, @VolumeFormat, @Tag, @AttendantID,
                                                         @AttendantNumber, @AttendantName, @AttendantTag,
                                                         @CardClientID, @CardClientNumber, @CardClientName,
                                                         @CardClientTag) ) then

            WriteMessage('        PumpEvent: ' +
                                   ' PumpID= ' + IntToStr(PumpID) +
                              ', PumpNumber= ' + IntToStr(PumpNumber) +
                                   ', State= ' + IntToStr(State) +
                             ', ReservedFor= ' + IntToStr(ReservedFor) +
                              ', ReservedBy= ' + IntToStr(ReservedBy) +
                                  ', HoseID= ' + IntToStr(HoseID) +
                              ', HoseNumber= ' + IntToStr(HoseNumber) +
                      ', HosePhisicalNumber= ' + IntToStr(HosePhisicalNumber) +
                                 ', GradeID= ' + IntToStr(GradeID) +
                               ', GradeName= ' + GradeName +
                             ', GradeNumber= ' + IntToStr(GradeNumber) +
                          ', ShortGradeName= ' + ShortGradeName +
                              ', PriceLevel= ' + IntToStr(PriceLevel) +
                                   ', Price= ' + FloatToStr(Price) +
                                  ', Volume= ' + FloatToStr(Volume) +
                                   ', Value= ' + FloatToStr(Value) +
                               ', StackSize= ' + IntToStr(StackSize) +
                                ', PumpName= ' + PumpName +
                          ', PhysicalNumber= ' + IntToStr(PhysicalNumber) +
                                    ', Side= ' + IntToStr(Side) +
                                 ', Address= ' + IntToStr(Address) +
                             ', PriceLevel1= ' + IntToStr(PriceLevel1) +
                             ', PriceLevel2= ' + IntToStr(PriceLevel2) +
                                ', PumpType= ' + IntToStr(PumpType) +
                                  ', PortID= ' + IntToStr(PortID) +
                                ', AuthMode= ' + IntToStr(AuthMode) +
                               ', StackMode= ' + IntToStr(StackMode) +
                           ', PrepayAllowed= ' + IntToStr(PrepayAllowed) +
                          ', PreauthAllowed= ' + IntToStr(PreauthAllowed) +
                             ', PriceFormat= ' + IntToStr(PriceFormat) +
                             ', ValueFormat= ' + IntToStr(ValueFormat) +
                            ', VolumeFormat= ' + IntToStr(VolumeFormat) +
                                     ', Tag= ' + IntToStr(Tag) +
                             ', AttendantID= ' + IntToStr(AttendantID) +
                         ', AttendantNumber= ' + IntToStr(AttendantNumber) +
                           ', AttendantName= ' + AttendantName +
                            ', AttendantTag= ' + IntToStr(AttendantTag) +
                            ', CardClientID= ' + IntToStr(CardClientID) +
                        ', CardClientNumber= ' + IntToStr(CardClientNumber) +
                          ', CardClientName= ' + CardClientName +
                           ', CardClientTag= ' + IntToStr(CardClientTag)   );

             WriteMessage('             Bico Equivalente CBC: ' + CompanyID(HoseNumber, PumpNumber));


        end;

        //---------------------------------------------------------------------
        DELIVERY_EVENT : // Eventos de abastecimento
        begin

          if GoodResult( EZInterface.GetNextDeliveryEventEx3(@DeliveryID, @HoseID, @HoseNumber,
                                                             @HosePhysicalNumber, @PumpID, @PumpNumber,
                                                             @PumpName, @TankID, @TankNumber, @TankName,
                                                             @GradeID, @GradeNumber, @GradeName, @GradeShortName,
                                                             @GradeCode, @DeliveryState, @DeliveryType, @Volume,
                                                             @PriceLevel, @Price, @Value, @Volume2, @CompletedDT,
                                                             @LockedBy, @ReservedBy, @AttendantID, @Age, @ClearedDT,
                                                             @OldVolumeETot, @OldVolume2ETot, @OldValueETot,
                                                             @NewVolumeETot, @NewVolume2ETot, @NewValueETot, @Tag,
                                                             @Duration, @AttendantNumber, @AttendantName, @AttendantTag,
                                                             @CardClientID, @CardClientNumber, @CardClientName,
                                                             @CardClientTag) ) then
          begin

            if DeliveryID>0 then
            begin
              WriteMessage('       DeliveryEvent: ' +
                                    ' DeliveryID= ' + IntToStr(DeliveryID) +
                                       ', HoseID= ' + IntToStr(HoseID) +
                                   ', HoseNumber= ' + IntToStr(HoseNumber) +
                           ', HosePhysicalNumber= ' + IntToStr(HosePhysicalNumber) +
                                       ', PumpID= ' + IntToStr(PumpID) +
                                   ', PumpNumber= ' + IntToStr(PumpNumber) +
                                     ', PumpName= ' + PumpName +
                                       ', TankID= ' + IntToStr(TankID) +
                                   ', TankNumber= ' + IntToStr(TankNumber) +
                                     ', TankName= ' + TankName +
                                      ', GradeID= ' + IntToStr(GradeID) +
                                  ', GradeNumber= ' + IntToStr(GradeNumber) +
                                    ', GradeName= ' + GradeName +
                               ', GradeShortName= ' + GradeShortName +
                                    ', GradeCode= ' + GradeCode +
                                ', DeliveryState= ' + IntToStr(DeliveryState) +
                                 ', DeliveryType= ' + IntToStr(DeliveryType) +
                                       ', Volume= ' + FloatToStr(Volume) +
                                   ', PriceLevel= ' + IntToStr(PriceLevel) +
                                        ', Price= ' + FloatToStr(Price) +
                                        ', Value= ' + FloatToStr(Value) +
                                      ', Volume2= ' + FloatToStr(Volume2) +
                                  ', CompletedDT= ' + DateTimeToStr(CompletedDT) +
                                     ', LockedBy= ' + IntToStr(LockedBy) +
                                   ', ReservedBy= ' + IntToStr(ReservedBy) +
                                  ', AttendantID= ' + IntToStr(AttendantID) +
                                          ', Age= ' + IntToStr(Age) +
                                    ', ClearedDT= ' + DateTimeToStr(ClearedDT) +
                                ', OldVolumeETot= ' + FloatToStr(OldVolumeETot) +
                               ', OldVolume2ETot= ' + FloatToStr(OldVolume2ETot) +
                                 ', OldValueETot= ' + FloatToStr(OldValueETot) +
                                ', NewVolumeETot= ' + FloatToStr(NewVolumeETot) +
                               ', NewVolume2ETot= ' + FloatToStr(NewVolume2ETot) +
                                 ', NewValueETot= ' + FloatToStr(NewValueETot) +
                                          ', Tag= ' + IntToStr(Tag) +
                                     ', Duration= ' + IntToStr(Duration) +
                              ', AttendantNumber= ' + IntToStr(AttendantNumber) +
                                ', AttendantName= ' + AttendantName +
                                 ', AttendantTag= ' + IntToStr(AttendantTag) +
                                 ', CardClientID= ' + IntToStr(CardClientID) +
                             ', CardClientNumber= ' + IntToStr(CardClientNumber) +
                               ', CardClientName= ' + CardClientName +
                                ', CardClientTag= ' + IntToStr(CardClientTag) );

               WriteMessage('            Bico Equivalente CBC: ' + CompanyID(HoseNumber, PumpNumber));

              if LockedBy = -1  then
              begin
                if GoodResult( EZInterface.LockDelivery( DeliveryID ) ) then
                  LockedBy := 1 ;

                if ( LockedBy = 1 ) and ( TDeliveryState( DeliveryState ) <> CLEARED ) then
                begin
                  { process the delivery here }
                  GoodResult( EZInterface.ClearDelivery( DeliveryID , DeliveryType ) ) ;
                end;
              end;

            end;

          end;
        end;

        //---------------------------------------------------------------------
        CARD_READ_EVENT:  // Eventos de leitores de cartoes
        begin

          if GoodResult( EZInterface.GetNextCardReadEvent(@CardReadID, @Number, @Name,
                                                          @PumpID, @CardType, @ParentID,
                                                          @Tag, @TimeStamp) ) then
          begin

            WriteMessage('       CardReadEvent: ' +
                                  ' CardReadID= ' + IntToStr(CardReadID) +
                                     ', Number= ' + IntToStr(Number) +
                                      ',  Name= ' + Name +
                                    ',  PumpID= ' + IntToStr(PumpID) +
                                  ',  CardType= ' + IntToStr(CardType) +
                                  ',  ParentID= ' + IntToStr(ParentID) +
                                       ',  Tag= ' + IntToStr(Tag) +
                                 ',  TimeStamp= ' + DateTimeToStr(TimeStamp) );

            case TTagType(CardType )  of
              ATTENDANT_TAG_TYPE:
              begin
                WriteMessage('               Attendant: ' + Name + ', tag' +  IntToStr(Tag) );
              end;

              BLOCKED_ATTENDANT_TAG_TYPE:
              begin
                WriteMessage('       Blocked attendant: ' + Name + ', tag' +  IntToStr(Tag) );
              end;

              WRONG_SHIFT_ATTENDANT_TAG_TYPE:
              begin
                WriteMessage('   Wrong shift attendant: ' + Name + ', tag' +  IntToStr(Tag) );
              end;

              CLIENT_TAG_TYPE:
              begin
                WriteMessage('                  Client: ' + Name + ', tag' +  IntToStr(Tag) );
              end;

              BLOCKED_CLIENT_TAG_TYPE:
              begin
                WriteMessage('          Blocked Client: ' + Name + ', tag' +  IntToStr(Tag) );
              end;

              UNKNOWN_TAG_TYPE:
              begin
                WriteMessage('         Unknown tag read: ' +  IntToStr(Tag) );
              end;
            else
                WriteMessage('         Unknown tag type: ' + IntToStr(CardType) + ', tag' + IntToStr(Tag) );
            end;

            GoodResult( EZInterface.DeleteCardRead( CardReadID )) ;

          end;

        end;

        //---------------------------------------------------------------------
        DB_LOG_ETOTALS:   // Evento de mudanca de encerrantes
        begin

          if GoodResult( EZInterface.GetNextDBHoseETotalsEventEx(@HoseID, @Volume, @Value,
                                                                 @VolumeETot, @ValueETot,
                                                                 @HoseNumber, @HosePhysicalNumber,
                                                                 @PumpID, @PumpNumber, @PumpName,
                                                                 @TankID, @TankNumber, @TankName,
                                                                 @GradeID, @GradeName) ) then
            WriteMessage('       HoseETotalEvent: ' +
                                       ', HoseID= ' + IntToStr(HoseID) +
                                       ', Volume= ' + FloatToStr(Volume) +
                                        ', Value= ' + FloatToStr(Value) +
                                   ', VolumeETot= ' + FloatToStr(VolumeETot) +
                                    ', ValueETot= ' + FloatToStr(ValueETot) +
                                   ', HoseNumber= ' + IntToStr(HoseNumber) +
                           ', HosePhysicalNumber= ' + IntToStr(HosePhysicalNumber) +
                                       ', PumpID= ' + IntToStr(PumpID) +
                                   ', PumpNumber= ' + IntToStr(PumpNumber) +
                                     ', PumpName= ' + PumpName +
                                       ', TankID= ' + IntToStr(TankID) +
                                   ', TankNumber= ' + IntToStr(TankNumber) +
                                     ', TankName= ' + TankName +
                                      ', GradeID= ' + IntToStr(GradeID) +
                                    ', GradeName= ' + GradeName);
        end;

        //---------------------------------------------------------------------
        SERVER_EVENT:  // Eventos do servidor
        begin

          if GoodResult( EZInterface.GetNextServerEvent(@EventID, @EventText) ) then
            WriteMessage('       ServerEvent: ' +
                                  '  EventID= ' + IntToStr(EventID) +
                                ', EventText= ' + EventText);


        end;

        //---------------------------------------------------------------------
        CLIENT_EVENT:  // Eventos de POS (client)
        begin

          if GoodResult( EZInterface.GetNextClientEvent(@ClientID, @EventID, @EventText) ) then
            WriteMessage('       ClientEvent: ' +
                                 ', ClientID= ' + IntToStr(ClientID) +
                                  ', EventID= ' + IntToStr(EventID) +
                                ', EventText= ' + EventText);

        end;

    else
      GoodResult( EZInterface.DiscardNextEvent() ) ;
    end;
end;

procedure TfrmMonitor.LerAbastecimentos(Sender: TObject);
var
    Idx: Integer;
    Ct: Integer;
    Id: Integer;

    HoseID: Integer;
    State: Smallint;
    DType: Smallint;
    Volume: Double;
    PriceLevel: Smallint;
    Price: Double;
    Value: Double;
    Volume2 : Double;
    CompletedDT: TDateTime;
    LockedBy: Integer;
    ReservedBy: Integer;
    AttendantID: Integer;
    Age: Integer;
    ClearedDT: TDateTime;
    OldVolumeETot: Double;
    OldVolume2ETot: Double;
    OldValueETot: Double;
    NewVolumeETot: Double;
    NewVolume2ETot: Double;
    NewValueETot: Double;
    Tag: Int64;
    Duration: Integer;
    ClientID: Integer;
begin
  inherited;
    WriteMessage( '[Abastecimentos]---------------------------------------------------');

    // Verifica conexao
    if not GoodResult( EZInterface.TestConnection ) then
      System.Exit;

    //--------------------------------------------------------------------
    // Le o numero de produtos configurados
    if not GoodResult( EZInterface.GetDeliveriesCount( @Ct ) ) then
      System.Exit;

    WriteMessage( '      Existem ' + IntToStr(Ct) + ' na lista.');

    //for Idx := 1 to Ct do
    for Idx := Ct downto 1 do
    begin

       if not GoodResult( EZInterface.GetDeliveryByOrdinal( Idx, @Id ) ) then
          System.Exit;

{
       if GoodResult( EZInterface.GetDeliveryPropertiesEx2(Id, @HoseID, @State, @DType,
                                                           @Volume, @PriceLevel, @Price,
                                                           @Value, @Volume2, @CompletedDT,
                                                           @LockedBy, @ReservedBy, @AttendantID,
                                                           @Age, @ClearedDT, @OldVolumeETot,
                                                           @OldVolume2ETot, @OldValueETot,
                                                           @NewVolumeETot, @NewVolume2ETot,
                                                           @NewValueETot, @Tag, @Duration ) ) then
}
       if GoodResult( EZInterface.GetDeliveryPropertiesEx3(Id, @HoseID, @State, @DType,
                                                           @Volume, @PriceLevel, @Price,
                                                           @Value, @Volume2, @CompletedDT,
                                                           @LockedBy, @ReservedBy, @AttendantID,
                                                           @Age, @ClearedDT, @OldVolumeETot,
                                                           @OldVolume2ETot, @OldValueETot,
                                                           @NewVolumeETot, @NewVolume2ETot,
                                                           @NewValueETot, @Tag, @Duration, @ClientID ) ) then
        begin
          WriteMessage( '      Abastecimento: ' + IntToStr(Id) +
                                   ', HoseID: ' + IntToStr(HoseID) +
                                    ', State: ' + IntToStr(State) +
                                     ', Type: ' + IntToStr(DType) +
                                   ', Volume: ' + FloatToStr(Volume) +
                               ', PriceLevel: ' + IntToStr(PriceLevel) +
                                    ', Price: ' + FloatToStr(Price) +
                                    ', Value: ' + FloatToStr(Value) +
                                  ', Volume2: ' + FloatToStr(Volume2) +
                               ', CompleteDT: ' + DateTimeToStr(CompletedDT) +
                                 ', LockedBy: ' + IntToStr(LockedBy) +
                               ', ReservedBy: ' + IntToStr(ReservedBy) +
                              ', AttendantID: ' + IntToStr(AttendantID) +
                                      ', Age: ' + IntToStr(Age) +
                                ', ClearedDT: ' + DateTimeToStr(ClearedDT) +
                            ', OldVolumeETot: ' + FloatToStr(OldVolumeETot) +
                           ', OldVolume2ETot: ' + FloatToStr(OldVolume2ETot) +
                             ', OldvalueETot: ' + FloatToStr(OldValueETot) +
                            ', NewVolumeETot: ' + FloatToStr(NewVolumeETot) +
                           ', NewVolume2ETot: ' + FloatToStr(NewVolume2ETot) +
                             ', NewValueETot: ' + FloatToStr(NewValueETot) +
                                      ', Tag: ' + IntToStr(Tag) +
                                ', Duraction: ' + IntToStr(Duration) +
                                 ', ClientID: ' + IntToStr(ClientID) );

          if LockedBy <> -1  then
            Continue;

          if GoodResult( EZInterface.LockDelivery( Id ) ) then
          begin
              LockedBy := 1 ;
          end
          else
              Continue;

          if ( LockedBy = 1 ) and ( TDeliveryState( State ) <> CLEARED ) then
            GoodResult( EZInterface.ClearDelivery( ID , DType ) ) ;

        end;

    end;
end;

procedure TfrmMonitor.LerCartoes(Sender: TObject);
Var
  CardID:    Integer;
  Number:    Integer ;
  Name:      WideString ;
  PumpID:    Integer ;
  CardType:  Smallint ;
  ParentID:  Integer ;
  Tag:       Int64;
  TimeStamp: TDateTime;
begin
  // Verifica conexao
  if not GoodResult( EZInterface.TestConnection ) then
    System.Exit;
  while True do
    begin
      // Le ID do primeiro cartao da lista
      if EZInterface.GetCardReadByOrdinal(1, @CardID)<>0 then
        System.Break;
      // LE dados do cartao
      if not GoodResult( EZInterface.GetCardReadProperties(CardID, @Number, @Name, @PumpID, @CardType, @ParentID, @Tag, @TimeStamp) ) then
        System.Break;
      WriteMessage(' --- Cartao Lido: ' +
                                 ' ID= ' + IntToStr(CardID) +
                            ', Numero= ' + IntToStr(Number) +
                              ', Nome= ' + Name +
                            ', PumpID= ' + IntToStr(PumpID) +
                          ', CardType= ' + IntToStr(CardType) +
                          ', ParentID= ' + IntToStr(ParentID) +
                               ', Tag= ' + IntToHex(Tag, 10) +
                         ', TimeStamp= ' + DateTimeToStr(TimeStamp) );
	    // Esta fun��o so funciona se a Autorizacao estiver configurada com um tipo de cartao:
	    //		"Carta/Placa", "Frentista", "Cliente", "Frentista E Cliente", "Frentista OU Cliente"
      if not GoodResult( EZInterface.TagAuthorise(PumpID, Tag, SmallInt(NO_LIMIT_TYPE), 0, $FF, 1)  ) then
        System.Break;
      WriteMessage(' --- Bomba ' + IntToStr(PumpID) + 'Autorizada com Cartao ' + IntToStr(Tag) );
      // Apaga Cartao da lista
      if not GoodResult( EZInterface.DeleteCardRead(CardID) ) then
        System.Break;
    end;
end;

procedure TfrmMonitor.LerEncerrantes(Sender: TObject);
var
  IdBomba: Integer;
  IdBico:  Integer;

  Bomba:   Integer;
  Bico:    Integer;

  Number: Integer;
  PumpID: Integer;
  TankID: Integer;
  PhysicalNumber: Integer;
  MtrTheoValue: Double;
  MtrTheoVolume: Double;
  MtrElecValue: Double;
  MtrElecVolume: Double;
  UVEAntenna: Smallint;
  Price1: Double;
  Price2: Double;
  Enabled: Smallint;
begin
  Bomba        := cbPump.ItemIndex+1;   // Le o numero da bomba no combo
  Bico         := cbHose.ItemIndex+1;   // Le o numero da bico no combo
  // Verifica conexao
  if not GoodResult( EZInterface.TestConnection ) then
    System.Exit;
  // Pega Id da Bomba escolhida
  if not GoodResult( EZInterface.GetPumpByOrdinal(Bomba, @IdBomba) ) then
    System.Exit;
  // Le Id do Bico
  if not GoodResult( EZInterface.GetPumpHoseByNumber(IdBomba, Bico, @IdBico) ) then
    System.Exit;
  // Le dados do Bico
  if GoodResult( EZInterface.GetHosePropertiesEx2(IdBico, @Number, @PumpID, @TankID,
                                                    @PhysicalNumber, @MtrTheoValue,
                                                    @MtrTheoVolume, @MtrElecValue,
                                                    @MtrElecVolume, @UVEAntenna,
                                                    @Price1, @Price2, @Enabled ) ) then
    begin
      WriteMessage(' --- Encerrantes: ' +
                             ' Bomba= ' + IntToStr(Bomba) +
                             ', Bico= ' + IntToStr(Bico) +
                       ', Enc Volume= ' + FloatToStr(MtrElecVolume) +
                        ', Enc Value= ' + FloatToStr(MtrElecValue) +
                                  ' [ ' +
                            ' Number= ' + IntToStr(Number) +
                           ', PumpId= ' + IntToStr(PumpID) +
                           ', TankID= ' + IntToStr(TankID) +
                   ', PhisicalNumber= ' + IntToStr(PhysicalNumber) +
                     ', MtrTheoValue= ' + FloatToStr(MtrTheoValue) +
                    ', MtrTheoVolume= ' + FloatToStr(MtrTheoVolume) +
                        ', UVAntenna= ' + IntToStr(UVEAntenna) +
                           ', Price1= ' + FloatToStr(Price1) +
                           ', Price2= ' + FloatToStr(Price2) +
                          ', Enabled= ' + IntToStr(Enabled) +
                                    ' ] ' );
    end;
end;

procedure TfrmMonitor.ListGrades;
var
    Idx: Integer;
    Ct: Integer;
    Id: Integer;
    Number: Integer;
    Name: WideString;
    ShortName: WideString;
    Code: WideString;

  begin

    WriteMessage( '[Produtos]---------------------------------------------------');

    // Verifica conexao
    if not GoodResult( EZInterface.TestConnection ) then
      System.Exit;

    //--------------------------------------------------------------------
    // Le o numero de produtos configurados
    if not GoodResult( EZInterface.GetGradesCount( @Ct ) ) then
      System.Exit;

    for Idx := 1 to Ct do
    begin

       if not GoodResult( EZInterface.GetGradeByOrdinal( Idx, @Id ) ) then
          System.Exit;

       if GoodResult( EZInterface.GetGradeProperties(Id, @Number, @Name, @ShortName, @Code) ) then
          WriteMessage( '      Grade: ' + IntToStr(Number) +
                             ', Nome: ' + Name +
                        ', Abreviado: ' + ShortName +
                           ', Codigo: ' + Code
                        );
    end;
end;

procedure TfrmMonitor.ListHoses;
var
    Idx: Integer;
    Ct: Integer;
    Id: Integer;
    Number: Integer;
    PumpID: Integer;
    TankID: Integer;
    PhysicalNumber: Integer;
    MtrTheoValue: Double;
    MtrTheoVolume: Double;
    MtrElecValue: Double;
    MtrElecVolume: Double;
    UVEAntenna: Smallint;
    Price1: Double;
    Price2: Double;
    Enabled: Smallint;

  begin

    WriteMessage( '[Bicos]---------------------------------------------------');

    // Verifica conexao
    if not GoodResult( EZInterface.TestConnection ) then
      System.Exit;

    //--------------------------------------------------------------------
    // Le o numero de produtos configurados
    if not GoodResult( EZInterface.GetHosesCount( @Ct ) ) then
      System.Exit;

    for Idx := 1 to Ct do
    begin

       if not GoodResult( EZInterface.GetHoseByOrdinal( Idx, @Id ) ) then
          System.Exit;

       if GoodResult( EZInterface.GetHosePropertiesEx2( ID, @Number, @PumpID, @TankID,
                                                        @PhysicalNumber, @MtrTheoValue,
                                                        @MtrTheoVolume, @MtrElecValue,
                                                        @MtrElecVolume, @UVEAntenna,
                                                        @Price1, @Price2,
                                                        @Enabled ) ) then
          WriteMessage( '            Bico: ' + IntToStr(Number) +
                                ', PumpID: ' + IntToStr(PumpID) +
                                ', TankID: ' + IntToStr(TankID) +
                        ', PhisicalNumber: ' + IntToStr(PhysicalNumber) +
                          ', MtrTheoValue: ' + FloatToStr(MtrTheoValue) +
                         ', MtrTheoVolume: ' + FloatToStr(MtrTheoVolume) +
                          ', MtrElecValue: ' + FloatToStr(MtrElecValue) +
                         ', MtrElecVolume: ' + FloatToStr(MtrElecVolume) +
                             ', UVEAntena: ' + IntToStr(UVEAntenna) +
                                ', Price1: ' + FloatToStr(Price1) +
                                ', Price2: ' + FloatToStr(Price2) +
                               ', Enables: ' + IntToStr(Enabled) );
    end;
end;

procedure TfrmMonitor.ListPumps;
var
    Idx: Integer;
    Ct: Integer;
    Id: Integer;
    Number: Integer;
    Name: WideString;
    PhysicalNumber: Smallint;
    Side: Smallint;
    Address: Smallint;
    PriceLevel1: Smallint;
    PriceLevel2: Smallint;
    PriceDspFormat: Smallint;
    VolumeDspFormat: Smallint;
    ValueDspFormat: Smallint;
    PType: Smallint;
    PortID: Integer;
    AttendantID: Integer;
    AuthMode: Smallint;
    StackMode: Smallint;
    PrepayAllowed: Smallint;
    PreauthAllowed: Smallint;
    SlotZigBeeID: Integer;
    MuxSlotZigBeeID: Integer;
    PriceControl: Smallint;
    HasPreset: Smallint;

  begin

    WriteMessage( '[Bombas]---------------------------------------------------');

    // Verifica conexao
    if not GoodResult( EZInterface.TestConnection ) then
      System.Exit;

    //--------------------------------------------------------------------
    // Le o numero de produtos configurados
    if not GoodResult( EZInterface.GetPumpsCount( @Ct ) ) then
      System.Exit;

    for Idx := 1 to Ct do
    begin

       if not GoodResult( EZInterface.GetPumpByOrdinal( Idx, @Id ) ) then
          System.Exit;

       if GoodResult( EZInterface.GetPumpPropertiesEx(Id, @Number, @Name, @PhysicalNumber,
                                                      @Side, @Address, @PriceLevel1,
                                                      @PriceLevel2, @PriceDspFormat,
                                                      @VolumeDspFormat, @ValueDspFormat,
                                                      @PType, @PortID, @AttendantID,
                                                      @AuthMode, @StackMode, @PrepayAllowed,
                                                      @PreauthAllowed, @SlotZigBeeID,
                                                      @MuxSlotZigBeeID, @PriceControl,
                                                      @HasPreset) ) then
          WriteMessage( '            Bomba: ' + IntToStr(Number) +
                                   ', Nome: ' + Name +
                           ', PhicalNumber: ' + IntToStr(PhysicalNumber) +
                                   ', Side: ' + IntToStr(Side) +
                                ', Address: ' + IntToStr(Address) +
                            ', PriceLevel1: ' + IntToStr(PriceLevel1) +
                            ', PriceLevel2: ' + IntToStr(PriceLevel2) +
                         ', PriceDspFormat: ' + IntToStr(PriceDspFormat) +
                        ', VolumeDspFormat: ' + IntToStr(VolumeDspFormat) +
                         ', ValueDspFormat: ' + IntToStr(ValueDspFormat) +
                                  ', PTipe: ' + IntToStr(PType) +
                                 ', PortID: ' + IntToStr(PortID) +
                            ', AttendantID: ' + IntToStr(AttendantID) +
                               ', AutoMode: ' + IntToStr(AuthMode) +
                              ', StackMode: ' + IntToStr(StackMode) +
                           ', PrepayAllwed: ' + IntToStr(PrepayAllowed) +
                         ', PreauthAllowed: ' + IntToStr(PreauthAllowed) +
                           ', SlotZigBeeID: ' + IntToStr(SlotZigBeeID) +
                        ', MuxSlotZigBeeID: ' + IntToStr(MuxSlotZigBeeID) +
                           ', PriceControl: ' + IntToStr(PriceControl) +
                              ', HasPreset: ' + IntToStr(HasPreset) );
    end;

end;

procedure TfrmMonitor.ListTanks;
var
    Idx: Integer;
    Ct: Integer;
    Id: Integer;
    Number: Integer;
    Name: WideString;
    GradeID: Integer;
    TType: Smallint;
    Capacity: Double;
    Diameter: Double;
    TheoVolume: Double;
    GaugeVolume: Double;
    GaugeTCVolume: Double;
    GaugeUllage: Double;
    GaugeTemperature: Double;
    GaugeLevel: Double;
    GaugeWaterVolume: Double;
    GaugeWaterLevel: Double;
    GaugeID: Integer;
    ProbeNo: Smallint;

  begin

    WriteMessage( '[Tanques]---------------------------------------------------');

    // Verifica conexao
    if not GoodResult( EZInterface.TestConnection ) then
      System.Exit;

    //--------------------------------------------------------------------
    // Le o numero de produtos configurados
    if not GoodResult( EZInterface.GetTanksCount( @Ct ) ) then
      System.Exit;

    for Idx := 1 to Ct do
    begin

       if not GoodResult( EZInterface.GetTankByOrdinal( Idx, @Id ) ) then
          System.Exit;

       if GoodResult( EZInterface.GetTankProperties(Id, @Number, @Name, @GradeID,
                                                    @TType, @Capacity, @Diameter,
                                                    @TheoVolume, @GaugeVolume,
                                                    @GaugeTCVolume, @GaugeUllage,
                                                    @GaugeTemperature, @GaugeLevel,
                                                    @GaugeWaterVolume, @GaugeWaterLevel,
                                                    @GaugeID, @ProbeNo ) ) then
          WriteMessage( '     Tanque: ' + IntToStr(Number) +
                             ', Nome: ' + Name +
                          ', Produto: ' + IntToStr(GradeID) +
                             ', Tipo: ' + IntToStr(TType) +
                       ', Capacidade: ' + FloatToStr(Capacity) +
                         ', Diametro: ' + FloatToStr(Diameter) +
                       ', TheoVolume: ' + FloatToStr(TheoVolume) +
                      ', GaugeVolume: ' + FloatToStr(GaugeVolume) +
                    ', GaugeTCVolume: ' + FloatToStr(GaugeTCVolume) +
                      ', GaugeUllage: ' + FloatToStr(GaugeUllage) +
                 ', GaugeTemperature: ' + FloatToStr(GaugeTemperature) +
                       ', GaugeLevel: ' + FloatToStr(GaugeLevel) +
                 ', GaugeWaterVolume: ' + FloatToStr(GaugeWaterVolume) +
                  ', GaugeWaterLevel: ' + FloatToStr(GaugeWaterLevel) +
                          ', GaugeID: ' + IntToStr(GaugeID) +
                          ', ProbeNo: ' + IntToStr(ProbeNo)  );

    end;

end;

procedure TfrmMonitor.PriceChangeClick(Sender: TObject);
var
    Bomba        : Integer;
    Bico         : Integer;
    IdBico       : Integer;
    Duracao      : SmallInt;
    Tipo         : SmallInt;
    Valor1       : Double;
    Valor2       : Double;

    Index        : Integer;
    Bicos        : Integer;

    HNumber : Integer;
    PhysicalNumber : Integer;
    PumpID : Integer;
    PumpNumber : Integer;
    PumpName : WideString;
    TankID : Integer;
    TankNumber : Integer;
    TankName : WideString;
    GradeID : Integer;
    GradeNumber : Integer;
    GradeName : WideString;
    GradeShortName : WideString;
    GradeCode : WideString;
    MtrTheoValue : Double;
    MtrTheoVolume : Double;
    trElecValue : Double;
    MtrElecVolume : Double;
    Price1 : Double;
    Price2 : Double;
    HEnabled : Smallint;
  begin


    Duracao      := Integer(TDurationType.MULTIPLE_DURATION_TYPE); // Duracao do preco (Multipos abastecimentos)
    Tipo         := Integer(TPriceType.FIXED_PRICE_TYPE);  // Tipo de preco (Fixo)

    Bomba        := cbPump.ItemIndex+1;   // Le o numero da bomba no combo
    Bico         := cbHose.ItemIndex+1;   // Le o numero da bico no combo

    Valor1       := strtofloat(edtPrice1.Text);  // Le valor do nivel de preco 1
    Valor2       := strtofloat(edtPrice2.Text);  // Le valor do nivel de preco 2

    // Verifica se esta conectado ao servidor
    if not GoodResult( EZInterface.TestConnection ) then
      System.Exit;

    // Le o numero de bicos cadastrados
    if not GoodResult( EZInterface.GetHosesCount(@Bicos) ) then
      System.Exit;

    for Index := 1 to Bicos do
    begin

      // Pega o ID do bico
      if not GoodResult( EZInterface.GetHoseByOrdinal(Index, @IdBico) ) then
        System.Exit;

      // Pega os dados do bico
      if GoodResult( EZInterface.GetHoseSummaryEx(IdBico, @HNumber, @PhysicalNumber,
                                                          @PumpID, @PumpNumber, @PumpName,
                                                          @TankID, @TankNumber, @TankName,
                                                          @GradeID, @GradeNumber, @GradeName,
                                                          @GradeShortName, @GradeCode,
                                                          @MtrTheoValue, @MtrTheoVolume,
                                                          @trElecValue, @MtrElecVolume, @Price1,
                                                          @Price2, @HEnabled) ) then
      begin

        // Verifica se o ID co bico pertence o escolhido
        if (Bomba=PumpNumber) and (Bico=HNumber) then
            System.Break;

      end;

    end;

    WriteMessage('Novo preco: Bomba ' + IntToStr(Bomba) +  ', Bico ' + IntToStr(Bico) +
                                           ', Duration ' + IntToStr(Duracao) +
                                               ', Tipo ' + IntToStr(Tipo) +
                                            ', Preo 1: ' + FloatToStr(Valor1) +
                                            ', Preo 2: ' + FloatToStr(Valor2) );

    // Faz ajuste do pre�o na bomba
    GoodResult( EZInterface.SetHosePrices( IdBico, Duracao, Tipo, Valor1, Valor2) );
end;

procedure TfrmMonitor.ReadPumpsStatus;
var
    PumpsCount : Integer;
    PumpStates : WideString;
    CurrentHose : WideString;
    DeliveriesCount : WideString;
    Idx : Integer;
    CurStatus : TPumpState;
    CurHose : Integer;
    CurDelv : Integer;
    StrStatus : String;

  begin

    // Verifica se esta conectado ao servidor
    if EZInterface.TestConnection = 0 then
    begin

      // Verifica se esta conectado ao servidor
      if not GoodResult( EZInterface.GetPumpsCount( @PumpsCount ) ) then
          System.Exit;

      // Le o estado de todas as bombas configuradas
      if not GoodResult( EZInterface.GetAllPumpStatuses(@PumpStates, @CurrentHose, @DeliveriesCount) ) then
          exit;

      for Idx := 1 to PumpsCount do
      begin

        CurStatus := EZClient.TPumpState(Ord(PumpStates[Idx])-Ord('0'));
        CurHose   := Ord(CurrentHose[Idx])-Ord('0');
        CurDelv   := Ord(CurrentHose[Idx])-Ord('0');

        case CurStatus of																									// PAM1000
        	INVALID_PUMP_STATE           : StrStatus := 'estado invalido.';													// 0 - OFFLINE
        	NOT_INSTALLED_PUMP_STATE     : StrStatus := 'nao instalada.';													// 6 - CLOSE
        	NOT_RESPONDING_1_PUMP_STATE  : StrStatus := 'Bomba nao responde.';												// 0 - OFFLINE
        	IDLE_PUMP_STATE              : StrStatus := 'em espera (desocupada).';											// 1 - IDLE
        	PRICE_CHANGE_STATE           : StrStatus := 'troca de preco.';													// 1 - IDLE
        	AUTHED_PUMP_STATE            : StrStatus := 'Bomba Autorizada';													// 9 - AUTHORIZED
        	CALLING_PUMP_STATE           : StrStatus := 'esperando autorizacao.';											// 5 - CALL
        	DELIVERY_STARTING_PUMP_STATE : StrStatus := 'abastecimeneto iniciando.';										// 2 - BUSY
        	DELIVERING_PUMP_STATE        : StrStatus := 'abastecendo.';														// 2 - BUSY
        	TEMP_STOPPED_PUMP_STATE      : StrStatus := 'parada temporaria (no meio de uma abastecimento) (STOP).';			// 8 - STOP
        	DELIVERY_FINISHING_PUMP_STATE: StrStatus := 'abastecimento finalizando (fluxo de produto diminuindo).';			// 2 - BUSY
        	DELIVERY_FINISHED_PUMP_STATE : StrStatus := 'abastecimento finalizado (parou de sair combustivel).';			// 2 - BUSY
        	DELIVERY_TIMEOUT_PUMP_STATE  : StrStatus := 'abastecimento excedeu tempo maximo.';								// 1 - IDLE
        	HOSE_OUT_PUMP_STATE          : StrStatus := 'bico fora do guarda-bico (CALL).';									// 5 - CALL
        	PREPAY_REFUND_TIMEOUT_STATE  : StrStatus := 'prazo de pre-determinacao esgotado.';								// 1 - IDLE
        	DELIVERY_TERMINATED_STATE    : StrStatus := 'abastecimento terminado (EOT)';									// 3 - EOT
        	ERROR_PUMP_STATE             : StrStatus := 'Erro (resposta de erro da bomba).';								// 0 - OFFLINE
        	NOT_RESPONDING_2_PUMP_STATE  : StrStatus := 'EZID nao responde.';
        	LAST_PUMP_STATE              : StrStatus := 'Ultimo estado da bomba?';
          else
            StrStatus := 'estado desconhecido = ' + IntToStr(Integer(CurStatus));
        end;

        if lastStatus[IDx] <> PumpStates[Idx] then
        begin
          WriteMessage('Bomba ' +  IntToStr(Idx) + ', Bico ' + IntToStr(CurHose) +
                                                   ', Pendentes ' + IntToStr(CurDelv) +
                                                   ', Status: ' + StrStatus );
          lastStatus[Idx] := PumpStates[Idx];
        end;

      end;
    end;
end;

procedure TfrmMonitor.SetMsgListScrollBar;
var
    MaxTextWidth: Integer;
    Temp: Integer;
    I: Integer;
  begin

    if MsgList.Items.Count > 1 then
    begin

      // Obt�m o comprimento, em pixels, da linha mais longa
      MaxTextWidth := 0;
      for I := 0 to MsgList.Items.Count - 1 do
      begin
        Temp := MsgList.Canvas.TextWidth(MsgList.Items[I]);
        if Temp > MaxTextWidth then
          MaxTextWidth := Temp;
      end;

      // Acrescenta a largura de um "W"
      MaxTextWidth := MaxTextWidth + MsgList.Canvas.TextWidth('W');

      // Envia uma mensagem ao ListBox
      SendMessage(MsgList.Handle, LB_SETHORIZONTALEXTENT, MaxTextWidth, 0);

    end;

end;

procedure TfrmMonitor.TimerAppLoopTimer(Sender: TObject);
begin
  inherited;
    //WriteMessage('Agora');

    if chProcEvents.Checked = true then
    begin
      self.InternalProccessEvents();
    end
    else  // Procssamento por Pooling
      self.ReadPumpsStatus;
end;

procedure TfrmMonitor.WriteMessage(msg: String);
begin
    if MsgList.Items.Count > 10000 then
      MsgList.Items.Clear;

    MsgList.Items.Append(msg);

    SetMsgListScrollBar;

    MsgList.ItemIndex := MsgList.Items.Count - 1;
    //MsgList.ItemIndex := -1;
end;

end.
