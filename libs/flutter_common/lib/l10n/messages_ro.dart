import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Romanian Moldavian Moldovan (`ro`).
class SRo extends S {
  SRo([String locale = 'ro']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Toate drepturile rezervate.';
  }

  @override
  String get welcomeTitle => 'Bun venit în aplicație';

  @override
  String get today => 'Astăzi';

  @override
  String get yesterday => 'Ieri';

  @override
  String get settings => 'Setări';

  @override
  String get about => 'Despre';

  @override
  String get profileInfo => 'Informații de profil';

  @override
  String get language => 'Limba';

  @override
  String get firstName => 'Nume';

  @override
  String get lastName => 'Nume';

  @override
  String get mobileNumber => 'Număr de telefon mobil';

  @override
  String get edit => 'Editați | ×';

  @override
  String get enterCode => 'Introdu codul';

  @override
  String get editProfile => 'Editează profilul';

  @override
  String get bankTransfer => 'Transfer bancar';

  @override
  String get gift => 'Cadou';

  @override
  String get correction => 'Corecţie';

  @override
  String get inappPayment => 'Plată în aplicație';

  @override
  String get orderFee => 'Taxa de comanda';

  @override
  String get parkingFee => 'Taxă de parcare';

  @override
  String get cancellationFee => 'Taxă de anulare';

  @override
  String get withdraw => 'Retrage';

  @override
  String get walletTransactions => 'Tranzacții cu portofel';

  @override
  String get addCard => 'Adăugați card';

  @override
  String get visa => 'Visa';

  @override
  String get mastercard => 'MasterCard';

