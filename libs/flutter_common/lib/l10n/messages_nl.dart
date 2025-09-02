import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Dutch Flemish (`nl`).
class SNl extends S {
  SNl([String locale = 'nl']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Alle rechten voorbehouden.';
  }

  @override
  String get welcomeTitle => 'Welkom bij de app';

  @override
  String get today => 'Vandaag';

  @override
  String get yesterday => 'Gisteren';

  @override
  String get settings => 'Instellingen';

  @override
  String get about => 'Over';

  @override
  String get profileInfo => 'Profielinformatie';

  @override
  String get language => 'Taal';

  @override
  String get firstName => 'Voornaam';

  @override
  String get lastName => 'Achternaam';

  @override
  String get mobileNumber => 'Mobiel nummer';

  @override
  String get edit => 'Bewerking';

  @override
  String get enterCode => 'Voer code in';

  @override
  String get editProfile => 'Bewerk profiel';

  @override
  String get bankTransfer => 'Overschrijving';

  @override
  String get gift => 'Geschenk';

  @override
  String get correction => 'Correctie';

  @override
  String get inappPayment => 'In-app-betaling';

  @override
  String get orderFee => 'Bestelkosten';

  @override
  String get parkingFee => 'Parkeertarief';

  @override
  String get cancellationFee => 'Annuleringskosten';

  @override
  String get withdraw => 'Terugtrekken';

  @override
  String get walletTransactions => 'Wallet-transacties';

  @override
  String get addCard => 'Voeg een kaart toe';

  @override
  String get visa => 'Visa';

  @override
  String get mastercard => 'MasterCard';

