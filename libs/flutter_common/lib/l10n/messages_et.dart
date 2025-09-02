import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Estonian (`et`).
class SEt extends S {
  SEt([String locale = 'et']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Autoriõigus © $company, kõik õigused kaitstud.';
  }

  @override
  String get welcomeTitle => 'Tere tulemast rakendusse';

  @override
  String get today => 'Täna';

  @override
  String get yesterday => 'eile';

  @override
  String get settings => 'Seaded';

  @override
  String get about => 'Umbes';

  @override
  String get profileInfo => 'Profiili teave';

  @override
  String get language => 'Keel';

  @override
  String get firstName => 'Eesnimi';

  @override
  String get lastName => 'Perekonnanimi';

  @override
  String get mobileNumber => 'Mobiili number';

  @override
  String get edit => 'Muuda';

  @override
  String get enterCode => 'Sisestage kood';

  @override
  String get editProfile => 'Muuda profiili';

  @override
  String get bankTransfer => 'Pangaülekanne';

  @override
  String get gift => 'Kingitus';

  @override
  String get correction => 'Parandus';

  @override
  String get inappPayment => 'Rakendusesisene makse';

  @override
  String get orderFee => 'Tellimuse tasu';

  @override
  String get parkingFee => 'Parkimistasu';

  @override
  String get cancellationFee => 'Tühistamise tasu';

  @override
  String get withdraw => 'Tõmba tagasi';

  @override
  String get walletTransactions => 'Rahakotitehingud';

  @override
  String get addCard => 'Lisa kaart';

  @override
  String get visa => 'Visa';

  @override
  String get mastercard => 'Mastercard';

