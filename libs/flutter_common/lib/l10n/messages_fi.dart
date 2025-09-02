import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Finnish (`fi`).
class SFi extends S {
  SFi([String locale = 'fi']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Kaikki oikeudet pidätetään.';
  }

  @override
  String get welcomeTitle => 'Tervetuloa sovellukseen';

  @override
  String get today => 'Tänään';

  @override
  String get yesterday => 'Eilen';

  @override
  String get settings => 'asetukset';

  @override
  String get about => 'Noin';

  @override
  String get profileInfo => 'Profiilin tiedot';

  @override
  String get language => 'Kieli';

  @override
  String get firstName => 'Etunimi';

  @override
  String get lastName => 'Sukunimi';

  @override
  String get mobileNumber => 'Matkapuhelinnumero';

  @override
  String get edit => 'Muokata';

  @override
  String get enterCode => 'Syötä koodi';

  @override
  String get editProfile => 'Muokkaa profiilia';

  @override
  String get bankTransfer => 'Pankkisiirto';

  @override
  String get gift => 'Lahja';

  @override
  String get correction => 'Korjaus';

  @override
  String get inappPayment => 'Sovelluksen sisäinen maksu';

  @override
  String get orderFee => 'Tilausmaksu';

  @override
  String get parkingFee => 'Pysäköintimaksu';

  @override
  String get cancellationFee => 'Peruutusmaksu';

  @override
  String get withdraw => 'Peruuttaa';

  @override
  String get walletTransactions => 'Lompakkotapahtumat';

  @override
  String get addCard => 'Lisää kortti';

  @override
  String get visa => 'Visa';

  @override
  String get mastercard => 'Mastercard';