  @override
  String get addBalance => 'Adăugați sold';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Minute',
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
      other: '$hoursString ore',
      one: '$hoursString oră',
      zero: 'Zero hours',
    );
    return 'Durata: $_temp0';
  }

  @override
  String get timePastDue => 'Ulterior';

  @override
  String get justNow => 'Chiar acum';

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
  String get welcomeSubtitle => 'Serviciul de taxi conceput pentru confortul dumneavoastră are Excursii cu șoferii dumneavoastră preferați și selectați preferințele de călătorie';

  @override
  String get onboardingRewardTitle => 'Fii recompensat!';

  @override
  String get onboardingRewardSubtitle => 'Obțineți bonusuri suplimentare pentru recomandarea unui prieten, finalizarea călătoriilor și multe altele...';

  @override
  String get selectLanguage => 'Selecteaza limba';

  @override
  String get searchForLanguage => 'Căutați limba';

  @override
  String get enterPhoneNumber => 'Introduceti numarul de telefon';

  @override
  String get actionContinue => 'Continua';

  @override
  String get whereIsYourDestination => 'Unde este destinația ta?';

  @override
  String get whereAreYouGoing => 'Unde te duci?';

  @override
  String get selectDestinations => 'Traseul tău';

  @override
  String get pickupPoint => 'Punct de ridicare';

  @override
  String get enterPickupPoint => 'Introduceți punctul de preluare';

  @override
  String get dropoffPoint => 'Punct de predare';

  @override
  String get enterDropoffPoint => 'Introduceți punctul de plecare';

  @override
  String get stopPoint => 'Punct de oprire';

  @override
  String get enterStopPoint => 'Introduceți punctul de oprire';

  @override
  String get confirm => 'A confirma';

  @override
  String get confirmDropoff => 'Confirmați renunțarea';

  @override
  String get confirmPickup => 'Confirmați ridicarea';

  @override
  String get enterAtLeast3Characters => 'Introduceți cel puțin 3 caractere';

  @override
  String get noResults => 'Fara rezultate';

  @override
  String get bookNow => 'Rezerva acum';

  @override
  String get cash => 'Bani gheata';

  @override
  String get online => 'Pe net';

  @override
  String get offline => 'Deconectat';

  @override
  String get onTrip => 'In excursie';

  @override
  String get confirmPay => 'A confirma';

  @override
  String get cancel => 'Anulare';

  @override
  String get apply => 'aplica';

  @override
  String get enterCouponCode => 'Introdu codul cuponului';

  @override
  String get reserveRide => 'Rezervați călătoria';

  @override
  String get reserveRideMessage => 'Selectați data și ora exactă la care doriți să fie rezervată călătoria';

  @override
  String get reserveRideMessageSuccess => 'Călătoria dvs. a fost rezervată cu succes. Puteți vizualiza cursele rezervate în secțiunea „Clădiri programate”.';

  @override
  String get cancelReservation => 'Anulați rezervarea';

  @override
  String get confirmResrve => 'A confirma';

  @override
  String get enterCouponDescription => 'Introduceți codul de cupon pentru a fi aplicat prețurilor';

  @override
  String get enterCoupon => 'Introduceți cuponul';

  @override
  String get couponApplied => 'Cupon aplicat';

  @override
  String get couponAppliedDescription => 'Cuponul a fost aplicat tarifului călătoriei dvs';

  @override
  String get done => 'Terminat!';

  @override
  String get ridePreferences => 'Preferințe de călătorie';

  @override
  String get noWaitTime => 'Fără timp de așteptare';

  @override
  String minutesRange(String minutes) {
    return '$minutes minute';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds secunde';
  }

  @override
  String get rideRequested => 'Călătoria solicitată';

  @override
  String get searchingForAnOnlineDriver => 'Se caută un șofer online...';

  @override
  String get cancelRide => 'Anulați călătoria';

  @override
  String get rideSafety => 'Siguranța călătoriei';

  @override
  String get shareTripInformation => 'Partajați informații despre călătorie';

  @override
  String get shareTripInformationDescription => 'Puteți partaja informațiile despre călătoria cu un prieten';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Informați autoritățile despre o urgență';

  @override
  String get reportAnIssue => 'Raportează o problemă';

  @override
  String get reportAnIssueMidTripDescription => 'Distribuiți o problemă de siguranță în timpul călătoriei';

  @override
  String get rideOptions => 'Opțiuni de călătorie';

  @override
  String get goBackToRide => 'Întoarce-te să călărești';

  @override
  String get waitTime => 'Timp de așteptare';

  @override
  String get couponCode => 'Cod cupon';

  @override
  String get giftCardCode => 'Cod card cadou';

  @override
  String get nicePoints => 'Frumoase puncte';

  @override
  String get negativePoints => 'Puncte negative';

  @override
  String get reviewCommentBoxHint => 'Adauga un comentariu...';

  @override
  String get howWasYourTrip => 'Cum a fost călătoria?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Excursie groaznică cu $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Călătorie proastă cu $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Excursie medie cu $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Călătorie bună cu $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Excursie minunată cu $name';
  }

  @override
  String get submitFeedback => 'Trimite parerea ta';

  @override
  String get typeAMessage => 'Scrie un mesaj';

  @override
  String get findAnotherRide => 'Găsiți o altă călătorie';

  @override
  String get next => 'Următorul';

  @override
  String get searchForDropoffLocation => 'Căutați locația de predare';

  @override
  String get searchForPickupLocation => 'Căutați locația de preluare';

  @override
  String get placeConfirmDialogPlaceholder => 'Unde este locația dvs. de predare?';

  @override
  String get noAnnouncements => 'Fara anunturi';

  @override
  String get announcements => 'Anunturi';

  @override
  String reviewsCount(int count) {
    return '($count recenzii)';
  }

  @override
  String get tripDetails => 'Detalii excursie';

  @override
  String get rideDetails => 'Detalii de plimbare';

  @override
  String get orderARide => 'Comandați o plimbare';

  @override
  String get noRidesYet => 'Încă nu există curse!';

  @override
  String get issueSubjectPlaceholder => 'Introduceți subiectul problemei';

  @override
  String get issueContentPlaceholder => 'Introdu descrierea problemei';

  @override
  String get reportThisIssue => 'Raportați această problemă';

  @override
  String get fieldIsRequired => 'Câmpul este obligatoriu';

  @override
  String get ok => 'Bine';

  @override
  String get favoriteLocations => 'Locații preferate';

  @override
  String get favoriteLocationsSubtitle => 'Salvați locațiile preferate pentru un acces mai ușor';

  @override
  String get createAFavoriteLocation => 'Creați o locație preferată';

  @override
  String get addressTitleLabel => 'Titlul adresei';

  @override
  String get clickToSetLocation => 'Faceți clic pentru a seta locația';

  @override
  String get whereIsYourNewFavoriteLocation => 'Unde este noua ta locație preferată?';

  @override
  String get locateFavoriteLocationDescription => 'Utilizați fie caseta de căutare de mai jos, fie harta pentru a fixa locația exactă';

  @override
  String get searchLocation => 'Căutați locația';

  @override
  String get saveChanges => 'Salvează modificările';

  @override
  String get rideHistory => 'Istoricul călătoriilor';

  @override
  String get scheduledRides => 'Plimbări programate';

  @override
  String get keepTheOrder => 'Păstrați ordinea';

  @override
  String get cancelTheRide => 'Anulați călătoria';

  @override
  String get walletBalance => 'Soldul portofelului';

  @override
  String get activities => 'Activități';

  @override
  String get pleaseEnterGiftCardCode => 'Vă rugăm să introduceți codul cardului cadou';

  @override
  String get redeem => 'Răscumpăra';

  @override
  String get enterGiftCardCode => 'Introdu codul cardului cadou';

  @override
  String get redeemGiftCard => 'Valorificați cardul cadou';

  @override
  String get redeemGiftCardDescription => 'Introdu codul cardului cadou pentru a-l valorifica.';

  @override
  String get redeemSuccessTitle => 'Card cadou valorificat!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Ați valorificat cu succes cardul cadou $amount.';
  }

  @override
  String get addCredit => 'Adăugați credit';

  @override
  String get payNow => 'Plătește acum';

  @override
  String get addCreditToWallet => 'Adăugați credit în portofel';

  @override
  String get pleaseSelectAmount => 'Vă rugăm să selectați suma';

  @override
  String get enterAmount => 'Introduceți suma';

  @override
  String get selectAmount => 'Selectați suma:';

  @override
  String get wallet => 'Portofel';

  @override
  String get totalRides => 'Total curse';

  @override
  String get appSettings => 'Setările aplicației';

  @override
  String get mapSettings => 'Setări hărți';

  @override
  String get lanugageSettings => 'Setări de limbaj';

  @override
  String get paymentMethods => 'Metode de plata';

  @override
  String get selectCards => 'Selectați carduri';

  @override
  String get selectCardsDescription => 'Puteți selecta numerele de carduri care doriți să fie afișate în lista metodelor de plată de pe facturi.';

  @override
  String get delete => 'Șterge';

  @override
  String get nameOnCard => 'Numele de pe card';

  @override
  String get profile => 'Profil';

  @override
  String get scheduledRide => 'Plimbare programată';

  @override
  String get addPaymentMethod => 'Adăugați o metodă de plată';

  @override
  String get addPaymentMethodDescription => 'Adăugați o nouă metodă de plată în contul dvs';

  @override
  String get saveCard => 'Salvați cardul';

  @override
  String get selectDialCode => 'Selectați codul de apelare';

  @override
  String get searchCountryName => 'Căutați numele țării';

  @override
  String get preferences => 'Preferințe:';

  @override
  String get onboardingDescription => 'La câteva momente distanță de a vă înregistra contul și de a vă bucura de plimbări confortabile';

  @override
  String get signInSignUp => 'Conecteaza-ta inscrie-te';

  @override
  String get enterOtp => 'Introduceți OTP';

  @override
  String get enterPassword => 'Introdu parola';

  @override
  String get enterPasswordDescription => 'Vă rugăm să introduceți parola pentru a continua';

  @override
  String get setPassword => 'Seteaza parola';

  @override
  String get password => 'Parola';

  @override
  String get passwordRuleDescription => 'Includeți cel puțin două dintre următoarele:';

  @override
  String get passwordRuleLength => 'Între 9 și 64 de caractere';

  @override
  String get passwordRuleUpperCase => 'Litere mari';

  @override
  String get passwordRuleLowerCase => 'Litere mici';

  @override
  String get passwordRuleNumber => 'Numerele';

  @override
  String get passwordRuleSpecialCharacter => 'Personaje speciale';

  @override
  String get contactDetails => 'Detalii de contact';

  @override
  String get vehicleDetails => 'Detalii despre vehicul';

  @override
  String get payoutInformation => 'Informații de plată';

  @override
  String get documents => 'Documente';

  @override
  String get accessDenied => 'Acces interzis';

  @override
  String get success => 'Succes';

  @override
  String get skipForNow => 'Sari peste moment';

  @override
  String get sendOtpDescription => 'Un cod de verificare a fost trimis la numărul dvs. de telefon';

  @override
  String get resendOtp => 'Retrimite codul';

  @override
  String get useOtpInstead => 'Utilizați în schimb OTP';

  @override
  String get home => 'Acasă';

  @override
  String get logout => 'Deconectare';

  @override
  String get driverLicenseNumber => 'Numărul permisului de conducere';

  @override
  String get email => 'E-mail';

  @override
  String get address => 'Abordare';

  @override
  String get gender => 'Gen';

  @override
  String get genderMale => 'Masculin';

  @override
  String get genderFemale => 'Femeie';

  @override
  String get genderUnknown => 'Neutru / Necunoscut';

  @override
  String get vehiclePlateNumber => 'Numărul plăcuței vehiculului';

  @override
  String get vehicleColor => 'Culoare vehicul';

  @override
  String get vehicleModelAndMake => 'Modelul vehiculului';

  @override
  String get vehicleProductionYear => 'Anul producției vehiculului';

  @override
  String get bankName => 'Numele băncii';

  @override
  String get bankRoutingNumber => 'Număr de rutare bancară';

  @override
  String get bankAccountNumber => 'Numarul contului bancar';

  @override
  String get bankSwift => 'Codul SWIFT';

  @override
  String get uploadImage => 'Incarca imaginea';

  @override
  String get yourBalance => 'Echilibrul tau';

  @override
  String get rideCancellation => 'Anularea cursei';

  @override
  String get cancelRideMessage => 'Sigur doriți să anulați călătoria?';

  @override
  String get cancelRideSuccess => 'Călătoria a fost anulată cu succes';

  @override
  String get confirmAndCancelRide => 'A confirma';

  @override
  String get selectPaymentMethod => 'Selecteaza metoda de plata';

  @override
  String get rideFeePaid => 'Taxa de călătorie a fost plătită';

  @override
  String get rideFeeUnpaid => 'Taxa de călătorie nu a fost plătită încă';

  @override
  String get total => 'Total';

  @override
  String get totalPrice => 'Pretul total';

  @override
  String get addCustomCredit => 'Adăugați o redare personalizată';

  @override
  String get serviceFee => 'Taxa de serviciu';

  @override
  String get serviceOptionFee => 'Taxă pentru opțiunea serviciului';

  @override
  String get couponDiscount => 'Reducere cu cupon';

  @override
  String get walletCreit => 'Credit pentru portofel';

  @override
  String get custom => 'Personalizat';

  @override
  String get payment => 'Plată';

  @override
  String get cashPayment => 'Plată în numerar';

  @override
  String cashPaymentDescription(String amount) {
    return 'Confirmați că ați primit $amount?';
  }

  @override
  String get cashPaymentReceived => 'Plată în numerar primită';

  @override
  String get confirmAndEndTrip => 'A confirma';

  @override
  String get earnings => 'Câștiguri';

  @override
  String get acceptOrder => 'Accept comanda';

  @override
  String get canceled => 'Anulat';

  @override
  String get unknown => 'Necunoscut';

  @override
  String get commission => 'Comision';

  @override
  String get selectProfileImage => 'Selectați Imagine de profil';

  @override
  String get chooseAvatarDescription => 'Sau selectați un avatar din lista de mai jos:';

  @override
  String get fullName => 'Numele complet';

  @override
  String get favoriteDrivers => 'Șoferi preferați';

  @override
  String get distanceTraveled => 'Distanta parcursa';

  @override
  String get rating => 'Evaluare';

  @override
  String get map => 'Hartă';

  @override
  String get income => 'Sursa de venit';

  @override
  String get timeSpent => 'Timp petrecut';

  @override
  String get daily => 'Zilnic';

  @override
  String get monthly => 'Lunar';

  @override
  String get noRecordsFoundEarnings => 'Nu a fost găsită nicio înregistrare de călătorie pentru aceste filtre';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Niciun feedback încă';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Încă nu aveți suficiente feedback de afișat.';

  @override
  String get feedbacksSummary => 'Rezumatul feedback-urilor';

  @override
  String get feedbacksGoodTitle => 'Excelent job!';

  @override
  String get feedbacksGoodSubtitle => 'Evaluările tale arată bine până acum';

  @override
  String get feedbacksBadTitle => 'In medie';

  @override
  String get feedbacksBadSubtitle => 'Puteți folosi unele îmbunătățiri';

  @override
  String get feedbacksGoodPointsTitle => 'Câteva puncte bune despre tine:';

  @override
  String get feedbacksbadPointsTitle => 'Câteva puncte pe care le puteți îmbunătăți:';

  @override
  String get feedbacksReviewsTitle => 'Câteva recenzii anterioare';

  @override
  String get payoutMethods => 'Metode de plată';

  @override
  String get notice => 'Înștiințare:';

  @override
  String get payoutNoticeTitle => 'Veți fi plătit automat de către administrator de două ori pe săptămână.';

  @override
  String get addPayoutMethod => 'Adăugați o metodă de plată';

  @override
  String get navigate => 'Navigați';

  @override
  String get noPayoutMethods => 'Fără metode de plată';

  @override
  String get name => 'Nume';

  @override
  String get nameHint => 'Introdu numele';

  @override
  String get bankNameHint => 'Introduceți numele băncii';

  @override
  String get branchName => 'Numele filialei';

  @override
  String get branchNameHint => 'Introduceți numele sucursalei';

  @override
  String get accountHolderName => 'Numele deținătorului contului';

  @override
  String get routingNumber => 'Numărul de rutare';

  @override
  String get routingNumberHint => 'Introduceți numărul de rutare';

  @override
  String get accountNumber => 'Numărul de cont';

  @override
  String get accountNumberHint => 'Introduceți numărul de cont';

  @override
  String get addressHint => 'Introdu adresa';

  @override
  String get dateOfBith => 'Data nașterii';

  @override
  String get yearHint => 'An';

  @override
  String get monthHint => 'Lună';

  @override
  String get dayHint => 'Zi';

  @override
  String get city => 'Oraș';

  @override
  String get cityHint => 'Intrați în oraș';

  @override
  String get state => 'Stat';

  @override
  String get stateHint => 'Introduceți stat';

  @override
  String get zipCode => 'Cod poștal';

  @override
  String get zipCodeHint => 'Introduceti codul postal';

  @override
  String get day => 'Zi';

  @override
  String get month => 'Lună';

  @override
  String get year => 'An';

  @override
  String get noActivitiesYet => 'Nicio activitate încă.';

  @override
  String get headingToDestination => 'îndreptându-se spre destinație';

  @override
  String get driverArrivedNotice => 'Șoferul vă așteaptă';

  @override
  String get driverShouldAriveInNotice => 'Se estimează că va sosi șoferul';

  @override
  String get driverShouldHaveArrivedNotice => 'Șoferul ar trebui să sosească în orice moment acum';

  @override
  String get deleteAccount => 'Șterge cont';

  @override
  String get deleteAccountNotice => 'Sigur doriți să vă ștergeți contul? După 30 de zile, contul tău va fi șters definitiv. În acest timp, vă puteți restabili contul conectându-vă din nou.';

  @override
  String get confirmAndDeleteAccount => 'A confirma';

  @override
  String get accountDeleted => 'Contul a fost șters';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Sunt în drum spre $destination de la $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return 'Numele șoferului meu este $firstName $lastName, numărul de mobil este $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return 'Călărețul cu numele meu este $firstName $lastName, numărul de mobil este $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return 'Călătoria a început pe $startTime și mă aștept ca călătoria să dureze aproximativ $duration minute';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'Mă aștept că călătoria va dura aproximativ $duration minute după ce mă urc în mașina șoferului.';
  }

  @override
  String get sendSOSMessage => 'IMPORTANT: Vă rugăm să utilizați această funcție numai în caz de urgență. Vom contacta autoritățile în numele dvs.';

  @override
  String get confirmAndSendSOS => 'A confirma';

  @override
  String get sosSentSuccessfully => 'SOS a fost trimis cu succes';

  @override
  String get topUpSuccess => 'Portofelul a fost reîncărcat cu succes';

  @override
  String get cancelNotAllowed => 'Anularea unei călătorii deja începute nu este posibilă.';

  @override
  String get error => 'Eroare';

  @override
  String get connectionError => 'Eroare de conexiune';

  @override
  String get serverError => 'Eroare de server';

  @override
  String get addNewLocation => 'Adăugați o nouă locație';

  @override
  String get twoWayTrip => 'Călătorie dus-întors';

  @override
  String get reportSubmitted => 'Raport trimis';

  @override
  String get reportSubmittedDescription => 'Raportul dvs. a fost trimis cu succes, îl vom examina și vom lua măsurile necesare.';

  @override
  String get cardNumber => 'Numărul de card';

  @override
  String get cardNumberHint => 'Introduceți numărul cardului';

  @override
  String get expiryDate => 'Data de expirare';

  @override
  String get expiryDateHint => 'LUNĂ AN';

  @override
  String get noFavoriteDrivers => 'Fără șoferi preferati';

  @override
  String get noFavoriteDriversDescription => 'Puteți marca șoferii dvs. preferați ca favoriți atunci când îi evaluați după călătorie.';

  @override
  String get pickupLocationNotFound => 'Nu am putut determina locația dvs. actuală folosind GPS-ul ca punct de preluare. Vă rugăm să introduceți manual punctul de preluare.';

  @override
  String get dragToSelect => 'Trageți pentru a selecta';

  @override
  String get skip => 'Ocolire';

  @override
  String get openSettings => 'Deschide setările';

  @override
  String get locationPermission => 'Permisiune de locație';

  @override
  String get locationPermissionDeniedForeverMessage => 'Permisiunea de locație este o cerință pentru a primi comenzi în jurul dvs. și, de asemenea, pentru ca călărețul să vă urmărească locația. Nu puteți primi comenzi fără această permisiune și să fim atenți la locația dvs. actuală. Puteți modifica această permisiune în setările telefonului.';

  @override
  String get allow => 'Permite';

  @override
  String get driverOnlineTitle => 'Căutând o plimbare';

  @override
  String get driverOfflineTitle => 'Conectați-vă pentru a începe să primiți solicitări';

  @override
  String get payInCash => 'Plată în numerar';

  @override
  String get payInCashDescription => 'Vă rugăm să continuați cu plata în numerar către șofer. Soferul va confirma plata odata primita.';

  @override
  String get addToFavoriteDrivers => 'Adaugă la driverele favorite';

  @override
  String get slideToConfirmArrival => 'Glisați pentru a confirma sosirea';

  @override
  String get slideToConfirmPickup => 'Glisați pentru a confirma preluarea';

  @override
  String get slideToConfirmDropoff => 'Glisați pentru a confirma renunțarea';

  @override
  String get noticePickingUpRiderIn => 'Ridicarea călărețului în:';

  @override
  String get noticeRiderNotified => 'Călărețul a fost anunțat, ridicați călărețul și începeți călătoria';
}
