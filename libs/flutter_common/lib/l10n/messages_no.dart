import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Norwegian (`no`).
class SNo extends S {
  SNo([String locale = 'no']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Alle rettigheter reservert.';
  }

  @override
  String get welcomeTitle => 'Velkommen til appen';

  @override
  String get today => 'I dag';

  @override
  String get yesterday => 'I går';

  @override
  String get settings => 'Innstillinger';

  @override
  String get about => 'Om';

  @override
  String get profileInfo => 'Profilinformasjon';

  @override
  String get language => 'Språk';

  @override
  String get firstName => 'Fornavn';

  @override
  String get lastName => 'Etternavn';

  @override
  String get mobileNumber => 'Mobilnummer';

  @override
  String get edit => 'Redigere';

  @override
  String get enterCode => 'Skriv inn kode';

  @override
  String get editProfile => 'Rediger profil';

  @override
  String get bankTransfer => 'Bankoverføring';

  @override
  String get gift => 'Gave';

  @override
  String get correction => 'Korreksjon';

  @override
  String get inappPayment => 'Betaling i appen';

  @override
  String get orderFee => 'Bestillingsgebyr';

  @override
  String get parkingFee => 'Parkeringsavgift';

  @override
  String get cancellationFee => 'Avbestillingsgebyr';

  @override
  String get withdraw => 'Ta ut';

  @override
  String get walletTransactions => 'Lommeboktransaksjoner';

  @override
  String get addCard => 'Legg til kort';

  @override
  String get visa => 'Visum';

  @override
  String get mastercard => 'Mastercard';