  @override
  String get addBalance => 'Voeg saldo toe';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Minuten',
      one: '$minutesString Minuut',
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
      other: '$hoursString Uur',
      one: '$hoursString Uur',
      zero: 'Zero hours',
    );
    return 'Duur: $_temp0';
  }

  @override
  String get timePastDue => 'Verlopen';

  @override
  String get justNow => 'Net nu';

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
  String get welcomeSubtitle => 'Taxiservice ontworpen voor uw comfort, reis met uw favoriete chauffeurs en selecteer uw ritvoorkeuren';

  @override
  String get onboardingRewardTitle => 'Word beloond!';

  @override
  String get onboardingRewardSubtitle => 'Ontvang extra bonussen voor het doorverwijzen van een vriend, het voltooien van reizen en nog veel meer...';

  @override
  String get selectLanguage => 'Selecteer taal';

  @override
  String get searchForLanguage => 'Zoek naar taal';

  @override
  String get enterPhoneNumber => 'Voer telefoonnummer in';

  @override
  String get actionContinue => 'Doorgaan';

  @override
  String get whereIsYourDestination => 'Waar is je bestemming?';

  @override
  String get whereAreYouGoing => 'Waar ga je heen?';

  @override
  String get selectDestinations => 'Jouw traject';

  @override
  String get pickupPoint => 'Ophaalpunt';

  @override
  String get enterPickupPoint => 'Vul het ophaalpunt in';

  @override
  String get dropoffPoint => 'Afleverpunt';

  @override
  String get enterDropoffPoint => 'Vul het afleverpunt in';

  @override
  String get stopPoint => 'Stoppunt';

  @override
  String get enterStopPoint => 'Stoppunt invoeren';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get confirmDropoff => 'Bevestig het afleveren';

  @override
  String get confirmPickup => 'Bevestig het ophalen';

  @override
  String get enterAtLeast3Characters => 'Voer minimaal 3 tekens in';

  @override
  String get noResults => 'Geen resultaten';

  @override
  String get bookNow => 'Boek nu';

  @override
  String get cash => 'Contant geld';

  @override
  String get online => 'Online';

  @override
  String get offline => 'Offline';

  @override
  String get onTrip => 'Op reis';

  @override
  String get confirmPay => 'Bevestigen ';

  @override
  String get cancel => 'Annuleren';

  @override
  String get apply => 'Toepassen';

  @override
  String get enterCouponCode => 'Vul couponcode in';

  @override
  String get reserveRide => 'Rit reserveren';

  @override
  String get reserveRideMessage => 'Selecteer de exacte datum en tijd waarop u uw rit wilt reserveren';

  @override
  String get reserveRideMessageSuccess => 'Uw rit is succesvol gereserveerd. Onder het kopje \'Geplande ritten\' kunt u uw gereserveerde ritten bekijken.';

  @override
  String get cancelReservation => 'Reservering annuleren';

  @override
  String get confirmResrve => 'Bevestigen ';

  @override
  String get enterCouponDescription => 'Voer uw couponcode in die op de prijzen moet worden toegepast';

  @override
  String get enterCoupon => 'Voer coupon in';

  @override
  String get couponApplied => 'Coupon toegepast';

  @override
  String get couponAppliedDescription => 'De coupon is toegepast op het tarief van uw rit';

  @override
  String get done => 'Klaar!';

  @override
  String get ridePreferences => 'Ritvoorkeuren';

  @override
  String get noWaitTime => 'Geen wachttijd';

  @override
  String minutesRange(String minutes) {
    return '$minutes minuten';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds seconden';
  }

  @override
  String get rideRequested => 'Rit aangevraagd';

  @override
  String get searchingForAnOnlineDriver => 'Op zoek naar een online chauffeur...';

  @override
  String get cancelRide => 'Rit annuleren';

  @override
  String get rideSafety => 'Rijveiligheid';

  @override
  String get shareTripInformation => 'Deel reisinformatie';

  @override
  String get shareTripInformationDescription => 'U kunt uw reisinformatie delen met een vriend';

  @override
  String get sos => 'Sos';

  @override
  String get sosDescription => 'Informeer de autoriteiten over een noodsituatie';

  @override
  String get reportAnIssue => 'Een probleem melden';

  @override
  String get reportAnIssueMidTripDescription => 'Deel een veiligheidsprobleem onderweg';

  @override
  String get rideOptions => 'Rit opties';

  @override
  String get goBackToRide => 'Ga terug om te rijden';

  @override
  String get waitTime => 'Wacht tijd';

  @override
  String get couponCode => 'Coupon code';

  @override
  String get giftCardCode => 'Cadeaukaartcode';

  @override
  String get nicePoints => 'Mooie punten';

  @override
  String get negativePoints => 'Negatieve punten';

  @override
  String get reviewCommentBoxHint => 'Voeg een reactie toe...';

  @override
  String get howWasYourTrip => 'Hoe was je reis?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Vreselijke reis met $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Slechte trip met $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Gemiddelde rit met $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Goede reis met $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Geweldige reis met $name';
  }

  @override
  String get submitFeedback => 'Feedback verzenden';

  @override
  String get typeAMessage => 'Type een bericht';

  @override
  String get findAnotherRide => 'Zoek een andere rit';

  @override
  String get next => 'Volgende';

  @override
  String get searchForDropoffLocation => 'Zoek naar afleverlocatie';

  @override
  String get searchForPickupLocation => 'Zoek ophaallocatie';

  @override
  String get placeConfirmDialogPlaceholder => 'Waar is uw afleverlocatie?';

  @override
  String get noAnnouncements => 'Geen aankondigingen';

  @override
  String get announcements => 'Aankondigingen';

  @override
  String reviewsCount(int count) {
    return '($count beoordelingen)';
  }

  @override
  String get tripDetails => 'Reisdetails';

  @override
  String get rideDetails => 'Ritdetails';

  @override
  String get orderARide => 'Bestel een rit';

  @override
  String get noRidesYet => 'Nog geen ritten!';

  @override
  String get issueSubjectPlaceholder => 'Typ het onderwerp van het probleem';

  @override
  String get issueContentPlaceholder => 'Typ de beschrijving van het probleem';

  @override
  String get reportThisIssue => 'Rapporteer dit probleem';

  @override
  String get fieldIsRequired => 'Veld is verplicht';

  @override
  String get ok => 'OK';

  @override
  String get favoriteLocations => 'Favoriete locaties';

  @override
  String get favoriteLocationsSubtitle => 'Sla uw favoriete locaties op voor eenvoudigere toegang';

  @override
  String get createAFavoriteLocation => 'Creëer een favoriete locatie';

  @override
  String get addressTitleLabel => 'De titel van het adres';

  @override
  String get clickToSetLocation => 'Klik om de locatie in te stellen';

  @override
  String get whereIsYourNewFavoriteLocation => 'Wat is jouw nieuwe favoriete locatie?';

  @override
  String get locateFavoriteLocationDescription => 'Gebruik het onderstaande zoekvak of de kaart om de exacte locatie vast te stellen';

  @override
  String get searchLocation => 'Zoek locatie';

  @override
  String get saveChanges => 'Wijzigingen opslaan';

  @override
  String get rideHistory => 'Ritgeschiedenis';

  @override
  String get scheduledRides => 'Geplande ritten';

  @override
  String get keepTheOrder => 'Houd de volgorde aan';

  @override
  String get cancelTheRide => 'Annuleer de rit';

  @override
  String get walletBalance => 'Wallet-saldo';

  @override
  String get activities => 'Activiteiten';

  @override
  String get pleaseEnterGiftCardCode => 'Voer de cadeaukaartcode in';

  @override
  String get redeem => 'Inwisselen';

  @override
  String get enterGiftCardCode => 'Cadeaukaartcode invoeren';

  @override
  String get redeemGiftCard => 'Cadeaukaart inwisselen';

  @override
  String get redeemGiftCardDescription => 'Voer uw cadeaukaartcode in om deze in te wisselen.';

  @override
  String get redeemSuccessTitle => 'Cadeaukaart ingewisseld!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Je hebt de $amount cadeaubon succesvol ingewisseld.';
  }

  @override
  String get addCredit => 'Voeg krediet toe';

  @override
  String get payNow => 'Nu betalen';

  @override
  String get addCreditToWallet => 'Voeg tegoed toe aan portemonnee';

  @override
  String get pleaseSelectAmount => 'Selecteer het bedrag';

  @override
  String get enterAmount => 'Voer een bedrag in';

  @override
  String get selectAmount => 'Selecteer bedrag:';

  @override
  String get wallet => 'Portemonnee';

  @override
  String get totalRides => 'Totaal ritten';

  @override
  String get appSettings => 'App instellingen';

  @override
  String get mapSettings => 'Kaartinstellingen';

  @override
  String get lanugageSettings => 'Taalinstellingen';

  @override
  String get paymentMethods => 'Betaalmethoden';

  @override
  String get selectCards => 'Selecteer kaarten';

  @override
  String get selectCardsDescription => 'U kunt de kaartnummers selecteren die u wilt weergeven in de lijst met betaalmethoden op facturen.';

  @override
  String get delete => 'Verwijderen';

  @override
  String get nameOnCard => 'naam op kaart';

  @override
  String get profile => 'Profiel';

  @override
  String get scheduledRide => 'Geplande rit';

  @override
  String get addPaymentMethod => 'Betaalmethode toevoegen';

  @override
  String get addPaymentMethodDescription => 'Voeg een nieuwe betaalmethode toe aan uw account';

  @override
  String get saveCard => 'Kaart opslaan';

  @override
  String get selectDialCode => 'Kiescode selecteren';

  @override
  String get searchCountryName => 'Zoek landnaam';

  @override
  String get preferences => 'Voorkeuren:';

  @override
  String get onboardingDescription => 'Momenten verwijderd van het registreren van uw account en genieten van comfortabele ritten';

  @override
  String get signInSignUp => 'Aanmelden/ Aanmelden';

  @override
  String get enterOtp => 'Voer OTP in';

  @override
  String get enterPassword => 'Voer wachtwoord in';

  @override
  String get enterPasswordDescription => 'Voer uw wachtwoord in om door te gaan';

  @override
  String get setPassword => 'Stel een wachtwoord in';

  @override
  String get password => 'Wachtwoord';

  @override
  String get passwordRuleDescription => 'Voeg ten minste twee van de volgende toe:';

  @override
  String get passwordRuleLength => 'Tussen 9 en 64 tekens';

  @override
  String get passwordRuleUpperCase => 'Hoofdletters';

  @override
  String get passwordRuleLowerCase => 'Kleine letters';

  @override
  String get passwordRuleNumber => 'Nummers';

  @override
  String get passwordRuleSpecialCharacter => 'Speciale karakters';

  @override
  String get contactDetails => 'Contact details';

  @override
  String get vehicleDetails => 'Voertuig details';

  @override
  String get payoutInformation => 'Uitbetalingsinformatie';

  @override
  String get documents => 'Documenten';

  @override
  String get accessDenied => 'Toegang geweigerd';

  @override
  String get success => 'Succes';

  @override
  String get skipForNow => 'Overslaan voor nu';

  @override
  String get sendOtpDescription => 'Er is een verificatiecode naar uw telefoonnummer verzonden';

  @override
  String get resendOtp => 'Code nogmaals versturen';

  @override
  String get useOtpInstead => 'Gebruik in plaats daarvan OTP';

  @override
  String get home => 'Thuis';

  @override
  String get logout => 'Uitloggen';

  @override
  String get driverLicenseNumber => 'Rijbewijsnummer';

  @override
  String get email => 'E-mail';

  @override
  String get address => 'Adres';

  @override
  String get gender => 'Geslacht';

  @override
  String get genderMale => 'Mannelijk';

  @override
  String get genderFemale => 'Vrouwelijk';

  @override
  String get genderUnknown => 'Neutraal / Onbekend';

  @override
  String get vehiclePlateNumber => 'Voertuigplaatnummer';

  @override
  String get vehicleColor => 'Voertuigkleur';

  @override
  String get vehicleModelAndMake => 'Voertuigmodel';

  @override
  String get vehicleProductionYear => 'Bouwjaar van voertuig';

  @override
  String get bankName => 'Banknaam';

  @override
  String get bankRoutingNumber => 'Banknummer';

  @override
  String get bankAccountNumber => 'Bankrekeningnummer';

  @override
  String get bankSwift => 'Swift code';

  @override
  String get uploadImage => 'Afbeelding uploaden';

  @override
  String get yourBalance => 'Je balans';

  @override
  String get rideCancellation => 'Ritannulering';

  @override
  String get cancelRideMessage => 'Weet je zeker dat je je rit wilt annuleren?';

  @override
  String get cancelRideSuccess => 'De rit is succesvol geannuleerd';

  @override
  String get confirmAndCancelRide => 'Bevestigen';

  @override
  String get selectPaymentMethod => 'Selecteer betaalmethode';

  @override
  String get rideFeePaid => 'Het ritbedrag is betaald';

  @override
  String get rideFeeUnpaid => 'Het ritbedrag is nog niet betaald';

  @override
  String get total => 'Totaal';

  @override
  String get totalPrice => 'Totale prijs';

  @override
  String get addCustomCredit => 'Aangepaste bewerking toevoegen';

  @override
  String get serviceFee => 'Servicekosten';

  @override
  String get serviceOptionFee => 'Serviceoptiekosten';

  @override
  String get couponDiscount => 'Couponkorting';

  @override
  String get walletCreit => 'Wallet-tegoed';

  @override
  String get custom => 'Aangepast';

  @override
  String get payment => 'Betaling';

  @override
  String get cashPayment => 'Contante betaling';

  @override
  String cashPaymentDescription(String amount) {
    return 'Bevestigt u dat u $amount heeft ontvangen?';
  }

  @override
  String get cashPaymentReceived => 'Contante betaling ontvangen';

  @override
  String get confirmAndEndTrip => 'Bevestigen';

  @override
  String get earnings => 'Inkomsten';

  @override
  String get acceptOrder => 'Bestelling accepteren';

  @override
  String get canceled => 'Geannuleerd';

  @override
  String get unknown => 'Onbekend';

  @override
  String get commission => 'Commissie';

  @override
  String get selectProfileImage => 'Selecteer Profielafbeelding';

  @override
  String get chooseAvatarDescription => 'Of selecteer een avatar uit de onderstaande lijst:';

  @override
  String get fullName => 'Voor-en achternaam';

  @override
  String get favoriteDrivers => 'Favoriete chauffeurs';

  @override
  String get distanceTraveled => 'Afgelegde afstand';

  @override
  String get rating => 'Beoordeling';

  @override
  String get map => 'Kaart';

  @override
  String get income => 'Inkomen';

  @override
  String get timeSpent => 'Tijd besteed';

  @override
  String get daily => 'Dagelijks';

  @override
  String get monthly => 'Maandelijks';

  @override
  String get noRecordsFoundEarnings => 'Er is geen ritrecord gevonden voor deze filters';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Nog geen reacties';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Je hebt nog niet genoeg feedback om te laten zien.';

  @override
  String get feedbacksSummary => 'Feedback Samenvatting';

  @override
  String get feedbacksGoodTitle => 'Uitstekend werk!';

  @override
  String get feedbacksGoodSubtitle => 'Je beoordelingen zien er tot nu toe goed uit';

  @override
  String get feedbacksBadTitle => 'Gemiddeld';

  @override
  String get feedbacksBadSubtitle => 'Je kunt wel wat verbeteringen gebruiken';

  @override
  String get feedbacksGoodPointsTitle => 'Enkele goede punten over jou:';

  @override
  String get feedbacksbadPointsTitle => 'Enkele punten die je kunt verbeteren:';

  @override
  String get feedbacksReviewsTitle => 'Enkele eerdere recensies';

  @override
  String get payoutMethods => 'Uitbetalingsmethoden';

  @override
  String get notice => 'Kennisgeving:';

  @override
  String get payoutNoticeTitle => 'Je wordt automatisch twee keer per week betaald door de beheerder.';

  @override
  String get addPayoutMethod => 'Uitbetalingsmethode toevoegen';

  @override
  String get navigate => 'Navigeren';

  @override
  String get noPayoutMethods => 'Geen uitbetalingsmethoden';

  @override
  String get name => 'Naam';

  @override
  String get nameHint => 'Voer naam in';

  @override
  String get bankNameHint => 'Voer de banknaam in';

  @override
  String get branchName => 'Filiaalnaam';

  @override
  String get branchNameHint => 'Voer de filiaalnaam in';

  @override
  String get accountHolderName => 'Naam rekeninghouder';

  @override
  String get routingNumber => 'Routeringsnummer';

  @override
  String get routingNumberHint => 'Voer het routenummer in';

  @override
  String get accountNumber => 'Rekeningnummer';

  @override
  String get accountNumberHint => 'Voer rekeningnummer in';

  @override
  String get addressHint => 'Adres invoeren';

  @override
  String get dateOfBith => 'Geboortedatum';

  @override
  String get yearHint => 'Jaar';

  @override
  String get monthHint => 'Maand';

  @override
  String get dayHint => 'Dag';

  @override
  String get city => 'Stad';

  @override
  String get cityHint => 'Stad invoeren';

  @override
  String get state => 'Staat';

  @override
  String get stateHint => 'Staat invoeren';

  @override
  String get zipCode => 'Postcode';

  @override
  String get zipCodeHint => 'Vul de zip code in';

  @override
  String get day => 'Dag';

  @override
  String get month => 'Maand';

  @override
  String get year => 'Jaar';

  @override
  String get noActivitiesYet => 'Nog geen activiteiten.';

  @override
  String get headingToDestination => 'op weg naar de bestemming';

  @override
  String get driverArrivedNotice => 'De chauffeur wacht op u';

  @override
  String get driverShouldAriveInNotice => 'Er wordt verwacht dat de chauffeur arriveert';

  @override
  String get driverShouldHaveArrivedNotice => 'De chauffeur zou elk moment kunnen arriveren';

  @override
  String get deleteAccount => 'Account verwijderen';

  @override
  String get deleteAccountNotice => 'Weet u zeker dat u uw account wilt verwijderen? Na 30 dagen wordt uw account definitief verwijderd. Gedurende deze tijd kunt u uw account herstellen door u opnieuw aan te melden.';

  @override
  String get confirmAndDeleteAccount => 'Bevestigen ';

  @override
  String get accountDeleted => 'Account is verwijderd';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Ik ben vanaf $pickup op weg naar $destination.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Mijn chauffeursnaam is $firstName $lastName, het mobiele nummer is $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' De naam van de rijder bij mij is $firstName $lastName, het mobiele nummer is $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' De reis is begonnen op $startTime en ik verwacht dat de reis ongeveer $duration minuten zal duren';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Ik verwacht dat de rit ongeveer $duration minuten zal duren zodra ik in de auto van de bestuurder stap.';
  }

  @override
  String get sendSOSMessage => 'BELANGRIJK: Gebruik deze functie alleen in geval van nood. Wij zullen namens u contact opnemen met de autoriteiten.';

  @override
  String get confirmAndSendSOS => 'Bevestigen ';

  @override
  String get sosSentSuccessfully => 'SOS is succesvol verzonden';

  @override
  String get topUpSuccess => 'Wallet is succesvol opgewaardeerd';

  @override
  String get cancelNotAllowed => 'Annulering van een reeds begonnen rit is niet mogelijk.';

  @override
  String get error => 'Fout';

  @override
  String get connectionError => 'Verbindingsfout';

  @override
  String get serverError => 'Serverfout';

  @override
  String get addNewLocation => 'Nieuwe locatie toevoegen';

  @override
  String get twoWayTrip => 'Tweerichtingsreis';

  @override
  String get reportSubmitted => 'Rapport ingediend';

  @override
  String get reportSubmittedDescription => 'Uw melding is succesvol ingediend, wij zullen deze beoordelen en de nodige acties ondernemen.';

  @override
  String get cardNumber => 'Kaartnummer';

  @override
  String get cardNumberHint => 'Voer kaartnummer in';

  @override
  String get expiryDate => 'Vervaldatum';

  @override
  String get expiryDateHint => 'MM/JJ';

  @override
  String get noFavoriteDrivers => 'Geen favoriete coureurs';

  @override
  String get noFavoriteDriversDescription => 'U kunt uw favoriete chauffeurs als favoriet markeren wanneer u ze na de rit beoordeelt.';

  @override
  String get pickupLocationNotFound => 'We konden uw huidige locatie niet bepalen met behulp van GPS als ophaalpunt. Voer uw ophaalpunt handmatig in.';

  @override
  String get dragToSelect => 'Sleep om te selecteren';

  @override
  String get skip => 'Overslaan';

  @override
  String get openSettings => 'Open instellingen';

  @override
  String get locationPermission => 'Locatie toestemming';

  @override
  String get locationPermissionDeniedForeverMessage => 'Locatietoestemming is een vereiste voor het ontvangen van bestellingen om u heen en ook voor de passagier om uw locatie te volgen. Zonder deze toestemming kunt u geen bestellingen ontvangen en houden wij rekening met uw huidige locatie. U kunt deze toestemming wijzigen in uw telefooninstellingen.';

  @override
  String get allow => 'Toestaan';

  @override
  String get driverOnlineTitle => 'Op zoek naar een ritje';

  @override
  String get driverOfflineTitle => 'Ga online om verzoeken te ontvangen';

  @override
  String get payInCash => 'Contante betaling';

  @override
  String get payInCashDescription => 'Ga verder met de contante betaling aan de chauffeur. De chauffeur bevestigt de betaling zodra deze is ontvangen.';

  @override
  String get addToFavoriteDrivers => 'Toevoegen aan favoriete stuurprogramma\'s';

  @override
  String get slideToConfirmArrival => 'Schuif om aankomst te bevestigen';

  @override
  String get slideToConfirmPickup => 'Schuif om het ophalen te bevestigen';

  @override
  String get slideToConfirmDropoff => 'Schuif om het afleveren te bevestigen';

  @override
  String get noticePickingUpRiderIn => 'De berijder ophalen in:';

  @override
  String get noticeRiderNotified => 'De rijder is op de hoogte gebracht. Haal de rijder op en start de rit';
}