  @override
  String get addBalance => 'Lisa tasakaalu';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString minutit',
      one: '$minutesString minutit',
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
      other: '$hoursString tundi',
      one: '$hoursString tund',
      zero: 'Zero hours',
    );
    return 'Kestus: $_temp0';
  }

  @override
  String get timePastDue => 'Tähtaeg ületatud';

  @override
  String get justNow => 'Just praegu';

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
  String get welcomeSubtitle => 'Teie mugavuse tagamiseks loodud taksoteenusel on reisid teie lemmikjuhtidega ja saate valida oma sõidueelistused';

  @override
  String get onboardingRewardTitle => 'Saa preemiat!';

  @override
  String get onboardingRewardSubtitle => 'Saate lisaboonuseid sõbra suunamise, reiside lõpetamise ja palju muu eest...';

  @override
  String get selectLanguage => 'Vali keel';

  @override
  String get searchForLanguage => 'Otsige keelt';

  @override
  String get enterPhoneNumber => 'Sisesta telefoninumber';

  @override
  String get actionContinue => 'Jätka';

  @override
  String get whereIsYourDestination => 'Kus on teie sihtkoht?';

  @override
  String get whereAreYouGoing => 'Kuhu sa lähed?';

  @override
  String get selectDestinations => 'Teie marsruut';

  @override
  String get pickupPoint => 'Vastuvõtupunkt';

  @override
  String get enterPickupPoint => 'Sisestage kättesaamise koht';

  @override
  String get dropoffPoint => 'Lahkumiskoht';

  @override
  String get enterDropoffPoint => 'Sisestage väljumiskoht';

  @override
  String get stopPoint => 'Peatuspunkt';

  @override
  String get enterStopPoint => 'Sisestage peatuspunkt';

  @override
  String get confirm => 'Kinnita';

  @override
  String get confirmDropoff => 'Kinnitage mahaminek';

  @override
  String get confirmPickup => 'Kinnitage pealevõtmine';

  @override
  String get enterAtLeast3Characters => 'Sisestage vähemalt 3 tähemärki';

  @override
  String get noResults => 'Tulemused puuduvad';

  @override
  String get bookNow => 'Broneeri kohe';

  @override
  String get cash => 'sularaha';

  @override
  String get online => 'Internetis';

  @override
  String get offline => 'Võrguühenduseta';

  @override
  String get onTrip => 'Reisil';

  @override
  String get confirmPay => 'Kinnita ';

  @override
  String get cancel => 'Tühista';

  @override
  String get apply => 'Rakenda';

  @override
  String get enterCouponCode => 'Sisestage kupongi kood';

  @override
  String get reserveRide => 'Reservsõit';

  @override
  String get reserveRideMessage => 'Valige täpne kuupäev ja kellaaeg, millal soovite oma sõidu broneerida';

  @override
  String get reserveRideMessageSuccess => 'Teie sõit on edukalt reserveeritud. Broneeritud sõite saate vaadata jaotises \"Praanilised sõidud\".';

  @override
  String get cancelReservation => 'Tühista broneering';

  @override
  String get confirmResrve => 'Kinnita ';

  @override
  String get enterCouponDescription => 'Sisestage oma kupongikood, mida hinnale rakendada';

  @override
  String get enterCoupon => 'Sisesta kupong';

  @override
  String get couponApplied => 'Kupong rakendatud';

  @override
  String get couponAppliedDescription => 'Teie sõiduhinnale on lisatud kupong';

  @override
  String get done => 'Valmis!';

  @override
  String get ridePreferences => 'Sõidueelistused';

  @override
  String get noWaitTime => 'Ei mingit ooteaega';

  @override
  String minutesRange(String minutes) {
    return '$minutes minutit';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds sekundit';
  }

  @override
  String get rideRequested => 'Soovitud sõita';

  @override
  String get searchingForAnOnlineDriver => 'Internetis draiveri otsimine...';

  @override
  String get cancelRide => 'Tühista sõit';

  @override
  String get rideSafety => 'Sõiduohutus';

  @override
  String get shareTripInformation => 'Jaga reisiteavet';

  @override
  String get shareTripInformationDescription => 'Saate oma reisiteavet sõbraga jagada';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Teatage võimudele hädaolukorrast';

  @override
  String get reportAnIssue => 'Teatage probleemist';

  @override
  String get reportAnIssueMidTripDescription => 'Jagage reisil ohutusprobleemi';

  @override
  String get rideOptions => 'Sõiduvõimalused';

  @override
  String get goBackToRide => 'Mine tagasi sõitma';

  @override
  String get waitTime => 'Oota aega';

  @override
  String get couponCode => 'Kupongi kood';

  @override
  String get giftCardCode => 'Kinkekaardi kood';

  @override
  String get nicePoints => 'Toredad punktid';

  @override
  String get negativePoints => 'Negatiivsed punktid';

  @override
  String get reviewCommentBoxHint => 'Lisa kommentaar...';

  @override
  String get howWasYourTrip => 'Kuidas su reis läks?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Kohutav reis $name-ga';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Halb reis $name-ga';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Keskmine reis $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Head reisi $name-ga';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Äge reis $name-ga';
  }

  @override
  String get submitFeedback => 'Esitage tagasisidet';

  @override
  String get typeAMessage => 'Sisestage sõnum';

  @override
  String get findAnotherRide => 'Leia teine sõit';

  @override
  String get next => 'Edasi';

  @override
  String get searchForDropoffLocation => 'Otsige mahasõidu asukohta';

  @override
  String get searchForPickupLocation => 'Otsige pealevõtmise asukohta';

  @override
  String get placeConfirmDialogPlaceholder => 'Kus on teie mahajätmise koht?';

  @override
  String get noAnnouncements => 'Ei mingeid teateid';

  @override
  String get announcements => 'Teated';

  @override
  String reviewsCount(int count) {
    return '($count arvustust)';
  }

  @override
  String get tripDetails => 'Reisi üksikasjad';

  @override
  String get rideDetails => 'Sõidu üksikasjad';

  @override
  String get orderARide => 'Telli sõit';

  @override
  String get noRidesYet => 'Pole veel sõite!';

  @override
  String get issueSubjectPlaceholder => 'Tippige väljaande teema';

  @override
  String get issueContentPlaceholder => 'Tippige probleemi kirjeldus';

  @override
  String get reportThisIssue => 'Teatage sellest probleemist';

  @override
  String get fieldIsRequired => 'Väli on kohustuslik';

  @override
  String get ok => 'Okei';

  @override
  String get favoriteLocations => 'Lemmikkohad';

  @override
  String get favoriteLocationsSubtitle => 'Lihtsamaks juurdepääsuks salvestage oma lemmikkohad';

  @override
  String get createAFavoriteLocation => 'Looge lemmikkoht';

  @override
  String get addressTitleLabel => 'Aadressi pealkiri';

  @override
  String get clickToSetLocation => 'Klõpsake asukoha määramiseks';

  @override
  String get whereIsYourNewFavoriteLocation => 'Kus on teie uus lemmikkoht?';

  @override
  String get locateFavoriteLocationDescription => 'Täpse asukoha kinnitamiseks kasutage allolevat otsingukasti või kaarti';

  @override
  String get searchLocation => 'Otsi asukohta';

  @override
  String get saveChanges => 'Salvesta muudatused';

  @override
  String get rideHistory => 'Sõiduajalugu';

  @override
  String get scheduledRides => 'Plaanilised sõidud';

  @override
  String get keepTheOrder => 'Hoidke tellimust';

  @override
  String get cancelTheRide => 'Tühista sõit';

  @override
  String get walletBalance => 'Rahakoti saldo';

  @override
  String get activities => 'Tegevused';

  @override
  String get pleaseEnterGiftCardCode => 'Palun sisesta kinkekaardi kood';

  @override
  String get redeem => 'Lunastama';

  @override
  String get enterGiftCardCode => 'Sisesta kinkekaardi kood';

  @override
  String get redeemGiftCard => 'Lunasta kinkekaart';

  @override
  String get redeemGiftCardDescription => 'Sisestage oma kinkekaardi kood selle lunastamiseks.';

  @override
  String get redeemSuccessTitle => 'Kinkekaart lunastatud!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Olete edukalt lunastanud $amount kinkekaardi.';
  }

  @override
  String get addCredit => 'Lisa krediiti';

  @override
  String get payNow => 'Maksa nüüd';

  @override
  String get addCreditToWallet => 'Lisage rahakotile krediiti';

  @override
  String get pleaseSelectAmount => 'Valige summa';

  @override
  String get enterAmount => 'Sisestage summa';

  @override
  String get selectAmount => 'Vali summa:';

  @override
  String get wallet => 'Rahakott';

  @override
  String get totalRides => 'Kokku sõite';

  @override
  String get appSettings => 'Rakenduse seaded';

  @override
  String get mapSettings => 'Kaardi seaded';

  @override
  String get lanugageSettings => 'Keele sätted';

  @override
  String get paymentMethods => 'Makseviisid';

  @override
  String get selectCards => 'Valige kaardid';

  @override
  String get selectCardsDescription => 'Saate valida, milliseid kaardinumbreid soovite arvetel makseviiside loendis kuvada.';

  @override
  String get delete => 'Kustuta';

  @override
  String get nameOnCard => 'nimi kaardil';

  @override
  String get profile => 'Profiil';

  @override
  String get scheduledRide => 'Plaaniline sõit';

  @override
  String get addPaymentMethod => 'Lisa makseviis';

  @override
  String get addPaymentMethodDescription => 'Lisage oma kontole uus makseviis';

  @override
  String get saveCard => 'Salvesta kaart';

  @override
  String get selectDialCode => 'Valige valimiskood';

  @override
  String get searchCountryName => 'Otsi riigi nime';

  @override
  String get preferences => 'Eelistused:';

  @override
  String get onboardingDescription => 'Mõne hetke kaugusel on konto registreerimine ja mugavate sõitude nautimine';

  @override
  String get signInSignUp => 'Logi sisse / registreeru';

  @override
  String get enterOtp => 'Sisestage OTP';

  @override
  String get enterPassword => 'Sisestage parool';

  @override
  String get enterPasswordDescription => 'Jätkamiseks sisestage oma parool';

  @override
  String get setPassword => 'Määra parool';

  @override
  String get password => 'Parool';

  @override
  String get passwordRuleDescription => 'Kaasake vähemalt kaks järgmistest:';

  @override
  String get passwordRuleLength => '9–64 tähemärki';

  @override
  String get passwordRuleUpperCase => 'Suurtähed';

  @override
  String get passwordRuleLowerCase => 'Väikesed tähed';

  @override
  String get passwordRuleNumber => 'Numbrid';

  @override
  String get passwordRuleSpecialCharacter => 'Eritegelased';

  @override
  String get contactDetails => 'Kontaktandmed';

  @override
  String get vehicleDetails => 'Sõiduki üksikasjad';

  @override
  String get payoutInformation => 'Väljamaksete teave';

  @override
  String get documents => 'Dokumendid';

  @override
  String get accessDenied => 'Ligipääs keelatud';

  @override
  String get success => 'Edu';

  @override
  String get skipForNow => 'Jäta praegu vahele';

  @override
  String get sendOtpDescription => 'Teie telefoninumbrile on saadetud kinnituskood';

  @override
  String get resendOtp => 'Saada kood uuesti';

  @override
  String get useOtpInstead => 'Kasutage selle asemel OTP-d';

  @override
  String get home => 'Kodu';

  @override
  String get logout => 'Logi välja';

  @override
  String get driverLicenseNumber => 'Juhiloa number';

  @override
  String get email => 'E-post';

  @override
  String get address => 'Aadress';

  @override
  String get gender => 'Sugu';

  @override
  String get genderMale => 'Mees';

  @override
  String get genderFemale => 'Naine';

  @override
  String get genderUnknown => 'Neutraalne / tundmatu';

  @override
  String get vehiclePlateNumber => 'Sõiduki numbrimärk';

  @override
  String get vehicleColor => 'Sõiduki värv';

  @override
  String get vehicleModelAndMake => 'Sõiduki mudel ';

  @override
  String get vehicleProductionYear => 'Sõiduki tootmisaasta';

  @override
  String get bankName => 'Panga nimi';

  @override
  String get bankRoutingNumber => 'Panga suunamise number';

  @override
  String get bankAccountNumber => 'Pangakonto number';

  @override
  String get bankSwift => 'Kiirkood';

  @override
  String get uploadImage => 'Lae pilt üles';

  @override
  String get yourBalance => 'Teie saldo';

  @override
  String get rideCancellation => 'Sõidu tühistamine';

  @override
  String get cancelRideMessage => 'Kas olete kindel, et soovite oma sõidu tühistada?';

  @override
  String get cancelRideSuccess => 'Sõit on edukalt tühistatud';

  @override
  String get confirmAndCancelRide => 'Kinnita ';

  @override
  String get selectPaymentMethod => 'Valige makseviis';

  @override
  String get rideFeePaid => 'Sõidutasu on makstud';

  @override
  String get rideFeeUnpaid => 'Sõidutasu pole veel makstud';

  @override
  String get total => 'Kokku';

  @override
  String get totalPrice => 'Koguhind';

  @override
  String get addCustomCredit => 'Lisa kohandatud redigeerimine';

  @override
  String get serviceFee => 'Teenustasu';

  @override
  String get serviceOptionFee => 'Teenuse valiku tasu';

  @override
  String get couponDiscount => 'Kupongi allahindlus';

  @override
  String get walletCreit => 'Rahakoti krediit';

  @override
  String get custom => 'Kohandatud';

  @override
  String get payment => 'Makse';

  @override
  String get cashPayment => 'Sularahamakse';

  @override
  String cashPaymentDescription(String amount) {
    return 'Kas kinnitate, et saite $amount?';
  }

  @override
  String get cashPaymentReceived => 'Sularahas makse laekunud';

  @override
  String get confirmAndEndTrip => 'Kinnita ';

  @override
  String get earnings => 'Tulud';

  @override
  String get acceptOrder => 'Võta tellimus vastu';

  @override
  String get canceled => 'Tühistatud';

  @override
  String get unknown => 'Tundmatu';

  @override
  String get commission => 'komisjon';

  @override
  String get selectProfileImage => 'Valige Profiilipilt';

  @override
  String get chooseAvatarDescription => 'Või valige allolevast loendist avatar:';

  @override
  String get fullName => 'Täisnimi';

  @override
  String get favoriteDrivers => 'Lemmik draiverid';

  @override
  String get distanceTraveled => 'Läbitud vahemaa';

  @override
  String get rating => 'Hinnang';

  @override
  String get map => 'Kaart';

  @override
  String get income => 'Sissetulekud';

  @override
  String get timeSpent => 'Kulutatud aeg';

  @override
  String get daily => 'Igapäevane';

  @override
  String get monthly => 'Igakuine';

  @override
  String get noRecordsFoundEarnings => 'Nende filtrite jaoks ei leitud ühtegi reisikirjet';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Tagasisidet veel pole';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Teil pole veel kuvamiseks piisavalt tagasisidet.';

  @override
  String get feedbacksSummary => 'Tagasiside kokkuvõte';

  @override
  String get feedbacksGoodTitle => 'Suurepärane töö!';

  @override
  String get feedbacksGoodSubtitle => 'Teie hinnangud on siiani head';

  @override
  String get feedbacksBadTitle => 'Keskmine';

  @override
  String get feedbacksBadSubtitle => 'Võite kasutada mõningaid täiustusi';

  @override
  String get feedbacksGoodPointsTitle => 'Mõned head punktid sinu kohta:';

  @override
  String get feedbacksbadPointsTitle => 'Mõned punktid, mida saate parandada:';

  @override
  String get feedbacksReviewsTitle => 'Mõned varasemad ülevaated';

  @override
  String get payoutMethods => 'Väljamaksemeetodid';

  @override
  String get notice => 'Märkus:';

  @override
  String get payoutNoticeTitle => 'Administraator maksab teile automaatselt kaks korda nädalas.';

  @override
  String get addPayoutMethod => 'Lisa väljamaksemeetod';

  @override
  String get navigate => 'Navigeerige';

  @override
  String get noPayoutMethods => 'Väljamaksemeetodeid pole';

  @override
  String get name => 'Nimi';

  @override
  String get nameHint => 'Sisestage nimi';

  @override
  String get bankNameHint => 'Sisestage panga nimi';

  @override
  String get branchName => 'Filiaali nimi';

  @override
  String get branchNameHint => 'Sisestage filiaali nimi';

  @override
  String get accountHolderName => 'Konto omaniku nimi';

  @override
  String get routingNumber => 'Suunakood';

  @override
  String get routingNumberHint => 'Sisestage marsruudi number';

  @override
  String get accountNumber => 'Konto number';

  @override
  String get accountNumberHint => 'Sisesta konto number';

  @override
  String get addressHint => 'Sisesta aadress';

  @override
  String get dateOfBith => 'Sünnikuupäev';

  @override
  String get yearHint => 'aasta';

  @override
  String get monthHint => 'Kuu';

  @override
  String get dayHint => 'päev';

  @override
  String get city => 'Linn';

  @override
  String get cityHint => 'Sisestage linn';

  @override
  String get state => 'osariik';

  @override
  String get stateHint => 'Sisesta osariik';

  @override
  String get zipCode => 'Postiindeks';

  @override
  String get zipCodeHint => 'Sisesta postiindeks';

  @override
  String get day => 'päev';

  @override
  String get month => 'Kuu';

  @override
  String get year => 'aasta';

  @override
  String get noActivitiesYet => 'Tegevusi veel pole.';

  @override
  String get headingToDestination => 'suundumas sihtkohta';

  @override
  String get driverArrivedNotice => 'Juht ootab teid';

  @override
  String get driverShouldAriveInNotice => 'Autojuht saabub hinnanguliselt kohale';

  @override
  String get driverShouldHaveArrivedNotice => 'Juht peaks iga hetk kohale jõudma';

  @override
  String get deleteAccount => 'Kustuta konto';

  @override
  String get deleteAccountNotice => 'Kas olete kindel, et soovite oma konto kustutada? 30 päeva pärast kustutatakse teie konto jäädavalt. Selle aja jooksul saate oma konto taastada, logides uuesti sisse.';

  @override
  String get confirmAndDeleteAccount => 'Kinnita ';

  @override
  String get accountDeleted => 'Konto on kustutatud';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Olen teel $destination alates $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Minu juhi nimi on $firstName $lastName, mobiilinumber on $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' Minuga sõitja nimi on $firstName $lastName, mobiilinumber $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Reis on alanud $startTime ja eeldan, et reis kestab umbes $duration minutit';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Arvan, et kui ma juhi autosse istun, võtab reis aega umbes $duration minutit.';
  }

  @override
  String get sendSOSMessage => 'TÄHTIS: Kasutage seda funktsiooni ainult hädaolukorras. Me võtame teie nimel ühendust ametiasutustega.';

  @override
  String get confirmAndSendSOS => 'Kinnita ';

  @override
  String get sosSentSuccessfully => 'SOS on edukalt saadetud';

  @override
  String get topUpSuccess => 'Rahakoti täiendamine õnnestus';

  @override
  String get cancelNotAllowed => 'Juba alanud sõidu tühistamine ei ole võimalik.';

  @override
  String get error => 'Viga';

  @override
  String get connectionError => 'Ühenduse viga';

  @override
  String get serverError => 'Serveri viga';

  @override
  String get addNewLocation => 'Lisa uus asukoht';

  @override
  String get twoWayTrip => 'Kahesuunaline reis';

  @override
  String get reportSubmitted => 'Aruanne on esitatud';

  @override
  String get reportSubmittedDescription => 'Teie aruanne on edukalt edastatud, vaatame selle üle ja teeme vajalikud toimingud.';

  @override
  String get cardNumber => 'Kaardi number';

  @override
  String get cardNumberHint => 'Sisestage kaardi number';

  @override
  String get expiryDate => 'Aegumiskuupäev';

  @override
  String get expiryDateHint => 'KK/AA';

  @override
  String get noFavoriteDrivers => 'Lemmikautojuhte pole';

  @override
  String get noFavoriteDriversDescription => 'Saate oma eelistatud autojuhid märkida lemmikuteks, kui hindate neid pärast reisi.';

  @override
  String get pickupLocationNotFound => 'Meil ei õnnestunud GPS-i vastuvõtupunktina kasutada teie praegust asukohta. Sisestage oma kättesaamise koht käsitsi.';

  @override
  String get dragToSelect => 'Lohistage valimiseks';

  @override
  String get skip => 'Vahele jätma';

  @override
  String get openSettings => 'Avage Seaded';

  @override
  String get locationPermission => 'Asukoha luba';

  @override
  String get locationPermissionDeniedForeverMessage => 'Asukohaluba on nõutav teie ümber olevate tellimuste vastuvõtmiseks ja ka selleks, et sõitja saaks teie asukohta jälgida. Te ei saa ilma selle loata tellimusi vastu võtta ja me oleme teie praeguse asukoha suhtes ettevaatlikud. Saate seda luba muuta oma telefoni seadetes.';

  @override
  String get allow => 'Lubama';

  @override
  String get driverOnlineTitle => 'Sõidu otsimine';

  @override
  String get driverOfflineTitle => 'Taotluste vastuvõtmiseks looge internet';

  @override
  String get payInCash => 'Sularahamakse';

  @override
  String get payInCashDescription => 'Jätkake juhile sularahamaksega. Juht kinnitab makse pärast laekumist.';

  @override
  String get addToFavoriteDrivers => 'Lisa lemmikdraiverite hulka';

  @override
  String get slideToConfirmArrival => 'Libistage saabumise kinnitamiseks';

  @override
  String get slideToConfirmPickup => 'Ülevõtmise kinnitamiseks libistage';

  @override
  String get slideToConfirmDropoff => 'Loobumise kinnitamiseks libistage';

  @override
  String get noticePickingUpRiderIn => 'Ratturi pealevõtmine:';

  @override
  String get noticeRiderNotified => 'Ratturit on teavitatud, võtke rattur üles ja alustage sõitu';
}
