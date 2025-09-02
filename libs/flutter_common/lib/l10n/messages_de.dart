import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for German (`de`).
class SDe extends S {
  SDe([String locale = 'de']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Alle Rechte vorbehalten.';
  }

  @override
  String get welcomeTitle => 'Willkommen in der App';

  @override
  String get today => 'Heute';

  @override
  String get yesterday => 'Gestern';

  @override
  String get settings => 'Einstellungen';

  @override
  String get about => 'Um';

  @override
  String get profileInfo => 'Profil Information';

  @override
  String get language => 'Sprache';

  @override
  String get firstName => 'Vorname';

  @override
  String get lastName => 'Familienname, Nachname';

  @override
  String get mobileNumber => 'Handynummer';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get enterCode => 'Code eingeben';

  @override
  String get editProfile => 'Profil bearbeiten';

  @override
  String get bankTransfer => 'Banküberweisung';

  @override
  String get gift => 'Geschenk';

  @override
  String get correction => 'Korrektur';

  @override
  String get inappPayment => 'In-App-Zahlung';

  @override
  String get orderFee => 'Bestellgebühr';

  @override
  String get parkingFee => 'Parkgebühr';

  @override
  String get cancellationFee => 'Stornogebühr';

  @override
  String get withdraw => 'Zurückziehen';

  @override
  String get walletTransactions => 'Wallet-Transaktionen';

  @override
  String get addCard => 'Karte hinzufügen';

  @override
  String get visa => 'Visa';

  @override
  String get mastercard => 'MasterCard';

