import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Italian (`it`).
class SIt extends S {
  SIt([String locale = 'it']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Tutti i diritti riservati.';
  }

  @override
  String get welcomeTitle => 'Benvenuto nell\'app';

  @override
  String get today => 'Oggi';

  @override
  String get yesterday => 'Ieri';

  @override
  String get settings => 'Impostazioni';

  @override
  String get about => 'Di';

  @override
  String get profileInfo => 'Informazioni sul profilo';

  @override
  String get language => 'Lingua';

  @override
  String get firstName => 'Nome di battesimo';

  @override
  String get lastName => 'Cognome';

  @override
  String get mobileNumber => 'Numero di cellulare';

  @override
  String get edit => 'Modificare';

  @override
  String get enterCode => 'Inserisci il codice';

  @override
  String get editProfile => 'Modifica Profilo';

  @override
  String get bankTransfer => 'Trasferimento bancario';

  @override
  String get gift => 'Regalo';

  @override
  String get correction => 'Correzione';

  @override
  String get inappPayment => 'Pagamento in-app';

  @override
  String get orderFee => 'Tariffa dell\'ordine';

  @override
  String get parkingFee => 'Costo del Parcheggio';

  @override
  String get cancellationFee => 'Tassa di cancellazione';

  @override
  String get withdraw => 'Ritirare';

  @override
  String get walletTransactions => 'Transazioni del portafoglio';

  @override
  String get addCard => 'Aggiungi carta';

  @override
  String get visa => 'Visa';

  @override
  String get mastercard => 'MasterCard';