  @override
  String get addBalance => 'Legg til saldo';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Minutter',
      one: '$minutesString Minutt',
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
      other: '$hoursString Timer',
      one: '$hoursString Time',
      zero: 'Zero hours',
    );
    return 'Varighet: $_temp0';
  }

  @override
  String get timePastDue => 'Forfalt';

  @override
  String get justNow => 'Akkurat nå';

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
  String get welcomeSubtitle => 'Taxitjeneste designet for din komfort har turer med favorittsjåførene dine og velg dine kjørepreferanser';

  @override
  String get onboardingRewardTitle => 'Bli belønnet!';

  @override
  String get onboardingRewardSubtitle => 'Få ekstra bonuser for å verve en venn, fullføre turer og mange flere...';

  @override
  String get selectLanguage => 'Velg språk';

  @override
  String get searchForLanguage => 'Søk etter språk';

  @override
  String get enterPhoneNumber => 'Skriv inn telefonnummer';

  @override
  String get actionContinue => 'Fortsette';

  @override
  String get whereIsYourDestination => 'Hvor er målet ditt?';

  @override
  String get whereAreYouGoing => 'Hvor skal du?';

  @override
  String get selectDestinations => 'Din rute';

  @override
  String get pickupPoint => 'Hentested';

  @override
  String get enterPickupPoint => 'Gå inn på hentepunkt';

  @override
  String get dropoffPoint => 'Avleveringssted';

  @override
  String get enterDropoffPoint => 'Gå inn på avleveringsstedet';

  @override
  String get stopPoint => 'Stopppunkt';

  @override
  String get enterStopPoint => 'Angi stopppunktet';

  @override
  String get confirm => 'Bekrefte';

  @override
  String get confirmDropoff => 'Bekreft avlevering';

  @override
  String get confirmPickup => 'Bekreft henting';

  @override
  String get enterAtLeast3Characters => 'Skriv inn minst 3 tegn';

  @override
  String get noResults => 'Ingen resultater';

  @override
  String get bookNow => 'Bestill nå';

  @override
  String get cash => 'Penger';

  @override
  String get online => 'på nett';

  @override
  String get offline => 'Frakoblet';

  @override
  String get onTrip => 'På tur';

  @override
  String get confirmPay => 'Bekrefte';

  @override
  String get cancel => 'Avbryt';

  @override
  String get apply => 'Søke om';

  @override
  String get enterCouponCode => 'Tast inn kupongkode';

  @override
  String get reserveRide => 'Reserver tur';

  @override
  String get reserveRideMessage => 'Velg nøyaktig dato og klokkeslett du ønsker at turen skal reserveres';

  @override
  String get reserveRideMessageSuccess => 'Turen din er reservert. Du kan se dine reserverte turer i delen \"Planlagte turer\".';

  @override
  String get cancelReservation => 'Kanseller reservasjon';

  @override
  String get confirmResrve => 'Bekrefte';

  @override
  String get enterCouponDescription => 'Sett inn kupongkoden din som skal brukes på prisene';

  @override
  String get enterCoupon => 'Skriv inn kupongen';

  @override
  String get couponApplied => 'Kupongen er brukt';

  @override
  String get couponAppliedDescription => 'Kupongen er brukt på turens billettpris';

  @override
  String get done => 'Ferdig!';

  @override
  String get ridePreferences => 'Rideinnstillinger';

  @override
  String get noWaitTime => 'Ingen ventetid';

  @override
  String minutesRange(String minutes) {
    return '$minutes minutter';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds sekunder';
  }

  @override
  String get rideRequested => 'Skyss forespurt';

  @override
  String get searchingForAnOnlineDriver => 'Søker etter en online driver...';

  @override
  String get cancelRide => 'Avbryt turen';

  @override
  String get rideSafety => 'Ridesikkerhet';

  @override
  String get shareTripInformation => 'Del turinformasjon';

  @override
  String get shareTripInformationDescription => 'Du kan dele turinformasjonen din med en venn';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Gi beskjed til myndighetene om en nødsituasjon';

  @override
  String get reportAnIssue => 'Rapporter et problem';

  @override
  String get reportAnIssueMidTripDescription => 'Del et sikkerhetsproblem på tur';

  @override
  String get rideOptions => 'Ridealternativer';

  @override
  String get goBackToRide => 'Gå tilbake for å sykle';

  @override
  String get waitTime => 'Ventetid';

  @override
  String get couponCode => 'Kupongkode';

  @override
  String get giftCardCode => 'Gavekortkode';

  @override
  String get nicePoints => 'Fine poeng';

  @override
  String get negativePoints => 'Negative poeng';

  @override
  String get reviewCommentBoxHint => 'Legg til en kommentar...';

  @override
  String get howWasYourTrip => 'Hvordan var turen din?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Forferdelig tur med $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Dårlig tur med $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Gjennomsnittlig reise med $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'God tur med $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Fantastisk tur med $name';
  }

  @override
  String get submitFeedback => 'Send inn tilbakemelding';

  @override
  String get typeAMessage => 'Skriv inn en melding';

  @override
  String get findAnotherRide => 'Finn en annen tur';

  @override
  String get next => 'Neste';

  @override
  String get searchForDropoffLocation => 'Søk etter avleveringssted';

  @override
  String get searchForPickupLocation => 'Søk etter hentested';

  @override
  String get placeConfirmDialogPlaceholder => 'Hvor er avleveringsstedet ditt?';

  @override
  String get noAnnouncements => 'Ingen kunngjøringer';

  @override
  String get announcements => 'Kunngjøringer';

  @override
  String reviewsCount(int count) {
    return '($count anmeldelser)';
  }

  @override
  String get tripDetails => 'Turdetaljer';

  @override
  String get rideDetails => 'Ridedetaljer';

  @override
  String get orderARide => 'Bestill skyss';

  @override
  String get noRidesYet => 'Ingen turer ennå!';

  @override
  String get issueSubjectPlaceholder => 'Skriv inn emnet for problemet';

  @override
  String get issueContentPlaceholder => 'Skriv inn beskrivelsen av problemet';

  @override
  String get reportThisIssue => 'Rapporter dette problemet';

  @override
  String get fieldIsRequired => 'Feltet er påkrevet';

  @override
  String get ok => 'OK';

  @override
  String get favoriteLocations => 'Favorittsteder';

  @override
  String get favoriteLocationsSubtitle => 'Lagre favorittstedene dine for enklere tilgang';

  @override
  String get createAFavoriteLocation => 'Lag et favorittsted';

  @override
  String get addressTitleLabel => 'Adressens tittel';

  @override
  String get clickToSetLocation => 'Klikk for å angi plassering';

  @override
  String get whereIsYourNewFavoriteLocation => 'Hvor er ditt nye favorittsted?';

  @override
  String get locateFavoriteLocationDescription => 'Bruk enten søkeboksen nedenfor eller kartet for å feste den nøyaktige plasseringen';

  @override
  String get searchLocation => 'Søk plassering';

  @override
  String get saveChanges => 'Lagre endringer';

  @override
  String get rideHistory => 'Ridehistorie';

  @override
  String get scheduledRides => 'Planlagte turer';

  @override
  String get keepTheOrder => 'Hold rekkefølgen';

  @override
  String get cancelTheRide => 'Avbryt turen';

  @override
  String get walletBalance => 'Saldo i lommeboken';

  @override
  String get activities => 'Aktiviteter';

  @override
  String get pleaseEnterGiftCardCode => 'Vennligst skriv inn gavekortkoden';

  @override
  String get redeem => 'Løs inn';

  @override
  String get enterGiftCardCode => 'Skriv inn gavekortkoden';

  @override
  String get redeemGiftCard => 'Løs inn gavekort';

  @override
  String get redeemGiftCardDescription => 'Skriv inn gavekortkoden for å løse den inn.';

  @override
  String get redeemSuccessTitle => 'Gavekort innløst!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Du har løst inn $amount gavekort.';
  }

  @override
  String get addCredit => 'Legg til kreditt';

  @override
  String get payNow => 'Betal nå';

  @override
  String get addCreditToWallet => 'Legg til kreditt i lommeboken';

  @override
  String get pleaseSelectAmount => 'Velg beløp';

  @override
  String get enterAmount => 'Tast inn beløp';

  @override
  String get selectAmount => 'Velg beløp:';

  @override
  String get wallet => 'Lommebok';

  @override
  String get totalRides => 'Totalt antall turer';

  @override
  String get appSettings => 'Appinnstillinger';

  @override
  String get mapSettings => 'Kartinnstillinger';

  @override
  String get lanugageSettings => 'Språkinnstillinger';

  @override
  String get paymentMethods => 'Betalingsmetoder';

  @override
  String get selectCards => 'Velg kort';

  @override
  String get selectCardsDescription => 'Du kan velge kortnumrene du ønsker skal vises i listen over betalingsmåter på fakturaer.';

  @override
  String get delete => 'Slett';

  @override
  String get nameOnCard => 'Navn på kort';

  @override
  String get profile => 'Profil';

  @override
  String get scheduledRide => 'Planlagt tur';

  @override
  String get addPaymentMethod => 'Legg til betalingsmåte';

  @override
  String get addPaymentMethodDescription => 'Legg til en ny betalingsmåte på kontoen din';

  @override
  String get saveCard => 'Lagre kortet';

  @override
  String get selectDialCode => 'Velg ringekode';

  @override
  String get searchCountryName => 'Søk landsnavn';

  @override
  String get preferences => 'Preferanser:';

  @override
  String get onboardingDescription => 'Øyeblikk unna å registrere kontoen din og nyte komfortable turer';

  @override
  String get signInSignUp => 'Logg inn Registrer deg';

  @override
  String get enterOtp => 'Skriv inn OTP';

  @override
  String get enterPassword => 'Oppgi passord';

  @override
  String get enterPasswordDescription => 'Vennligst skriv inn passordet ditt for å fortsette';

  @override
  String get setPassword => 'Lag et passord';

  @override
  String get password => 'Passord';

  @override
  String get passwordRuleDescription => 'Ta med minst to av følgende:';

  @override
  String get passwordRuleLength => 'Mellom 9 og 64 tegn';

  @override
  String get passwordRuleUpperCase => 'Store bokstaver';

  @override
  String get passwordRuleLowerCase => 'Små bokstaver';

  @override
  String get passwordRuleNumber => 'Tall';

  @override
  String get passwordRuleSpecialCharacter => 'Spesielle karakterer';

  @override
  String get contactDetails => 'Kontaktinformasjon';

  @override
  String get vehicleDetails => 'Kjøretøydetaljer';

  @override
  String get payoutInformation => 'Utbetalingsinformasjon';

  @override
  String get documents => 'Dokumenter';

  @override
  String get accessDenied => 'Ingen tilgang';

  @override
  String get success => 'Suksess';

  @override
  String get skipForNow => 'Hopp over for nå';

  @override
  String get sendOtpDescription => 'En bekreftelseskode er sendt til telefonnummeret ditt';

  @override
  String get resendOtp => 'Send kode på nytt';

  @override
  String get useOtpInstead => 'Bruk OTP i stedet';

  @override
  String get home => 'Hjem';

  @override
  String get logout => 'Logg ut';

  @override
  String get driverLicenseNumber => 'Førerkortnummer';

  @override
  String get email => 'E-post';

  @override
  String get address => 'Adresse';

  @override
  String get gender => 'Kjønn';

  @override
  String get genderMale => 'Mann';

  @override
  String get genderFemale => 'Hunn';

  @override
  String get genderUnknown => 'Nøytral / Ukjent';

  @override
  String get vehiclePlateNumber => 'Kjøretøysskiltnummer';

  @override
  String get vehicleColor => 'Farge på kjøretøy';

  @override
  String get vehicleModelAndMake => 'Kjøretøy modell';

  @override
  String get vehicleProductionYear => 'Produksjonsår for kjøretøy';

  @override
  String get bankName => 'Bank navn';

  @override
  String get bankRoutingNumber => 'Bankrutingsnummer';

  @override
  String get bankAccountNumber => 'Bankkontonummer';

  @override
  String get bankSwift => 'SWIFT-kode';

  @override
  String get uploadImage => 'Last opp bilde';

  @override
  String get yourBalance => 'Din balanse';

  @override
  String get rideCancellation => 'Kansellering av kjøretur';

  @override
  String get cancelRideMessage => 'Er du sikker på at du vil kansellere turen?';

  @override
  String get cancelRideSuccess => 'Turen er kansellert';

  @override
  String get confirmAndCancelRide => 'Bekrefte';

  @override
  String get selectPaymentMethod => 'Velg betalingsmetode';

  @override
  String get rideFeePaid => 'Rides avgift er betalt';

  @override
  String get rideFeeUnpaid => 'Rides avgift er ikke betalt ennå';

  @override
  String get total => 'Total';

  @override
  String get totalPrice => 'Totalpris';

  @override
  String get addCustomCredit => 'Legg til tilpasset redigering';

  @override
  String get serviceFee => 'Serviceavgift';

  @override
  String get serviceOptionFee => 'Gebyr for tjenestealternativer';

  @override
  String get couponDiscount => 'Kupongrabatt';

  @override
  String get walletCreit => 'Lommebokkreditt';

  @override
  String get custom => 'Tilpasset';

  @override
  String get payment => 'innbetaling';

  @override
  String get cashPayment => 'Kontant betaling';

  @override
  String cashPaymentDescription(String amount) {
    return 'Bekrefter du at du har mottatt $amount?';
  }

  @override
  String get cashPaymentReceived => 'Kontant betaling mottatt';

  @override
  String get confirmAndEndTrip => 'Bekrefte';

  @override
  String get earnings => 'Inntjening';

  @override
  String get acceptOrder => 'Godta ordre';

  @override
  String get canceled => 'Kansellert';

  @override
  String get unknown => 'Ukjent';

  @override
  String get commission => 'Kommisjon';

  @override
  String get selectProfileImage => 'Velg Profilbilde';

  @override
  String get chooseAvatarDescription => 'Eller velg en avatar fra listen nedenfor:';

  @override
  String get fullName => 'Fullt navn';

  @override
  String get favoriteDrivers => 'Favoritt sjåfører';

  @override
  String get distanceTraveled => 'Tilbakelagt avstand';

  @override
  String get rating => 'Vurdering';

  @override
  String get map => 'Kart';

  @override
  String get income => 'Inntekt';

  @override
  String get timeSpent => 'Tid brukt';

  @override
  String get daily => 'Daglig';

  @override
  String get monthly => 'Månedlig';

  @override
  String get noRecordsFoundEarnings => 'Fant ingen turpost for disse filtrene';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Ingen tilbakemeldinger ennå';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Du har ikke nok tilbakemeldinger å vise ennå.';

  @override
  String get feedbacksSummary => 'Sammendrag av tilbakemeldinger';

  @override
  String get feedbacksGoodTitle => 'Utmerket jobb!';

  @override
  String get feedbacksGoodSubtitle => 'Vurderingene dine ser bra ut så langt';

  @override
  String get feedbacksBadTitle => 'Gjennomsnitt';

  @override
  String get feedbacksBadSubtitle => 'Du kan bruke noen forbedringer';

  @override
  String get feedbacksGoodPointsTitle => 'Noen gode poeng om deg:';

  @override
  String get feedbacksbadPointsTitle => 'Noen punkter du kan forbedre:';

  @override
  String get feedbacksReviewsTitle => 'Noen tidligere anmeldelser';

  @override
  String get payoutMethods => 'Utbetalingsmetoder';

  @override
  String get notice => 'Legge merke til:';

  @override
  String get payoutNoticeTitle => 'Du vil automatisk bli betalt av administratoren to ganger i uken.';

  @override
  String get addPayoutMethod => 'Legg til utbetalingsmetode';

  @override
  String get navigate => 'Navigere';

  @override
  String get noPayoutMethods => 'Ingen utbetalingsmetoder';

  @override
  String get name => 'Navn';

  @override
  String get nameHint => 'Skriv inn navn';

  @override
  String get bankNameHint => 'Skriv inn banknavn';

  @override
  String get branchName => 'Filialnavn';

  @override
  String get branchNameHint => 'Skriv inn filialnavn';

  @override
  String get accountHolderName => 'Kontohaver Name';

  @override
  String get routingNumber => 'Rutingnummer';

  @override
  String get routingNumberHint => 'Skriv inn rutenummer';

  @override
  String get accountNumber => 'Kontonummer';

  @override
  String get accountNumberHint => 'Skriv inn kontonummer';

  @override
  String get addressHint => 'Skriv inn adresse';

  @override
  String get dateOfBith => 'Fødselsdato';

  @override
  String get yearHint => 'År';

  @override
  String get monthHint => 'Måned';

  @override
  String get dayHint => 'Dag';

  @override
  String get city => 'By';

  @override
  String get cityHint => 'Gå inn i byen';

  @override
  String get state => 'Stat';

  @override
  String get stateHint => 'Gå inn i staten';

  @override
  String get zipCode => 'Post kode';

  @override
  String get zipCodeHint => 'Legg inn postnummer';

  @override
  String get day => 'Dag';

  @override
  String get month => 'Måned';

  @override
  String get year => 'År';

  @override
  String get noActivitiesYet => 'Ingen aktiviteter ennå.';

  @override
  String get headingToDestination => 'på vei til destinasjonen';

  @override
  String get driverArrivedNotice => 'Sjåføren venter på deg';

  @override
  String get driverShouldAriveInNotice => 'Sjåføren anslås å ankomme';

  @override
  String get driverShouldHaveArrivedNotice => 'Sjåføren skal ankomme når som helst nå';

  @override
  String get deleteAccount => 'Slett konto';

  @override
  String get deleteAccountNotice => 'Er du sikker på at du vil slette kontoen din? Etter 30 dager blir kontoen din slettet permanent. I løpet av denne tiden kan du gjenopprette kontoen din ved å logge på igjen.';

  @override
  String get confirmAndDeleteAccount => 'Bekrefte ';

  @override
  String get accountDeleted => 'Kontoen er slettet';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Jeg er på vei til $destination fra $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Sjåførnavnet mitt er $firstName $lastName, mobilnummeret er $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' Rytteren med mitt navn er $firstName $lastName, mobilnummeret er $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Turen startet $startTime og jeg regner med at turen tar ca. $duration minutter';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Jeg regner med at turen tar omtrent $duration minutter når jeg setter meg inn i sjåførens bil.';
  }

  @override
  String get sendSOSMessage => 'VIKTIG: Bruk denne funksjonen kun i nødstilfeller. Vi vil kontakte myndighetene på vegne av deg.';

  @override
  String get confirmAndSendSOS => 'Bekrefte';

  @override
  String get sosSentSuccessfully => 'SOS er sendt';

  @override
  String get topUpSuccess => 'Lommeboken er fullført';

  @override
  String get cancelNotAllowed => 'Kansellering av en allerede påbegynt tur er ikke mulig.';

  @override
  String get error => 'Feil';

  @override
  String get connectionError => 'Tilkoblingsfeil';

  @override
  String get serverError => 'Serverfeil';

  @override
  String get addNewLocation => 'Legg til ny plassering';

  @override
  String get twoWayTrip => 'Toveis tur';

  @override
  String get reportSubmitted => 'Rapport innsendt';

  @override
  String get reportSubmittedDescription => 'Rapporten din har blitt sendt inn, vi vil vurdere den og iverksette nødvendige tiltak.';

  @override
  String get cardNumber => 'Kortnummer';

  @override
  String get cardNumberHint => 'Skriv inn kortnummer';

  @override
  String get expiryDate => 'Utløpsdato';

  @override
  String get expiryDateHint => 'MM/ÅÅ';

  @override
  String get noFavoriteDrivers => 'Ingen favorittsjåfører';

  @override
  String get noFavoriteDriversDescription => 'Du kan merke dine foretrukne sjåfører som favoritter når du vurderer dem etter reisen.';

  @override
  String get pickupLocationNotFound => 'Vi kunne ikke finne din nåværende posisjon ved å bruke GPS som hentepunkt. Vennligst skriv inn hentestedet ditt manuelt.';

  @override
  String get dragToSelect => 'Dra for å velge';

  @override
  String get skip => 'Hopp over';

  @override
  String get openSettings => 'Åpne innstillinger';

  @override
  String get locationPermission => 'Stedstillatelse';

  @override
  String get locationPermissionDeniedForeverMessage => 'Posisjonstillatelse er et krav for å motta bestillinger rundt deg, og også for rytteren for å spore posisjonen din. Du kan ikke motta bestillinger uten denne tillatelsen, og vi passer på din nåværende plassering. Du kan endre denne tillatelsen i telefoninnstillingene.';

  @override
  String get allow => 'Tillate';

  @override
  String get driverOnlineTitle => 'Søker etter en tur';

  @override
  String get driverOfflineTitle => 'Kom deg på nett for å begynne å motta forespørsler';

  @override
  String get payInCash => 'Kontant betaling';

  @override
  String get payInCashDescription => 'Fortsett med kontantbetalingen til sjåføren. Sjåføren vil bekrefte betalingen når den er mottatt.';

  @override
  String get addToFavoriteDrivers => 'Legg til favorittdrivere';

  @override
  String get slideToConfirmArrival => 'Skyv for å bekrefte ankomst';

  @override
  String get slideToConfirmPickup => 'Skyv for å bekrefte henting';

  @override
  String get slideToConfirmDropoff => 'Skyv for å bekrefte frafall';

  @override
  String get noticePickingUpRiderIn => 'Henting av rytteren i:';

  @override
  String get noticeRiderNotified => 'Rytteren er varslet, Hent rytteren og start turen';
}