  @override
  String get addBalance => 'Guthaben hinzufügen';

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
      one: '$minutesString Minute',
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
      other: '$hoursString Stunden',
      one: '$hoursString Stunde',
      zero: 'Zero hours',
    );
    return 'Dauer: $_temp0';
  }

  @override
  String get timePastDue => 'Überfällig';

  @override
  String get justNow => 'Soeben';

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
  String get welcomeSubtitle => 'Der auf Ihren Komfort ausgelegte Taxiservice bietet Fahrten mit Ihren Lieblingsfahrern an und wählt Ihre Fahrpräferenzen aus';

  @override
  String get onboardingRewardTitle => 'Lassen Sie sich belohnen!';

  @override
  String get onboardingRewardSubtitle => 'Erhalten Sie zusätzliche Boni für die Empfehlung eines Freundes, das Abschließen von Reisen und vieles mehr ...';

  @override
  String get selectLanguage => 'Sprache auswählen';

  @override
  String get searchForLanguage => 'Suche nach Sprache';

  @override
  String get enterPhoneNumber => 'Telefonnummer eingeben';

  @override
  String get actionContinue => 'Weitermachen';

  @override
  String get whereIsYourDestination => 'Wo ist Ihr Ziel?';

  @override
  String get whereAreYouGoing => 'Wo gehst du hin?';

  @override
  String get selectDestinations => 'Ihre Route';

  @override
  String get pickupPoint => 'Abholpunkt';

  @override
  String get enterPickupPoint => 'Geben Sie den Abholpunkt ein';

  @override
  String get dropoffPoint => 'Ausladepunkt';

  @override
  String get enterDropoffPoint => 'Geben Sie den Abgabepunkt ein';

  @override
  String get stopPoint => 'Haltepunkt';

  @override
  String get enterStopPoint => 'Haltepunkt eingeben';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get confirmDropoff => 'Bestätigen Sie die Abgabe';

  @override
  String get confirmPickup => 'Bestätigen Sie die Abholung';

  @override
  String get enterAtLeast3Characters => 'Geben Sie mindestens 3 Zeichen ein';

  @override
  String get noResults => 'Keine Ergebnisse';

  @override
  String get bookNow => 'buchen Sie jetzt';

  @override
  String get cash => 'Kasse';

  @override
  String get online => 'Online';

  @override
  String get offline => 'Offline';

  @override
  String get onTrip => 'Auf Reise';

  @override
  String get confirmPay => 'Bestätigen';

  @override
  String get cancel => 'Stornieren';

  @override
  String get apply => 'Anwenden';

  @override
  String get enterCouponCode => 'Gutschein-Code eingeben';

  @override
  String get reserveRide => 'Reservefahrt';

  @override
  String get reserveRideMessage => 'Wählen Sie das genaue Datum und die genaue Uhrzeit aus, zu der Ihre Fahrt reserviert werden soll';

  @override
  String get reserveRideMessageSuccess => 'Ihre Fahrt wurde erfolgreich reserviert. Sie können Ihre reservierten Fahrten im Abschnitt „Geplante Fahrten“ einsehen.';

  @override
  String get cancelReservation => 'Reservierung stornieren';

  @override
  String get confirmResrve => 'Bestätigen';

  @override
  String get enterCouponDescription => 'Geben Sie Ihren Gutscheincode ein, der auf die Preise angewendet werden soll';

  @override
  String get enterCoupon => 'Gutschein eingeben';

  @override
  String get couponApplied => 'Gutschein angewendet';

  @override
  String get couponAppliedDescription => 'Der Gutschein wurde auf den Fahrpreis Ihrer Fahrt angewendet';

  @override
  String get done => 'Erledigt!';

  @override
  String get ridePreferences => 'Fahrpräferenzen';

  @override
  String get noWaitTime => 'Keine Wartezeit';

  @override
  String minutesRange(String minutes) {
    return '$minutes Minuten';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds Sekunden';
  }

  @override
  String get rideRequested => 'Mitfahrt erbeten';

  @override
  String get searchingForAnOnlineDriver => 'Suche nach einem Online-Fahrer...';

  @override
  String get cancelRide => 'Fahrt abbrechen';

  @override
  String get rideSafety => 'Fahrsicherheit';

  @override
  String get shareTripInformation => 'Teilen Sie Reiseinformationen';

  @override
  String get shareTripInformationDescription => 'Sie können Ihre Reiseinformationen mit einem Freund teilen';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Informieren Sie die Behörden über einen Notfall';

  @override
  String get reportAnIssue => 'Ein Problem melden';

  @override
  String get reportAnIssueMidTripDescription => 'Teilen Sie ein Sicherheitsproblem während der Reise mit';

  @override
  String get rideOptions => 'Fahrmöglichkeiten';

  @override
  String get goBackToRide => 'Geh zurück zum Reiten';

  @override
  String get waitTime => 'Wartezeit';

  @override
  String get couponCode => 'Gutscheincode';

  @override
  String get giftCardCode => 'Geschenkkartencode';

  @override
  String get nicePoints => 'Schöne Punkte';

  @override
  String get negativePoints => 'Negative Punkte';

  @override
  String get reviewCommentBoxHint => 'Einen Kommentar hinzufügen...';

  @override
  String get howWasYourTrip => 'Wie war deine Reise?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Schreckliche Reise mit $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Schlechter Trip mit $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Durchschnittliche Fahrt mit $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Gute Reise mit $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Tolle Reise mit $name';
  }

  @override
  String get submitFeedback => 'Feedback abgeben';

  @override
  String get typeAMessage => 'Geben Sie eine Nachricht ein';

  @override
  String get findAnotherRide => 'Finden Sie eine andere Fahrt';

  @override
  String get next => 'Nächste';

  @override
  String get searchForDropoffLocation => 'Nach Abgabeort suchen';

  @override
  String get searchForPickupLocation => 'Nach Abholort suchen';

  @override
  String get placeConfirmDialogPlaceholder => 'Wo ist Ihr Abgabeort?';

  @override
  String get noAnnouncements => 'Keine Ankündigungen';

  @override
  String get announcements => 'Ankündigungen';

  @override
  String reviewsCount(int count) {
    return '($count Bewertungen)';
  }

  @override
  String get tripDetails => 'Reisedetails';

  @override
  String get rideDetails => 'Fahrdetails';

  @override
  String get orderARide => 'Bestellen Sie eine Fahrt';

  @override
  String get noRidesYet => 'Noch keine Fahrten!';

  @override
  String get issueSubjectPlaceholder => 'Geben Sie den Betreff des Problems ein';

  @override
  String get issueContentPlaceholder => 'Geben Sie die Beschreibung des Problems ein';

  @override
  String get reportThisIssue => 'Melden Sie dieses Problem';

  @override
  String get fieldIsRequired => 'Feld ist erforderlich';

  @override
  String get ok => 'OK';

  @override
  String get favoriteLocations => 'Lieblingsorte';

  @override
  String get favoriteLocationsSubtitle => 'Speichern Sie Ihre Lieblingsorte, um den Zugriff zu erleichtern';

  @override
  String get createAFavoriteLocation => 'Erstellen Sie einen Lieblingsort';

  @override
  String get addressTitleLabel => 'Titel der Adresse';

  @override
  String get clickToSetLocation => 'Klicken Sie, um den Standort festzulegen';

  @override
  String get whereIsYourNewFavoriteLocation => 'Wo ist Ihr neuer Lieblingsort?';

  @override
  String get locateFavoriteLocationDescription => 'Verwenden Sie entweder das Suchfeld unten oder die Karte, um den genauen Standort festzulegen';

  @override
  String get searchLocation => 'Standort suchen';

  @override
  String get saveChanges => 'Änderungen speichern';

  @override
  String get rideHistory => 'Fahrgeschichte';

  @override
  String get scheduledRides => 'Geplante Fahrten';

  @override
  String get keepTheOrder => 'Halten Sie die Reihenfolge ein';

  @override
  String get cancelTheRide => 'Brechen Sie die Fahrt ab';

  @override
  String get walletBalance => 'Wallet-Guthaben';

  @override
  String get activities => 'Aktivitäten';

  @override
  String get pleaseEnterGiftCardCode => 'Bitte geben Sie den Geschenkkartencode ein';

  @override
  String get redeem => 'Tilgen';

  @override
  String get enterGiftCardCode => 'Geben Sie den Geschenkkartencode ein';

  @override
  String get redeemGiftCard => 'Geschenkkarte einlösen';

  @override
  String get redeemGiftCardDescription => 'Geben Sie Ihren Geschenkkartencode ein, um ihn einzulösen.';

  @override
  String get redeemSuccessTitle => 'Geschenkkarte eingelöst!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Sie haben die $amount-Geschenkkarte erfolgreich eingelöst.';
  }

  @override
  String get addCredit => 'Guthaben hinzufügen';

  @override
  String get payNow => 'Zahlen Sie jetzt';

  @override
  String get addCreditToWallet => 'Guthaben zur Brieftasche hinzufügen';

  @override
  String get pleaseSelectAmount => 'Bitte Betrag auswählen';

  @override
  String get enterAmount => 'Menge eingeben';

  @override
  String get selectAmount => 'Betrag auswählen:';

  @override
  String get wallet => 'Geldbörse';

  @override
  String get totalRides => 'Gesamtfahrten';

  @override
  String get appSettings => 'App Einstellungen';

  @override
  String get mapSettings => 'Karteneinstellungen';

  @override
  String get lanugageSettings => 'Spracheinstellungen';

  @override
  String get paymentMethods => 'Zahlungsarten';

  @override
  String get selectCards => 'Karten auswählen';

  @override
  String get selectCardsDescription => 'Sie können die Kartennummern auswählen, die in der Liste der Zahlungsarten auf Rechnungen angezeigt werden sollen.';

  @override
  String get delete => 'Löschen';

  @override
  String get nameOnCard => 'Name auf der Karte';

  @override
  String get profile => 'Profil';

  @override
  String get scheduledRide => 'Geplante Fahrt';

  @override
  String get addPaymentMethod => 'Zahlungsmethode hinzufügen';

  @override
  String get addPaymentMethodDescription => 'Fügen Sie Ihrem Konto eine neue Zahlungsmethode hinzu';

  @override
  String get saveCard => 'Karte speichern';

  @override
  String get selectDialCode => 'Vorwahl wählen';

  @override
  String get searchCountryName => 'Ländernamen suchen';

  @override
  String get preferences => 'Präferenzen:';

  @override
  String get onboardingDescription => 'Nur noch wenige Minuten von der Registrierung Ihres Kontos entfernt und genießen Sie komfortable Fahrten';

  @override
  String get signInSignUp => 'Anmelden / Registrieren';

  @override
  String get enterOtp => 'Geben Sie OTP ein';

  @override
  String get enterPassword => 'Passwort eingeben';

  @override
  String get enterPasswordDescription => 'Bitte geben Sie Ihr Passwort, um fortzufahren';

  @override
  String get setPassword => 'Passwort festlegen';

  @override
  String get password => 'Passwort';

  @override
  String get passwordRuleDescription => 'Fügen Sie mindestens zwei der folgenden Elemente hinzu:';

  @override
  String get passwordRuleLength => 'Zwischen 9 und 64 Zeichen';

  @override
  String get passwordRuleUpperCase => 'Großbuchstaben';

  @override
  String get passwordRuleLowerCase => 'Kleinbuchstaben';

  @override
  String get passwordRuleNumber => 'Zahlen';

  @override
  String get passwordRuleSpecialCharacter => 'Spezielle Charaktere';

  @override
  String get contactDetails => 'Kontaktdetails';

  @override
  String get vehicleDetails => 'Fahrzeugangaben';

  @override
  String get payoutInformation => 'Auszahlungsinformationen';

  @override
  String get documents => 'Unterlagen';

  @override
  String get accessDenied => 'Zugriff abgelehnt';

  @override
  String get success => 'Erfolg';

  @override
  String get skipForNow => 'Für jetzt überspringen';

  @override
  String get sendOtpDescription => 'Ein Bestätigungscode wurde an Ihre Telefonnummer gesendet';

  @override
  String get resendOtp => 'Code erneut senden';

  @override
  String get useOtpInstead => 'Verwenden Sie stattdessen OTP';

  @override
  String get home => 'Heim';

  @override
  String get logout => 'Ausloggen';

  @override
  String get driverLicenseNumber => 'Führerscheinnummer';

  @override
  String get email => 'Email';

  @override
  String get address => 'Adresse';

  @override
  String get gender => 'Geschlecht';

  @override
  String get genderMale => 'Männlich';

  @override
  String get genderFemale => 'Weiblich';

  @override
  String get genderUnknown => 'Neutral / Unbekannt';

  @override
  String get vehiclePlateNumber => 'Fahrzeugkennzeichen';

  @override
  String get vehicleColor => 'Fahrzeugfarbe';

  @override
  String get vehicleModelAndMake => 'Fahrzeugmodell';

  @override
  String get vehicleProductionYear => 'Fahrzeugproduktionsjahr';

  @override
  String get bankName => 'Bank Name';

  @override
  String get bankRoutingNumber => 'Bankleitzahl';

  @override
  String get bankAccountNumber => 'Kontonummer';

  @override
  String get bankSwift => 'SWIFT-Code';

  @override
  String get uploadImage => 'Bild hochladen';

  @override
  String get yourBalance => 'Dein Kontostand';

  @override
  String get rideCancellation => 'Stornierung der Fahrt';

  @override
  String get cancelRideMessage => 'Sind Sie sicher, dass Sie Ihre Fahrt stornieren möchten?';

  @override
  String get cancelRideSuccess => 'Die Fahrt wurde erfolgreich abgebrochen';

  @override
  String get confirmAndCancelRide => 'Bestätigen';

  @override
  String get selectPaymentMethod => 'Wählen Sie die Zahlungsmethode';

  @override
  String get rideFeePaid => 'Die Fahrgebühr wurde bezahlt';

  @override
  String get rideFeeUnpaid => 'Die Gebühr für die Fahrt wurde noch nicht bezahlt';

  @override
  String get total => 'Gesamt';

  @override
  String get totalPrice => 'Gesamtpreis';

  @override
  String get addCustomCredit => 'Benutzerdefiniertes Redit hinzufügen';

  @override
  String get serviceFee => 'Servicegebühr';

  @override
  String get serviceOptionFee => 'Serviceoptionsgebühr';

  @override
  String get couponDiscount => 'Coupon-Rabatt';

  @override
  String get walletCreit => 'Wallet-Guthaben';

  @override
  String get custom => 'Brauch';

  @override
  String get payment => 'Zahlung';

  @override
  String get cashPayment => 'Barzahlung';

  @override
  String cashPaymentDescription(String amount) {
    return 'Bestätigen Sie, dass Sie $amount erhalten haben?';
  }

  @override
  String get cashPaymentReceived => 'Barzahlung erhalten';

  @override
  String get confirmAndEndTrip => 'Bestätigen';

  @override
  String get earnings => 'Verdienste';

  @override
  String get acceptOrder => 'Bestellung annehmen';

  @override
  String get canceled => 'Abgesagt';

  @override
  String get unknown => 'Unbekannt';

  @override
  String get commission => 'Kommission';

  @override
  String get selectProfileImage => 'Wählen Sie Profilbild';

  @override
  String get chooseAvatarDescription => 'Oder wählen Sie einen Avatar aus der folgenden Liste aus:';

  @override
  String get fullName => 'Vollständiger Name';

  @override
  String get favoriteDrivers => 'Lieblingsfahrer';

  @override
  String get distanceTraveled => 'Zurückgelegte Strecke';

  @override
  String get rating => 'Bewertung';

  @override
  String get map => 'Karte';

  @override
  String get income => 'Einkommen';

  @override
  String get timeSpent => 'Zeitaufwand';

  @override
  String get daily => 'Täglich';

  @override
  String get monthly => 'Monatlich';

  @override
  String get noRecordsFoundEarnings => 'Für diese Filter wurde kein Reisedatensatz gefunden';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Noch keine Rückmeldungen';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Sie haben noch nicht genügend Rückmeldungen zum Anzeigen.';

  @override
  String get feedbacksSummary => 'Zusammenfassung der Rückmeldungen';

  @override
  String get feedbacksGoodTitle => 'Ausgezeichnete Arbeit!';

  @override
  String get feedbacksGoodSubtitle => 'Ihre Bewertungen sehen bisher gut aus';

  @override
  String get feedbacksBadTitle => 'Durchschnitt';

  @override
  String get feedbacksBadSubtitle => 'Sie können einige Verbesserungen gebrauchen';

  @override
  String get feedbacksGoodPointsTitle => 'Einige gute Punkte über Sie:';

  @override
  String get feedbacksbadPointsTitle => 'Einige Punkte, die Sie verbessern können:';

  @override
  String get feedbacksReviewsTitle => 'Einige frühere Rezensionen';

  @override
  String get payoutMethods => 'Auszahlungsmethoden';

  @override
  String get notice => 'Beachten:';

  @override
  String get payoutNoticeTitle => 'Sie werden vom Administrator automatisch zweimal pro Woche bezahlt.';

  @override
  String get addPayoutMethod => 'Auszahlungsmethode hinzufügen';

  @override
  String get navigate => 'Navigieren';

  @override
  String get noPayoutMethods => 'Keine Auszahlungsmethoden';

  @override
  String get name => 'Name';

  @override
  String get nameHint => 'Name eingeben';

  @override
  String get bankNameHint => 'Geben Sie den Namen der Bank ein';

  @override
  String get branchName => 'Zweigname';

  @override
  String get branchNameHint => 'Geben Sie den Filialnamen ein';

  @override
  String get accountHolderName => 'Name des Kontoinhabers';

  @override
  String get routingNumber => 'Routing-Nummer';

  @override
  String get routingNumberHint => 'Geben Sie die Routing-Nummer ein';

  @override
  String get accountNumber => 'Accountnummer';

  @override
  String get accountNumberHint => 'Geben Sie die Kontonummer ein';

  @override
  String get addressHint => 'Adresse eingeben';

  @override
  String get dateOfBith => 'Geburtsdatum';

  @override
  String get yearHint => 'Jahr';

  @override
  String get monthHint => 'Monat';

  @override
  String get dayHint => 'Tag';

  @override
  String get city => 'Stadt';

  @override
  String get cityHint => 'Stadt betreten';

  @override
  String get state => 'Zustand';

  @override
  String get stateHint => 'Geben Sie den Staat ein';

  @override
  String get zipCode => 'PLZ';

  @override
  String get zipCodeHint => 'Bitte Postleitzahl eingeben';

  @override
  String get day => 'Tag';

  @override
  String get month => 'Monat';

  @override
  String get year => 'Jahr';

  @override
  String get noActivitiesYet => 'Noch keine Aktivitäten.';

  @override
  String get headingToDestination => 'auf dem Weg zum Ziel';

  @override
  String get driverArrivedNotice => 'Der Fahrer wartet auf Sie';

  @override
  String get driverShouldAriveInNotice => 'Der Fahrer wird voraussichtlich eintreffen';

  @override
  String get driverShouldHaveArrivedNotice => 'Der Fahrer sollte jetzt jeden Moment eintreffen';

  @override
  String get deleteAccount => 'Konto löschen';

  @override
  String get deleteAccountNotice => 'Sind Sie sicher, dass Sie Ihr Konto löschen möchten? Nach 30 Tagen wird Ihr Konto dauerhaft gelöscht. Während dieser Zeit können Sie Ihr Konto wiederherstellen, indem Sie sich erneut anmelden.';

  @override
  String get confirmAndDeleteAccount => 'Bestätigen';

  @override
  String get accountDeleted => 'Konto wurde gelöscht';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Ich bin auf dem Weg von $pickup zu $destination.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return 'Mein Fahrername ist $firstName $lastName, die Handynummer ist $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return 'Der Fahrername bei mir ist $firstName $lastName, die Handynummer ist $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return 'Die Fahrt hat am $startTime begonnen und ich gehe davon aus, dass die Fahrt etwa $duration Minuten dauern wird';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'Ich gehe davon aus, dass die Fahrt etwa $duration Minuten dauern wird, sobald ich ins Auto steige.';
  }

  @override
  String get sendSOSMessage => 'WICHTIG: Bitte nutzen Sie diese Funktion nur im Notfall. Wir werden in Ihrem Namen mit den Behörden Kontakt aufnehmen.';

  @override
  String get confirmAndSendSOS => 'Bestätigen';

  @override
  String get sosSentSuccessfully => 'SOS wurde erfolgreich gesendet';

  @override
  String get topUpSuccess => 'Das Guthaben wurde erfolgreich aufgeladen';

  @override
  String get cancelNotAllowed => 'Eine Stornierung einer bereits begonnenen Fahrt ist nicht möglich.';

  @override
  String get error => 'Fehler';

  @override
  String get connectionError => 'Verbindungsfehler';

  @override
  String get serverError => 'Serverfehler';

  @override
  String get addNewLocation => 'Neuen Standort hinzufügen';

  @override
  String get twoWayTrip => 'Hin- und Rückfahrt';

  @override
  String get reportSubmitted => 'Bericht eingereicht';

  @override
  String get reportSubmittedDescription => 'Ihre Meldung wurde erfolgreich übermittelt. Wir werden sie prüfen und die erforderlichen Maßnahmen ergreifen.';

  @override
  String get cardNumber => 'Kartennummer';

  @override
  String get cardNumberHint => 'Kartennummer eingeben';

  @override
  String get expiryDate => 'Verfallsdatum';

  @override
  String get expiryDateHint => 'MM/JJ';

  @override
  String get noFavoriteDrivers => 'Keine Lieblingsfahrer';

  @override
  String get noFavoriteDriversDescription => 'Sie können Ihre bevorzugten Fahrer bei der Bewertung nach der Fahrt als Favoriten markieren.';

  @override
  String get pickupLocationNotFound => 'Wir konnten Ihren aktuellen Standort mithilfe von GPS als Abholpunkt nicht ermitteln. Bitte geben Sie Ihren Abholpunkt manuell ein.';

  @override
  String get dragToSelect => 'Zum Auswählen ziehen';

  @override
  String get skip => 'Überspringen';

  @override
  String get openSettings => 'Einstellungen öffnen';

  @override
  String get locationPermission => 'Standortgenehmigung';

  @override
  String get locationPermissionDeniedForeverMessage => 'Die Standortgenehmigung ist eine Voraussetzung für den Empfang von Bestellungen in Ihrer Nähe und auch für die Verfolgung Ihres Standorts durch den Fahrer. Ohne diese Erlaubnis können Sie keine Bestellungen entgegennehmen und wir achten auf Ihren aktuellen Standort. Sie können diese Berechtigung in Ihren Telefoneinstellungen ändern.';

  @override
  String get allow => 'Erlauben';

  @override
  String get driverOnlineTitle => 'Auf der Suche nach einer Mitfahrgelegenheit';

  @override
  String get driverOfflineTitle => 'Gehen Sie online, um Anfragen zu erhalten';

  @override
  String get payInCash => 'Barzahlung';

  @override
  String get payInCashDescription => 'Bitte führen Sie die Barzahlung an den Fahrer durch. Der Fahrer bestätigt die Zahlung, sobald sie eingegangen ist.';

  @override
  String get addToFavoriteDrivers => 'Zu den Lieblingstreibern hinzufügen';

  @override
  String get slideToConfirmArrival => 'Schieben Sie, um die Ankunft zu bestätigen';

  @override
  String get slideToConfirmPickup => 'Schieben Sie, um die Abholung zu bestätigen';

  @override
  String get slideToConfirmDropoff => 'Schieben Sie, um die Abgabe zu bestätigen';

  @override
  String get noticePickingUpRiderIn => 'Abholung des Fahrers in:';

  @override
  String get noticeRiderNotified => 'Der Fahrer wurde benachrichtigt. Holen Sie den Fahrer ab und beginnen Sie die Fahrt';
}