  @override
  String get addBalance => 'Aggiungi equilibrio';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Minuti',
      one: '$minutesString Minuto',
      zero: 'Zero minutes',
    );
    return '$_temp0';
  }

  @override
  String durationInHours(num hours) {
    final intl.NumberFormat hoursNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String hoursString = hoursNumberFormat.format(hours);

    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hoursString ore',
      one: '$hoursString ora',
      zero: 'Zero hours',
    );
    return 'Durata: $_temp0';
  }

  @override
  String get timePastDue => 'Scaduto';

  @override
  String get justNow => 'Proprio adesso';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString m';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString km';
  }

  @override
  String distanceInFeets(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString ft';
  }

  @override
  String distanceInMiles(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString mi';
  }

  @override
  String get welcomeSubtitle => 'Il servizio taxi progettato per il tuo comfort offre viaggi con i tuoi autisti preferiti e seleziona le tue preferenze di corsa';

  @override
  String get onboardingRewardTitle => 'Ottieni una ricompensa!';

  @override
  String get onboardingRewardSubtitle => 'Ottieni bonus extra invitando un amico, completando viaggi e molto altro...';

  @override
  String get selectLanguage => 'Seleziona la lingua';

  @override
  String get searchForLanguage => 'Cerca la lingua';

  @override
  String get enterPhoneNumber => 'Inserisci il numero di telefono';

  @override
  String get actionContinue => 'Continua';

  @override
  String get whereIsYourDestination => 'Dov\'è la tua destinazione?';

  @override
  String get whereAreYouGoing => 'Dove stai andando?';

  @override
  String get selectDestinations => 'Il tuo percorso';

  @override
  String get pickupPoint => 'Punto di ritiro';

  @override
  String get enterPickupPoint => 'Inserisci il punto di ritiro';

  @override
  String get dropoffPoint => 'Punto di riconsegna';

  @override
  String get enterDropoffPoint => 'Inserisci il punto di consegna';

  @override
  String get stopPoint => 'Punto fermo';

  @override
  String get enterStopPoint => 'Inserisci il punto di sosta';

  @override
  String get confirm => 'Confermare';

  @override
  String get confirmDropoff => 'Conferma il ritiro';

  @override
  String get confirmPickup => 'Conferma il ritiro';

  @override
  String get enterAtLeast3Characters => 'Inserisci almeno 3 caratteri';

  @override
  String get noResults => 'Nessun risultato';

  @override
  String get bookNow => 'Prenota ora';

  @override
  String get cash => 'Contanti';

  @override
  String get online => 'in linea';

  @override
  String get offline => 'disconnesso';

  @override
  String get onTrip => 'In viaggio';

  @override
  String get confirmPay => 'Confermare';

  @override
  String get cancel => 'Annulla';

  @override
  String get apply => 'Fare domanda a';

  @override
  String get enterCouponCode => 'Inserisci il codice coupon';

  @override
  String get reserveRide => 'Prenota il giro';

  @override
  String get reserveRideMessage => 'Seleziona la data e l\'ora esatte in cui desideri prenotare la tua corsa';

  @override
  String get reserveRideMessageSuccess => 'La tua corsa è stata prenotata con successo. Puoi visualizzare le corse prenotate nella sezione \'Corse programmate\'.';

  @override
  String get cancelReservation => 'Cancella la prenotazione';

  @override
  String get confirmResrve => 'Confermare';

  @override
  String get enterCouponDescription => 'Inserisci il tuo codice coupon da applicare sui prezzi';

  @override
  String get enterCoupon => 'Inserisci il buono';

  @override
  String get couponApplied => 'Coupon applicato';

  @override
  String get couponAppliedDescription => 'Il coupon è stato applicato alla tariffa della tua corsa';

  @override
  String get done => 'Fatto!';

  @override
  String get ridePreferences => 'Preferenze di corsa';

  @override
  String get noWaitTime => 'Nessun tempo di attesa';

  @override
  String minutesRange(String minutes) {
    return '$minutes minuti';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds secondi';
  }

  @override
  String get rideRequested => 'Passaggio richiesto';

  @override
  String get searchingForAnOnlineDriver => 'Ricerca di un autista online...';

  @override
  String get cancelRide => 'Annulla la corsa';

  @override
  String get rideSafety => 'Sicurezza di guida';

  @override
  String get shareTripInformation => 'Condividi le informazioni sul viaggio';

  @override
  String get shareTripInformationDescription => 'Puoi condividere le informazioni del tuo viaggio con un amico';

  @override
  String get sos => 'sos';

  @override
  String get sosDescription => 'Informare le autorità di un\'emergenza';

  @override
  String get reportAnIssue => 'Segnala un problema';

  @override
  String get reportAnIssueMidTripDescription => 'Condividi un problema di sicurezza durante il viaggio';

  @override
  String get rideOptions => 'Opzioni di corsa';

  @override
  String get goBackToRide => 'Torna a pedalare';

  @override
  String get waitTime => 'Tempo di attesa';

  @override
  String get couponCode => 'Codice coupon';

  @override
  String get giftCardCode => 'Codice della carta regalo';

  @override
  String get nicePoints => 'Bei punti';

  @override
  String get negativePoints => 'Punti negativi';

  @override
  String get reviewCommentBoxHint => 'Aggiungi un commento...';

  @override
  String get howWasYourTrip => 'Come è stato il tuo viaggio?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Viaggio terribile con $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Brutto viaggio con $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Viaggio medio con $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Buon viaggio con $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Viaggio fantastico con $name';
  }

  @override
  String get submitFeedback => 'Invia feedback';

  @override
  String get typeAMessage => 'Scrivi un messaggio';

  @override
  String get findAnotherRide => 'Trova un altro passaggio';

  @override
  String get next => 'Prossimo';

  @override
  String get searchForDropoffLocation => 'Cerca il luogo di riconsegna';

  @override
  String get searchForPickupLocation => 'Cerca il luogo di ritiro';

  @override
  String get placeConfirmDialogPlaceholder => 'Dov\'è il luogo di riconsegna?';

  @override
  String get noAnnouncements => 'Nessun annuncio';

  @override
  String get announcements => 'Annunci';

  @override
  String reviewsCount(int count) {
    return '($count recensioni)';
  }

  @override
  String get tripDetails => 'Dettagli del viaggio';

  @override
  String get rideDetails => 'Dettagli della corsa';

  @override
  String get orderARide => 'Ordina un passaggio';

  @override
  String get noRidesYet => 'Nessuna corsa ancora!';

  @override
  String get issueSubjectPlaceholder => 'Digita l\'oggetto del problema';

  @override
  String get issueContentPlaceholder => 'Digita la descrizione del problema';

  @override
  String get reportThisIssue => 'Segnala questo problema';

  @override
  String get fieldIsRequired => 'Il campo è obbligatiorio';

  @override
  String get ok => 'OK';

  @override
  String get favoriteLocations => 'Luoghi preferiti';

  @override
  String get favoriteLocationsSubtitle => 'Salva le tue posizioni preferite per un accesso più semplice';

  @override
  String get createAFavoriteLocation => 'Crea una posizione preferita';

  @override
  String get addressTitleLabel => 'Titolo dell\'indirizzo';

  @override
  String get clickToSetLocation => 'Fare clic per impostare la posizione';

  @override
  String get whereIsYourNewFavoriteLocation => 'Dov\'è la tua nuova posizione preferita?';

  @override
  String get locateFavoriteLocationDescription => 'Utilizza la casella di ricerca qui sotto o la mappa per individuare la posizione esatta';

  @override
  String get searchLocation => 'Cerca posizione';

  @override
  String get saveChanges => 'Salvare le modifiche';

  @override
  String get rideHistory => 'Storia della corsa';

  @override
  String get scheduledRides => 'Corse programmate';

  @override
  String get keepTheOrder => 'Mantieni l\'ordine';

  @override
  String get cancelTheRide => 'Annulla la corsa';

  @override
  String get walletBalance => 'Saldo del portafoglio';

  @override
  String get activities => 'Attività';

  @override
  String get pleaseEnterGiftCardCode => 'Inserisci il codice della carta regalo';

  @override
  String get redeem => 'Riscattare';

  @override
  String get enterGiftCardCode => 'Inserisci il codice della carta regalo';

  @override
  String get redeemGiftCard => 'Riscatta la carta regalo';

  @override
  String get redeemGiftCardDescription => 'Inserisci il codice della tua carta regalo per riscattarla.';

  @override
  String get redeemSuccessTitle => 'Carta regalo riscattata!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Hai riscattato con successo la carta regalo $amount.';
  }

  @override
  String get addCredit => 'Aggiungi credito';

  @override
  String get payNow => 'Paga ora';

  @override
  String get addCreditToWallet => 'Aggiungi credito al portafoglio';

  @override
  String get pleaseSelectAmount => 'Seleziona l\'importo';

  @override
  String get enterAmount => 'Inserire l\'importo';

  @override
  String get selectAmount => 'Seleziona importo:';

  @override
  String get wallet => 'Portafoglio';

  @override
  String get totalRides => 'Corse totali';

  @override
  String get appSettings => 'Impostazioni dell\'app';

  @override
  String get mapSettings => 'Impostazioni della mappa';

  @override
  String get lanugageSettings => 'Impostazioni della lingua';

  @override
  String get paymentMethods => 'Modalità di pagamento';

  @override
  String get selectCards => 'Seleziona le carte';

  @override
  String get selectCardsDescription => 'Puoi selezionare i numeri delle carte che desideri vengano visualizzati nell\'elenco dei metodi di pagamento sulle fatture.';

  @override
  String get delete => 'Eliminare';

  @override
  String get nameOnCard => 'nome sulla carta';

  @override
  String get profile => 'Profilo';

  @override
  String get scheduledRide => 'Corsa programmata';

  @override
  String get addPaymentMethod => 'Aggiungi metodo di pagamento';

  @override
  String get addPaymentMethodDescription => 'Aggiungi un nuovo metodo di pagamento al tuo account';

  @override
  String get saveCard => 'Salva carta';

  @override
  String get selectDialCode => 'Seleziona il codice di chiamata';

  @override
  String get searchCountryName => 'Cerca il nome del paese';

  @override
  String get preferences => 'Preferenze:';

  @override
  String get onboardingDescription => 'A pochi istanti dalla registrazione del tuo account e dal godimento di viaggi confortevoli';

  @override
  String get signInSignUp => 'Accedi/Registrati';

  @override
  String get enterOtp => 'Inserisci l\'OTP';

  @override
  String get enterPassword => 'Inserire la password';

  @override
  String get enterPasswordDescription => 'Si prega di inserire la password per continuare';

  @override
  String get setPassword => 'Impostare la password';

  @override
  String get password => 'Parola d\'ordine';

  @override
  String get passwordRuleDescription => 'Includere almeno due dei seguenti elementi:';

  @override
  String get passwordRuleLength => 'Tra 9 e 64 caratteri';

  @override
  String get passwordRuleUpperCase => 'Lettere maiuscole';

  @override
  String get passwordRuleLowerCase => 'Lettere minuscole';

  @override
  String get passwordRuleNumber => 'Numeri';

  @override
  String get passwordRuleSpecialCharacter => 'Personaggi speciali';

  @override
  String get contactDetails => 'Dettagli del contatto';

  @override
  String get vehicleDetails => 'Dettagli del veicolo';

  @override
  String get payoutInformation => 'Informazioni sul pagamento';

  @override
  String get documents => 'Documenti';

  @override
  String get accessDenied => 'Accesso negato';

  @override
  String get success => 'Successo';

  @override
  String get skipForNow => 'Salta per ora';

  @override
  String get sendOtpDescription => 'Un codice di verifica è stato inviato al tuo numero di telefono';

  @override
  String get resendOtp => 'Codice di rispedizione';

  @override
  String get useOtpInstead => 'Utilizza invece OTP';

  @override
  String get home => 'Casa';

  @override
  String get logout => 'Disconnettersi';

  @override
  String get driverLicenseNumber => 'Numero della patente di guida';

  @override
  String get email => 'E-mail';

  @override
  String get address => 'Indirizzo';

  @override
  String get gender => 'Genere';

  @override
  String get genderMale => 'Maschio';

  @override
  String get genderFemale => 'Femmina';

  @override
  String get genderUnknown => 'Neutro/Sconosciuto';

  @override
  String get vehiclePlateNumber => 'Numero di targa del veicolo';

  @override
  String get vehicleColor => 'Colore del veicolo';

  @override
  String get vehicleModelAndMake => 'Modello del veicolo';

  @override
  String get vehicleProductionYear => 'Anno di produzione del veicolo';

  @override
  String get bankName => 'Nome della banca';

  @override
  String get bankRoutingNumber => 'Bank Routing Number';

  @override
  String get bankAccountNumber => 'Numero di conto bancario';

  @override
  String get bankSwift => 'Codice SWIFT';

  @override
  String get uploadImage => 'Carica immagine';

  @override
  String get yourBalance => 'Il tuo bilancio';

  @override
  String get rideCancellation => 'Cancellazione della corsa';

  @override
  String get cancelRideMessage => 'Sei sicuro di voler annullare la tua corsa?';

  @override
  String get cancelRideSuccess => 'La corsa è stata annullata con successo';

  @override
  String get confirmAndCancelRide => 'Confermare';

  @override
  String get selectPaymentMethod => 'Scegli il metodo di pagamento';

  @override
  String get rideFeePaid => 'La tariffa della corsa è stata pagata';

  @override
  String get rideFeeUnpaid => 'La tariffa della corsa non è stata ancora pagata';

  @override
  String get total => 'Totale';

  @override
  String get totalPrice => 'Prezzo totale';

  @override
  String get addCustomCredit => 'Aggiungi modifica personalizzata';

  @override
  String get serviceFee => 'Costo del servizio';

  @override
  String get serviceOptionFee => 'Commissione per l\'opzione di servizio';

  @override
  String get couponDiscount => 'Sconto buono';

  @override
  String get walletCreit => 'Credito nel portafoglio';

  @override
  String get custom => 'Costume';

  @override
  String get payment => 'Pagamento';

  @override
  String get cashPayment => 'Pagamento in contanti';

  @override
  String cashPaymentDescription(String amount) {
    return 'Confermi di aver ricevuto $amount?';
  }

  @override
  String get cashPaymentReceived => 'Pagamento in contanti ricevuto';

  @override
  String get confirmAndEndTrip => 'Confermare';

  @override
  String get earnings => 'Guadagni';

  @override
  String get acceptOrder => 'Accetta l\'ordine';

  @override
  String get canceled => 'Annullato';

  @override
  String get unknown => 'Sconosciuto';

  @override
  String get commission => 'Commissione';

  @override
  String get selectProfileImage => 'Seleziona Immagine del profilo';

  @override
  String get chooseAvatarDescription => 'Oppure seleziona un avatar dall\'elenco seguente:';

  @override
  String get fullName => 'Nome e cognome';

  @override
  String get favoriteDrivers => 'Piloti preferiti';

  @override
  String get distanceTraveled => 'Distanza percorsa';

  @override
  String get rating => 'Valutazione';

  @override
  String get map => 'Carta geografica';

  @override
  String get income => 'Reddito';

  @override
  String get timeSpent => 'Tempo impiegato';

  @override
  String get daily => 'Quotidiano';

  @override
  String get monthly => 'Mensile';

  @override
  String get noRecordsFoundEarnings => 'Nessun record di viaggio trovato per questi filtri';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Nessun feedback ancora';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Non hai ancora abbastanza feedback da mostrare.';

  @override
  String get feedbacksSummary => 'Riepilogo dei feedback';

  @override
  String get feedbacksGoodTitle => 'Lavoro eccellente!';

  @override
  String get feedbacksGoodSubtitle => 'Le tue valutazioni sembrano buone finora';

  @override
  String get feedbacksBadTitle => 'Media';

  @override
  String get feedbacksBadSubtitle => 'Puoi utilizzare alcuni miglioramenti';

  @override
  String get feedbacksGoodPointsTitle => 'Alcuni punti positivi su di te:';

  @override
  String get feedbacksbadPointsTitle => 'Alcuni punti che puoi migliorare:';

  @override
  String get feedbacksReviewsTitle => 'Alcune recensioni precedenti';

  @override
  String get payoutMethods => 'Metodi di pagamento';

  @override
  String get notice => 'Avviso:';

  @override
  String get payoutNoticeTitle => 'Verrai pagato automaticamente dall\'amministratore due volte a settimana.';

  @override
  String get addPayoutMethod => 'Aggiungi metodo di pagamento';

  @override
  String get navigate => 'Navigare';

  @override
  String get noPayoutMethods => 'Nessun metodo di pagamento';

  @override
  String get name => 'Nome';

  @override
  String get nameHint => 'Inserisci il nome';

  @override
  String get bankNameHint => 'Inserisci il nome della banca';

  @override
  String get branchName => 'Nome della filiale';

  @override
  String get branchNameHint => 'Inserisci il nome della filiale';

  @override
  String get accountHolderName => 'Nome del titolare';

  @override
  String get routingNumber => 'Numero di instradamento';

  @override
  String get routingNumberHint => 'Inserisci il numero di instradamento';

  @override
  String get accountNumber => 'Numero di conto';

  @override
  String get accountNumberHint => 'Inserisci il numero di conto';

  @override
  String get addressHint => 'Inserisci l\'indirizzo';

  @override
  String get dateOfBith => 'Data di nascita';

  @override
  String get yearHint => 'Anno';

  @override
  String get monthHint => 'Mese';

  @override
  String get dayHint => 'Giorno';

  @override
  String get city => 'Città';

  @override
  String get cityHint => 'Inserisci la città';

  @override
  String get state => 'Stato';

  @override
  String get stateHint => 'Inserisci Stato';

  @override
  String get zipCode => 'Cap';

  @override
  String get zipCodeHint => 'Inserisci il codice postale';

  @override
  String get day => 'Giorno';

  @override
  String get month => 'Mese';

  @override
  String get year => 'Anno';

  @override
  String get noActivitiesYet => 'Nessuna attività ancora.';

  @override
  String get headingToDestination => 'dirigendosi verso la destinazione';

  @override
  String get driverArrivedNotice => 'L\'autista ti sta aspettando';

  @override
  String get driverShouldAriveInNotice => 'Si stima che l\'autista arrivi';

  @override
  String get driverShouldHaveArrivedNotice => 'L\'autista dovrebbe arrivare da un momento all\'altro';

  @override
  String get deleteAccount => 'Eliminare l\'account';

  @override
  String get deleteAccountNotice => 'Sei sicuro di voler eliminare il tuo account? Dopo 30 giorni il tuo account verrà eliminato definitivamente. Durante questo periodo, puoi ripristinare il tuo account effettuando nuovamente l\'accesso.';

  @override
  String get confirmAndDeleteAccount => 'Confermare';

  @override
  String get accountDeleted => 'L\'account è stato eliminato';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Sto andando a $destination da $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return 'Il nome del mio autista è $firstName $lastName, il numero di cellulare è $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return 'Il ciclista con me si chiama $firstName $lastName, il numero di cellulare è $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return 'Il viaggio è iniziato il $startTime e prevedo che il viaggio durerà circa $duration minuti';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'Prevedo che il viaggio duri circa $duration minuti una volta salito sull\'auto dell\'autista.';
  }

  @override
  String get sendSOSMessage => 'IMPORTANTE: utilizzare questa funzione solo in caso di emergenza. Contatteremo le autorità per tuo conto.';

  @override
  String get confirmAndSendSOS => 'Confermare';

  @override
  String get sosSentSuccessfully => 'L\'SOS è stato inviato con successo';

  @override
  String get topUpSuccess => 'Il portafoglio è stato ricaricato con successo';

  @override
  String get cancelNotAllowed => 'Non è possibile annullare una corsa già iniziata.';

  @override
  String get error => 'Errore';

  @override
  String get connectionError => 'Errore di connessione';

  @override
  String get serverError => 'Errore del server';

  @override
  String get addNewLocation => 'Aggiungi nuova posizione';

  @override
  String get twoWayTrip => 'Viaggio di andata e ritorno';

  @override
  String get reportSubmitted => 'Rapporto inviato';

  @override
  String get reportSubmittedDescription => 'La tua segnalazione è stata inviata con successo, la esamineremo e intraprenderemo le azioni necessarie.';

  @override
  String get cardNumber => 'Numero di carta';

  @override
  String get cardNumberHint => 'Inserisci il numero della carta';

  @override
  String get expiryDate => 'Data di scadenza';

  @override
  String get expiryDateHint => 'MM/AA';

  @override
  String get noFavoriteDrivers => 'Nessun pilota preferito';

  @override
  String get noFavoriteDriversDescription => 'Puoi contrassegnare i tuoi conducenti preferiti come preferiti quando li valuti dopo il viaggio.';

  @override
  String get pickupLocationNotFound => 'Non siamo stati in grado di determinare la tua posizione attuale utilizzando il GPS come punto di ritiro. Inserisci manualmente il punto di ritiro.';

  @override
  String get dragToSelect => 'Trascina per selezionare';

  @override
  String get skip => 'Saltare';

  @override
  String get openSettings => 'Apri Impostazioni';

  @override
  String get locationPermission => 'Autorizzazione alla posizione';

  @override
  String get locationPermissionDeniedForeverMessage => 'L\'autorizzazione alla posizione è un requisito per ricevere ordini intorno a te e anche per consentire al ciclista di monitorare la tua posizione. Non puoi ricevere ordini senza questa autorizzazione e senza che noi stiamo attenti alla tua posizione attuale. Puoi modificare questa autorizzazione nelle impostazioni del telefono.';

  @override
  String get allow => 'Permettere';

  @override
  String get driverOnlineTitle => 'Alla ricerca di un passaggio';

  @override
  String get driverOfflineTitle => 'Collegati online per iniziare a ricevere richieste';

  @override
  String get payInCash => 'Pagamento in contanti';

  @override
  String get payInCashDescription => 'Si prega di procedere con il pagamento in contanti all\'autista. L\'autista confermerà il pagamento una volta ricevuto.';

  @override
  String get addToFavoriteDrivers => 'Aggiungi ai conducenti preferiti';

  @override
  String get slideToConfirmArrival => 'Scorri per confermare l\'arrivo';

  @override
  String get slideToConfirmPickup => 'Scorri per confermare il ritiro';

  @override
  String get slideToConfirmDropoff => 'Scorri per confermare il ritiro';

  @override
  String get noticePickingUpRiderIn => 'Ritiro del cavaliere in:';

  @override
  String get noticeRiderNotified => 'Il ciclista è stato avvisato, prendi il ciclista e inizia la corsa';
}