  @override
  String get addBalance => 'Lisää saldo';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Minuuttia',
      one: '$minutesString Minuutti',
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
      other: '$hoursString Tuntia',
      one: '$hoursString Tuntia',
      zero: 'Zero hours',
    );
    return 'Kesto: $_temp0';
  }

  @override
  String get timePastDue => 'Erääntynyt';

  @override
  String get justNow => 'Juuri nyt';

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
  String get welcomeSubtitle => 'Mukavuuttasi varten suunniteltu taksipalvelu tarjoaa Matkoja suosikkikuljettajiesi kanssa ja valitse ajomieltymyksesi';

  @override
  String get onboardingRewardTitle => 'Palkitaan!';

  @override
  String get onboardingRewardSubtitle => 'Saat ylimääräisiä bonuksia, kun kutsut ystävääsi, suoritat matkoja ja paljon muuta...';

  @override
  String get selectLanguage => 'Valitse kieli';

  @override
  String get searchForLanguage => 'Etsi kieli';

  @override
  String get enterPhoneNumber => 'Anna puhelinnumero';

  @override
  String get actionContinue => 'Jatkaa';

  @override
  String get whereIsYourDestination => 'Missä on määränpääsi?';

  @override
  String get whereAreYouGoing => 'Minne olet menossa?';

  @override
  String get selectDestinations => 'Sinun reittisi';

  @override
  String get pickupPoint => 'Noutopiste';

  @override
  String get enterPickupPoint => 'Anna noutopiste';

  @override
  String get dropoffPoint => 'Jättöpaikka';

  @override
  String get enterDropoffPoint => 'Anna luovutuspiste';

  @override
  String get stopPoint => 'Pysähdyspiste';

  @override
  String get enterStopPoint => 'Syötä pysähdyspiste';

  @override
  String get confirm => 'Vahvistaa';

  @override
  String get confirmDropoff => 'Vahvista poistuminen';

  @override
  String get confirmPickup => 'Vahvista nouto';

  @override
  String get enterAtLeast3Characters => 'Kirjoita vähintään 3 merkkiä';

  @override
  String get noResults => 'Ei tuloksia';

  @override
  String get bookNow => 'Varaa nyt';

  @override
  String get cash => 'Käteinen raha';

  @override
  String get online => 'verkossa';

  @override
  String get offline => 'Offline-tilassa';

  @override
  String get onTrip => 'Matkalla';

  @override
  String get confirmPay => 'Vahvistaa ';

  @override
  String get cancel => 'Peruuttaa';

  @override
  String get apply => 'Käytä';

  @override
  String get enterCouponCode => 'Syötä kupongin koodi';

  @override
  String get reserveRide => 'Varaa kyyti';

  @override
  String get reserveRideMessage => 'Valitse tarkka päivämäärä ja kellonaika, jolloin haluat kyytisi varattavan';

  @override
  String get reserveRideMessageSuccess => 'Kyytisi on varattu onnistuneesti. Voit katsoa varatut kyytit kohdasta Aikataulutetut ajelut.';

  @override
  String get cancelReservation => 'Peruuta varaus';

  @override
  String get confirmResrve => 'Vahvistaa ';

  @override
  String get enterCouponDescription => 'Syötä kuponkikoodi, jota käytetään hintoihin';

  @override
  String get enterCoupon => 'Anna kuponki';

  @override
  String get couponApplied => 'Kuponki käytetty';

  @override
  String get couponAppliedDescription => 'Kuponki on käytetty matkasi hintaan';

  @override
  String get done => 'Tehty!';

  @override
  String get ridePreferences => 'Ajoasetukset';

  @override
  String get noWaitTime => 'Ei odotusaikaa';

  @override
  String minutesRange(String minutes) {
    return '$minutes minuuttia';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds sekuntia';
  }

  @override
  String get rideRequested => 'Pyydetty kyyti';

  @override
  String get searchingForAnOnlineDriver => 'Etsitään netistä kuljettajaa...';

  @override
  String get cancelRide => 'Peruuta kyyti';

  @override
  String get rideSafety => 'Ajoturvallisuus';

  @override
  String get shareTripInformation => 'Jaa matkatiedot';

  @override
  String get shareTripInformationDescription => 'Voit jakaa matkatietosi ystäväsi kanssa';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Ilmoita viranomaisille hätätilanteesta';

  @override
  String get reportAnIssue => 'Ilmoita ongelma';

  @override
  String get reportAnIssueMidTripDescription => 'Jaa turvallisuusongelma matkan aikana';

  @override
  String get rideOptions => 'Ajovaihtoehdot';

  @override
  String get goBackToRide => 'Mene takaisin ratsastamaan';

  @override
  String get waitTime => 'Odotusaika';

  @override
  String get couponCode => 'Kuponkikoodi';

  @override
  String get giftCardCode => 'Lahjakortin koodi';

  @override
  String get nicePoints => 'Kivoja pointteja';

  @override
  String get negativePoints => 'Negatiiviset pisteet';

  @override
  String get reviewCommentBoxHint => 'Lisää kommentti...';

  @override
  String get howWasYourTrip => 'Miten matkasi meni?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Kamala matka $name:n kanssa';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Huono matka $name:lla';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Keskimääräinen matka $name:lla';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Hyvää matkaa $name:lla';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Mahtava matka $name:n kanssa';
  }

  @override
  String get submitFeedback => 'Antaa palautetta';

  @override
  String get typeAMessage => 'Kirjoita viesti';

  @override
  String get findAnotherRide => 'Etsi toinen kyyti';

  @override
  String get next => 'Seuraava';

  @override
  String get searchForDropoffLocation => 'Hae palautuspaikkaa';

  @override
  String get searchForPickupLocation => 'Etsi noutopaikka';

  @override
  String get placeConfirmDialogPlaceholder => 'Missä on palautuspaikkasi?';

  @override
  String get noAnnouncements => 'Ei ilmoituksia';

  @override
  String get announcements => 'Ilmoitukset';

  @override
  String reviewsCount(int count) {
    return '($count arvostelua)';
  }

  @override
  String get tripDetails => 'Matkan tiedot';

  @override
  String get rideDetails => 'Ajon yksityiskohdat';

  @override
  String get orderARide => 'Tilaa kyyti';

  @override
  String get noRidesYet => 'Ei vielä ajoja!';

  @override
  String get issueSubjectPlaceholder => 'Kirjoita ongelman aihe';

  @override
  String get issueContentPlaceholder => 'Kirjoita ongelman kuvaus';

  @override
  String get reportThisIssue => 'Ilmoita tästä ongelmasta';

  @override
  String get fieldIsRequired => 'Kenttä on pakollinen';

  @override
  String get ok => 'OK';

  @override
  String get favoriteLocations => 'Suosikkipaikat';

  @override
  String get favoriteLocationsSubtitle => 'Tallenna suosikkipaikkasi helpommin pääsyä varten';

  @override
  String get createAFavoriteLocation => 'Luo suosikkipaikka';

  @override
  String get addressTitleLabel => 'Osoitteen otsikko';

  @override
  String get clickToSetLocation => 'Napsauta asettaaksesi sijainti';

  @override
  String get whereIsYourNewFavoriteLocation => 'Missä on uusi suosikkipaikkasi?';

  @override
  String get locateFavoriteLocationDescription => 'Käytä joko alla olevaa hakukenttää tai karttaa määrittääksesi tarkan sijainnin';

  @override
  String get searchLocation => 'Hae sijaintia';

  @override
  String get saveChanges => 'Tallenna muutokset';

  @override
  String get rideHistory => 'Ajohistoria';

  @override
  String get scheduledRides => 'Aikataulutetut ajelut';

  @override
  String get keepTheOrder => 'Pidä järjestys';

  @override
  String get cancelTheRide => 'Peruuta kyyti';

  @override
  String get walletBalance => 'Lompakon saldo';

  @override
  String get activities => 'Aktiviteetit';

  @override
  String get pleaseEnterGiftCardCode => 'Anna lahjakortin koodi';

  @override
  String get redeem => 'Lunastaa';

  @override
  String get enterGiftCardCode => 'Anna lahjakortin koodi';

  @override
  String get redeemGiftCard => 'Lunasta lahjakortti';

  @override
  String get redeemGiftCardDescription => 'Anna lahjakorttisi koodi lunastaaksesi sen.';

  @override
  String get redeemSuccessTitle => 'Lahjakortti lunastettu!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Olet lunastanut $amount lahjakortin onnistuneesti.';
  }

  @override
  String get addCredit => 'Lisää luottoa';

  @override
  String get payNow => 'Maksa nyt';

  @override
  String get addCreditToWallet => 'Lisää luottoa lompakkoon';

  @override
  String get pleaseSelectAmount => 'Valitse summa';

  @override
  String get enterAmount => 'Syötä summa';

  @override
  String get selectAmount => 'Valitse summa:';

  @override
  String get wallet => 'Lompakko';

  @override
  String get totalRides => 'Ajoja yhteensä';

  @override
  String get appSettings => 'Sovellusasetukset';

  @override
  String get mapSettings => 'Kartta-asetukset';

  @override
  String get lanugageSettings => 'Kieliasetukset';

  @override
  String get paymentMethods => 'Maksutavat';

  @override
  String get selectCards => 'Valitse kortit';

  @override
  String get selectCardsDescription => 'Voit valita korttien numerot, jotka haluat näkyvän laskujen maksutapaluettelossa.';

  @override
  String get delete => 'Poistaa';

  @override
  String get nameOnCard => 'Nimi kortissa';

  @override
  String get profile => 'Profiili';

  @override
  String get scheduledRide => 'Aikataulutettu matka';

  @override
  String get addPaymentMethod => 'Lisää maksutapa';

  @override
  String get addPaymentMethodDescription => 'Lisää tilillesi uusi maksutapa';

  @override
  String get saveCard => 'Tallenna kortti';

  @override
  String get selectDialCode => 'Valitse valintakoodi';

  @override
  String get searchCountryName => 'Hae maan nimeä';

  @override
  String get preferences => 'Asetukset:';

  @override
  String get onboardingDescription => 'Hetken päässä tilisi rekisteröimisestä ja mukavista kyydistä nauttimisesta';

  @override
  String get signInSignUp => 'Kirjaudu Rekisteröidy';

  @override
  String get enterOtp => 'Anna OTP';

  @override
  String get enterPassword => 'Kirjoita salasana';

  @override
  String get enterPasswordDescription => 'Anna salasanasi jatkaaksesi';

  @override
  String get setPassword => 'Aseta salasana';

  @override
  String get password => 'Salasana';

  @override
  String get passwordRuleDescription => 'Sisällytä vähintään kaksi seuraavista:';

  @override
  String get passwordRuleLength => '9-64 merkkiä';

  @override
  String get passwordRuleUpperCase => 'Isot kirjaimet';

  @override
  String get passwordRuleLowerCase => 'Pienet kirjaimet';

  @override
  String get passwordRuleNumber => 'Numerot';

  @override
  String get passwordRuleSpecialCharacter => 'Erikoismerkit';

  @override
  String get contactDetails => 'Yhteystiedot';

  @override
  String get vehicleDetails => 'Ajoneuvon tiedot';

  @override
  String get payoutInformation => 'Maksutiedot';

  @override
  String get documents => 'Asiakirjat';

  @override
  String get accessDenied => 'Pääsy evätty';

  @override
  String get success => 'Menestys';

  @override
  String get skipForNow => 'Ohita nyt';

  @override
  String get sendOtpDescription => 'Vahvistuskoodi on lähetetty puhelinnumeroosi';

  @override
  String get resendOtp => 'Lähetä koodi uudelleen';

  @override
  String get useOtpInstead => 'Käytä sen sijaan OTP:tä';

  @override
  String get home => 'Koti';

  @override
  String get logout => 'Kirjautua ulos';

  @override
  String get driverLicenseNumber => 'Ajokorttinumero';

  @override
  String get email => 'Sähköposti';

  @override
  String get address => 'Osoite';

  @override
  String get gender => 'Sukupuoli';

  @override
  String get genderMale => 'Uros';

  @override
  String get genderFemale => 'Nainen';

  @override
  String get genderUnknown => 'Neutraali / Tuntematon';

  @override
  String get vehiclePlateNumber => 'Ajoneuvon rekisterinumero';

  @override
  String get vehicleColor => 'Ajoneuvon väri';

  @override
  String get vehicleModelAndMake => 'Ajoneuvon malli ';

  @override
  String get vehicleProductionYear => 'Ajoneuvon valmistusvuosi';

  @override
  String get bankName => 'Pankin nimi';

  @override
  String get bankRoutingNumber => 'Pankin reititysnumero';

  @override
  String get bankAccountNumber => 'Pankkitilin numero';

  @override
  String get bankSwift => 'Swift-koodi';

  @override
  String get uploadImage => 'Lataa kuva';

  @override
  String get yourBalance => 'Tasapainosi';

  @override
  String get rideCancellation => 'Matkan peruutus';

  @override
  String get cancelRideMessage => 'Haluatko varmasti peruuttaa kyydin?';

  @override
  String get cancelRideSuccess => 'Matka on peruutettu onnistuneesti';

  @override
  String get confirmAndCancelRide => 'Vahvistaa ';

  @override
  String get selectPaymentMethod => 'Valitse maksutapa';

  @override
  String get rideFeePaid => 'Matkamaksu on maksettu';

  @override
  String get rideFeeUnpaid => 'Matkamaksua ei ole vielä maksettu';

  @override
  String get total => 'Kaikki yhteensä';

  @override
  String get totalPrice => 'Kokonaishinta';

  @override
  String get addCustomCredit => 'Lisää mukautettu muokkaus';

  @override
  String get serviceFee => 'Palvelumaksu';

  @override
  String get serviceOptionFee => 'Palveluoptiomaksu';

  @override
  String get couponDiscount => 'Kuponki alennus';

  @override
  String get walletCreit => 'Lompakon luotto';

  @override
  String get custom => 'Mukautettu';

  @override
  String get payment => 'Maksu';

  @override
  String get cashPayment => 'Käteismaksu';

  @override
  String cashPaymentDescription(String amount) {
    return 'Vahvistatko, että sait $amount?';
  }

  @override
  String get cashPaymentReceived => 'Käteismaksu vastaanotettu';

  @override
  String get confirmAndEndTrip => 'Vahvistaa ';

  @override
  String get earnings => 'Tulot';

  @override
  String get acceptOrder => 'Hyväksy tilaus';

  @override
  String get canceled => 'Peruutettu';

  @override
  String get unknown => 'Tuntematon';

  @override
  String get commission => 'komissio';

  @override
  String get selectProfileImage => 'Valitse Profiilikuva';

  @override
  String get chooseAvatarDescription => 'Tai valitse avatar alla olevasta luettelosta:';

  @override
  String get fullName => 'Koko nimi';

  @override
  String get favoriteDrivers => 'Suosikkikuljettajat';

  @override
  String get distanceTraveled => 'Kuljettu matka';

  @override
  String get rating => 'Luokitus';

  @override
  String get map => 'Kartta';

  @override
  String get income => 'Tulo';

  @override
  String get timeSpent => 'Käytetty aika';

  @override
  String get daily => 'Päivittäin';

  @override
  String get monthly => 'Kuukausittain';

  @override
  String get noRecordsFoundEarnings => 'Näille suodattimille ei löytynyt matkatietuetta';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Ei vielä palautetta';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Sinulla ei ole vielä tarpeeksi palautetta näytettäväksi.';

  @override
  String get feedbacksSummary => 'Palautteiden yhteenveto';

  @override
  String get feedbacksGoodTitle => 'Erinomaista työtä!';

  @override
  String get feedbacksGoodSubtitle => 'Arvosanasi näyttävät toistaiseksi hyviltä';

  @override
  String get feedbacksBadTitle => 'Keskiverto';

  @override
  String get feedbacksBadSubtitle => 'Voit käyttää joitain parannuksia';

  @override
  String get feedbacksGoodPointsTitle => 'Muutamia hyviä pointteja sinusta:';

  @override
  String get feedbacksbadPointsTitle => 'Joitakin kohtia, joita voit parantaa:';

  @override
  String get feedbacksReviewsTitle => 'Muutama aikaisempi arvostelu';

  @override
  String get payoutMethods => 'Maksutavat';

  @override
  String get notice => 'Ilmoitus:';

  @override
  String get payoutNoticeTitle => 'Järjestelmänvalvoja maksaa sinulle automaattisesti kaksi kertaa viikossa.';

  @override
  String get addPayoutMethod => 'Lisää maksutapa';

  @override
  String get navigate => 'Navigoida';

  @override
  String get noPayoutMethods => 'Ei maksutapoja';

  @override
  String get name => 'Nimi';

  @override
  String get nameHint => 'Kirjoita nimi';

  @override
  String get bankNameHint => 'Anna pankin nimi';

  @override
  String get branchName => 'Sivukonttorin nimi';

  @override
  String get branchNameHint => 'Anna sivuliikkeen nimi';

  @override
  String get accountHolderName => 'Tilinhaltijan nimi';

  @override
  String get routingNumber => 'Reititysnumero';

  @override
  String get routingNumberHint => 'Syötä reititysnumero';

  @override
  String get accountNumber => 'Tilinumero';

  @override
  String get accountNumberHint => 'Syötä tilinumero';

  @override
  String get addressHint => 'Anna osoite';

  @override
  String get dateOfBith => 'Syntymäaika';

  @override
  String get yearHint => 'vuosi';

  @override
  String get monthHint => 'Kuukausi';

  @override
  String get dayHint => 'Päivä';

  @override
  String get city => 'Kaupunki';

  @override
  String get cityHint => 'Anna kaupunki';

  @override
  String get state => 'Osavaltio';

  @override
  String get stateHint => 'Anna osavaltio';

  @override
  String get zipCode => 'Postinumero';

  @override
  String get zipCodeHint => 'Anna postinumero';

  @override
  String get day => 'Päivä';

  @override
  String get month => 'Kuukausi';

  @override
  String get year => 'vuosi';

  @override
  String get noActivitiesYet => 'Ei aktiviteetteja vielä.';

  @override
  String get headingToDestination => 'matkalla määränpäähän';

  @override
  String get driverArrivedNotice => 'Kuljettaja odottaa sinua';

  @override
  String get driverShouldAriveInNotice => 'Kuljettajan odotetaan saapuvan paikalle';

  @override
  String get driverShouldHaveArrivedNotice => 'Kuljettajan pitäisi olla perillä minä hetkenä hyvänsä';

  @override
  String get deleteAccount => 'Poista tili';

  @override
  String get deleteAccountNotice => 'Haluatko varmasti poistaa tilisi? 30 päivän kuluttua tilisi poistetaan pysyvästi. Tänä aikana voit palauttaa tilisi kirjautumalla uudelleen sisään.';

  @override
  String get confirmAndDeleteAccount => 'Vahvistaa ';

  @override
  String get accountDeleted => 'Tili on poistettu';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Olen matkalla kohti $destination alkaen $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Kuljettajan nimi on $firstName $lastName, matkapuhelinnumero on $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' Minun kanssani olevan ratsastajan nimi on $firstName $lastName, matkapuhelinnumero on $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Matka on alkanut $startTime ja odotan matkan kestävän noin $duration minuuttia';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Odotan matkan kestävän noin $duration minuuttia, kun pääsen kuljettajan autoon.';
  }

  @override
  String get sendSOSMessage => 'TÄRKEÄÄ: Käytä tätä ominaisuutta vain hätätapauksissa. Otamme puolestasi yhteyttä viranomaisiin.';

  @override
  String get confirmAndSendSOS => 'Vahvistaa ';

  @override
  String get sosSentSuccessfully => 'SOS on lähetetty onnistuneesti';

  @override
  String get topUpSuccess => 'Lompakko on lisätty onnistuneesti';

  @override
  String get cancelNotAllowed => 'Jo alkaneen matkan peruuttaminen ei ole mahdollista.';

  @override
  String get error => 'Virhe';

  @override
  String get connectionError => 'Yhteysvirhe';

  @override
  String get serverError => 'Palvelinvirhe';

  @override
  String get addNewLocation => 'Lisää uusi sijainti';

  @override
  String get twoWayTrip => 'Kaksisuuntainen matka';

  @override
  String get reportSubmitted => 'Raportti lähetetty';

  @override
  String get reportSubmittedDescription => 'Raporttisi on lähetetty onnistuneesti, tarkistamme sen ja ryhdymme tarvittaviin toimiin.';

  @override
  String get cardNumber => 'Kortin numero';

  @override
  String get cardNumberHint => 'Syötä kortin numero';

  @override
  String get expiryDate => 'Päättymispäivä';

  @override
  String get expiryDateHint => 'KK/VV';

  @override
  String get noFavoriteDrivers => 'Ei suosikkikuljettajia';

  @override
  String get noFavoriteDriversDescription => 'Voit merkitä haluamasi kuljettajat suosikeiksi arvioidessasi niitä matkan jälkeen.';

  @override
  String get pickupLocationNotFound => 'Emme pystyneet määrittämään nykyistä sijaintiasi käyttämällä GPS:ää noutopisteenä. Anna noutopiste manuaalisesti.';

  @override
  String get dragToSelect => 'Valitse vetämällä';

  @override
  String get skip => 'Ohita';

  @override
  String get openSettings => 'Avaa asetukset';

  @override
  String get locationPermission => 'Sijaintilupa';

  @override
  String get locationPermissionDeniedForeverMessage => 'Sijaintilupa on edellytys tilausten vastaanottamiselle ympärilläsi ja myös sille, että ratsastaja voi seurata sijaintiasi. Et voi vastaanottaa tilauksia ilman tätä lupaa, ja varomme nykyistä sijaintiasi. Voit muuttaa tätä lupaa puhelimen asetuksista.';

  @override
  String get allow => 'Sallia';

  @override
  String get driverOnlineTitle => 'Kyytiä etsimässä';

  @override
  String get driverOfflineTitle => 'Ota yhteyttä verkkoon aloittaaksesi pyyntöjen vastaanottamisen';

  @override
  String get payInCash => 'Käteismaksu';

  @override
  String get payInCashDescription => 'Jatka käteismaksua kuljettajalle. Kuljettaja vahvistaa maksun saatuaan.';

  @override
  String get addToFavoriteDrivers => 'Lisää suosikkiajureihin';

  @override
  String get slideToConfirmArrival => 'Vahvista saapuminen liu\'uttamalla';

  @override
  String get slideToConfirmPickup => 'Vahvista nouto liu\'uttamalla';

  @override
  String get slideToConfirmDropoff => 'Vahvista poistuminen liu\'uttamalla';

  @override
  String get noticePickingUpRiderIn => 'Ratsastajan nouto:';

  @override
  String get noticeRiderNotified => 'Ratsastajalle on ilmoitettu, ota ratsastaja ja aloita matka';
}
