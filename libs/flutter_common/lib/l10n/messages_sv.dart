import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Swedish (`sv`).
class SSv extends S {
  SSv([String locale = 'sv']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Alla rättigheter reserverade.';
  }

  @override
  String get welcomeTitle => 'Välkommen till appen';

  @override
  String get today => 'I dag';

  @override
  String get yesterday => 'I går';

  @override
  String get settings => 'inställningar';

  @override
  String get about => 'Handla om';

  @override
  String get profileInfo => 'Profilinformation';

  @override
  String get language => 'Språk';

  @override
  String get firstName => 'Förnamn';

  @override
  String get lastName => 'Efternamn';

  @override
  String get mobileNumber => 'Mobilnummer';

  @override
  String get edit => 'Redigera';

  @override
  String get enterCode => 'Ange kod';

  @override
  String get editProfile => 'Redigera profil';

  @override
  String get bankTransfer => 'Banköverföring';

  @override
  String get gift => 'Gåva';

  @override
  String get correction => 'Korrektion';

  @override
  String get inappPayment => 'Betalning i appen';

  @override
  String get orderFee => 'Beställningsavgift';

  @override
  String get parkingFee => 'Parkeringsavgift';

  @override
  String get cancellationFee => 'Avbokningsavgift';

  @override
  String get withdraw => 'Dra tillbaka';

  @override
  String get walletTransactions => 'Plånbokstransaktioner';

  @override
  String get addCard => 'Lägg till kort';

  @override
  String get visa => 'Visum';

  @override
  String get mastercard => 'Mastercard';

  @override
  String get addBalance => 'Lägg till balans';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Minuter',
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
      other: '$hoursString timmar',
      one: '$hoursString timme',
      zero: 'Zero hours',
    );
    return 'Varaktighet: $_temp0';
  }

  @override
  String get timePastDue => 'Gått över tiden';

  @override
  String get justNow => 'Precis nu';

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
  String get welcomeSubtitle => 'Taxiservice designad för din komfort har resor med dina favoritförare och välj dina åkpreferenser';

  @override
  String get onboardingRewardTitle => 'Bli belönad!';

  @override
  String get onboardingRewardSubtitle => 'Få extra bonusar för att värva en vän, genomföra resor och många fler...';

  @override
  String get selectLanguage => 'Välj språk';

  @override
  String get searchForLanguage => 'Sök efter språk';

  @override
  String get enterPhoneNumber => 'Skriv in telefonnummer';

  @override
  String get actionContinue => 'Fortsätta';

  @override
  String get whereIsYourDestination => 'Var är din destination?';

  @override
  String get whereAreYouGoing => 'Vart ska du?';

  @override
  String get selectDestinations => 'Din rutt';

  @override
  String get pickupPoint => 'Mötesplats';

  @override
  String get enterPickupPoint => 'Ange upphämtningsställe';

  @override
  String get dropoffPoint => 'Lämningsplats';

  @override
  String get enterDropoffPoint => 'Ange avlämningsställe';

  @override
  String get stopPoint => 'Stopppunkt';

  @override
  String get enterStopPoint => 'Ange stopppunkt';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get confirmDropoff => 'Bekräfta avlämning';

  @override
  String get confirmPickup => 'Bekräfta hämtning';

  @override
  String get enterAtLeast3Characters => 'Ange minst 3 tecken';

  @override
  String get noResults => 'Inga resultat';

  @override
  String get bookNow => 'Boka nu';

  @override
  String get cash => 'Kontanter';

  @override
  String get online => 'Uppkopplad';

  @override
  String get offline => 'Off-line';

  @override
  String get onTrip => 'På resa';

  @override
  String get confirmPay => 'Bekräfta ';

  @override
  String get cancel => 'Annullera';

  @override
  String get apply => 'Tillämpa';

  @override
  String get enterCouponCode => 'Ange kupongkod';

  @override
  String get reserveRide => 'Reservera tur';

  @override
  String get reserveRideMessage => 'Välj det exakta datum och tid du vill att din resa ska reserveras';

  @override
  String get reserveRideMessageSuccess => 'Din resa har reserverats. Du kan se dina reserverade turer i avsnittet \"Schemalagda turer\".';

  @override
  String get cancelReservation => 'Avboka bokning';

  @override
  String get confirmResrve => 'Bekräfta ';

  @override
  String get enterCouponDescription => 'Ange din kupongkod som ska tillämpas på priser';

  @override
  String get enterCoupon => 'Ange kupong';

  @override
  String get couponApplied => 'Kupongen tillämpas';

  @override
  String get couponAppliedDescription => 'Kupongen har tillämpats på din resas biljettpris';

  @override
  String get done => 'Gjort!';

  @override
  String get ridePreferences => 'Ride preferenser';

  @override
  String get noWaitTime => 'Ingen väntetid';

  @override
  String minutesRange(String minutes) {
    return '$minutes minuter';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds sekunder';
  }

  @override
  String get rideRequested => 'Åktur begärd';

  @override
  String get searchingForAnOnlineDriver => 'Söker efter en onlinedrivrutin...';

  @override
  String get cancelRide => 'Avbryt resan';

  @override
  String get rideSafety => 'Åksäkerhet';

  @override
  String get shareTripInformation => 'Dela reseinformation';

  @override
  String get shareTripInformationDescription => 'Du kan dela din reseinformation med en vän';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Låt myndigheterna veta om en nödsituation';

  @override
  String get reportAnIssue => 'Rapportera ett problem';

  @override
  String get reportAnIssueMidTripDescription => 'Dela ett säkerhetsproblem på resan';

  @override
  String get rideOptions => 'Åkalternativ';

  @override
  String get goBackToRide => 'Gå tillbaka för att rida';

  @override
  String get waitTime => 'Väntetid';

  @override
  String get couponCode => 'Kupongskod';

  @override
  String get giftCardCode => 'Presentkortskod';

  @override
  String get nicePoints => 'Fina poäng';

  @override
  String get negativePoints => 'Negativa poäng';

  @override
  String get reviewCommentBoxHint => 'Lägg till en kommentar...';

  @override
  String get howWasYourTrip => 'Hur var din resa?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Hemsk resa med $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Dålig resa med $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Genomsnittlig resa med $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Bra resa med $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Fantastisk resa med $name';
  }

  @override
  String get submitFeedback => 'Skicka feedback';

  @override
  String get typeAMessage => 'Skriv ett meddelande';

  @override
  String get findAnotherRide => 'Hitta en annan resa';

  @override
  String get next => 'Nästa';

  @override
  String get searchForDropoffLocation => 'Sök efter avlämningsplats';

  @override
  String get searchForPickupLocation => 'Sök efter upphämtningsplats';

  @override
  String get placeConfirmDialogPlaceholder => 'Var är din avlämningsplats?';

  @override
  String get noAnnouncements => 'Inga meddelanden';

  @override
  String get announcements => 'Meddelanden';

  @override
  String reviewsCount(int count) {
    return '($count recensioner)';
  }

  @override
  String get tripDetails => 'Resans detaljer';

  @override
  String get rideDetails => 'Åkdetaljer';

  @override
  String get orderARide => 'Beställ skjuts';

  @override
  String get noRidesYet => 'Inga åk än!';

  @override
  String get issueSubjectPlaceholder => 'Skriv in ämnet för frågan';

  @override
  String get issueContentPlaceholder => 'Skriv en beskrivning av problemet';

  @override
  String get reportThisIssue => 'Rapportera det här problemet';

  @override
  String get fieldIsRequired => 'Fältet är obligatoriskt';

  @override
  String get ok => 'OK';

  @override
  String get favoriteLocations => 'Favoritplatser';

  @override
  String get favoriteLocationsSubtitle => 'Spara dina favoritplatser för enklare åtkomst';

  @override
  String get createAFavoriteLocation => 'Skapa en favoritplats';

  @override
  String get addressTitleLabel => 'Adressens titel';

  @override
  String get clickToSetLocation => 'Klicka för att ange plats';

  @override
  String get whereIsYourNewFavoriteLocation => 'Var är din nya favoritplats?';

  @override
  String get locateFavoriteLocationDescription => 'Använd antingen sökrutan nedan eller kartan för att fästa den exakta platsen';

  @override
  String get searchLocation => 'Sök plats';

  @override
  String get saveChanges => 'Spara ändringar';

  @override
  String get rideHistory => 'Åk historia';

  @override
  String get scheduledRides => 'Schemalagda turer';

  @override
  String get keepTheOrder => 'Håll ordningen';

  @override
  String get cancelTheRide => 'Avbryt resan';

  @override
  String get walletBalance => 'Saldo i plånboken';

  @override
  String get activities => 'Aktiviteter';

  @override
  String get pleaseEnterGiftCardCode => 'Vänligen ange presentkortskoden';

  @override
  String get redeem => 'Lösa in';

  @override
  String get enterGiftCardCode => 'Ange presentkortskoden';

  @override
  String get redeemGiftCard => 'lösa in presentkort';

  @override
  String get redeemGiftCardDescription => 'Ange presentkortskoden för att lösa in den.';

  @override
  String get redeemSuccessTitle => 'Presentkort inlöst!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Du har löst in $amount presentkort.';
  }

  @override
  String get addCredit => 'Lägg till kredit';

  @override
  String get payNow => 'Betala nu';

  @override
  String get addCreditToWallet => 'Lägg till kredit i plånboken';

  @override
  String get pleaseSelectAmount => 'Välj belopp';

  @override
  String get enterAmount => 'Ange belopp';

  @override
  String get selectAmount => 'Välj belopp:';

  @override
  String get wallet => 'Plånbok';

  @override
  String get totalRides => 'Totalt antal turer';

  @override
  String get appSettings => 'App inställningar';

  @override
  String get mapSettings => 'Kartinställningar';

  @override
  String get lanugageSettings => 'Språkinställningar';

  @override
  String get paymentMethods => 'Betalningsmetoder';

  @override
  String get selectCards => 'Välj kort';

  @override
  String get selectCardsDescription => 'Du kan välja vilka kortnummer du vill ska visas i listan över betalningsmetoder på fakturor.';

  @override
  String get delete => 'Radera';

  @override
  String get nameOnCard => 'namn på kort';

  @override
  String get profile => 'Profil';

  @override
  String get scheduledRide => 'Schemalagd resa';

  @override
  String get addPaymentMethod => 'Lägg till betalningsmetod';

  @override
  String get addPaymentMethodDescription => 'Lägg till en ny betalningsmetod på ditt konto';

  @override
  String get saveCard => 'Spara kort';

  @override
  String get selectDialCode => 'Välj uppringningskod';

  @override
  String get searchCountryName => 'Sök landsnamn';

  @override
  String get preferences => 'Inställningar:';

  @override
  String get onboardingDescription => 'Ett ögonblick från att registrera ditt konto och njuta av bekväma åkturer';

  @override
  String get signInSignUp => 'Logga in regristrera';

  @override
  String get enterOtp => 'Ange OTP';

  @override
  String get enterPassword => 'Skriv in lösenord';

  @override
  String get enterPasswordDescription => 'Vänligen ange ditt lösenord för att fortsätta';

  @override
  String get setPassword => 'Välj lösenord';

  @override
  String get password => 'Lösenord';

  @override
  String get passwordRuleDescription => 'Inkludera minst två av följande:';

  @override
  String get passwordRuleLength => 'Mellan 9 och 64 tecken';

  @override
  String get passwordRuleUpperCase => 'Versala bokstäver';

  @override
  String get passwordRuleLowerCase => 'Gemener';

  @override
  String get passwordRuleNumber => 'Tal';

  @override
  String get passwordRuleSpecialCharacter => 'Speciella karaktärer';

  @override
  String get contactDetails => 'Kontaktuppgifter';

  @override
  String get vehicleDetails => 'Fordonsdetaljer';

  @override
  String get payoutInformation => 'Utbetalningsinformation';

  @override
  String get documents => 'Dokument';

  @override
  String get accessDenied => 'Tillträde beviljas ej';

  @override
  String get success => 'Framgång';

  @override
  String get skipForNow => 'Hoppa över nu';

  @override
  String get sendOtpDescription => 'En verifieringskod har skickats till ditt telefonnummer';

  @override
  String get resendOtp => 'Återsänd koden';

  @override
  String get useOtpInstead => 'Använd OTP istället';

  @override
  String get home => 'Hem';

  @override
  String get logout => 'Logga ut';

  @override
  String get driverLicenseNumber => 'Körkortsnummer';

  @override
  String get email => 'E-post';

  @override
  String get address => 'Adress';

  @override
  String get gender => 'Kön';

  @override
  String get genderMale => 'Manlig';

  @override
  String get genderFemale => 'Kvinna';

  @override
  String get genderUnknown => 'Neutral/Okänd';

  @override
  String get vehiclePlateNumber => 'Fordonsskyltnummer';

  @override
  String get vehicleColor => 'Fordonets färg';

  @override
  String get vehicleModelAndMake => 'Fordonsmodell';

  @override
  String get vehicleProductionYear => 'Fordonsproduktionsår';

  @override
  String get bankName => 'Bank namn';

  @override
  String get bankRoutingNumber => 'Bankroutingnummer';

  @override
  String get bankAccountNumber => 'Bankkontonummer';

  @override
  String get bankSwift => 'SWIFT-kod';

  @override
  String get uploadImage => 'Ladda upp bild';

  @override
  String get yourBalance => 'Din balans';

  @override
  String get rideCancellation => 'Avbokning av färd';

  @override
  String get cancelRideMessage => 'Är du säker på att du vill avbryta din resa?';

  @override
  String get cancelRideSuccess => 'Turen har avbrutits';

  @override
  String get confirmAndCancelRide => 'Bekräfta';

  @override
  String get selectPaymentMethod => 'Välj betalningsmetod';

  @override
  String get rideFeePaid => 'Rides avgift är betald';

  @override
  String get rideFeeUnpaid => 'Rides avgift har inte betalats ännu';

  @override
  String get total => 'Total';

  @override
  String get totalPrice => 'Totalbelopp';

  @override
  String get addCustomCredit => 'Lägg till anpassad redigering';

  @override
  String get serviceFee => 'Serviceavgift';

  @override
  String get serviceOptionFee => 'Servicealternativavgift';

  @override
  String get couponDiscount => 'Kupongrabatt';

  @override
  String get walletCreit => 'Plånbokskredit';

  @override
  String get custom => 'Beställnings';

  @override
  String get payment => 'Betalning';

  @override
  String get cashPayment => 'Kontant betalning';

  @override
  String cashPaymentDescription(String amount) {
    return 'Bekräftar du att du fått $amount?';
  }

  @override
  String get cashPaymentReceived => 'Kontant betalning mottagen';

  @override
  String get confirmAndEndTrip => 'Bekräfta ';

  @override
  String get earnings => 'Förtjänst';

  @override
  String get acceptOrder => 'Acceptera beställning';

  @override
  String get canceled => 'Inställt';

  @override
  String get unknown => 'Okänd';

  @override
  String get commission => 'Provision';

  @override
  String get selectProfileImage => 'Välj Profilbild';

  @override
  String get chooseAvatarDescription => 'Eller välj en avatar från listan nedan:';

  @override
  String get fullName => 'Fullständiga namn';

  @override
  String get favoriteDrivers => 'Favoritförare';

  @override
  String get distanceTraveled => 'Distans rest';

  @override
  String get rating => 'Betyg';

  @override
  String get map => 'Karta';

  @override
  String get income => 'Inkomst';

  @override
  String get timeSpent => 'Spenderad tid';

  @override
  String get daily => 'Dagligen';

  @override
  String get monthly => 'En gång i månaden';

  @override
  String get noRecordsFoundEarnings => 'Ingen resepost hittades för dessa filter';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Inga kommentarer än';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Du har inte tillräckligt med feedback att visa än.';

  @override
  String get feedbacksSummary => 'Sammanfattning av feedback';

  @override
  String get feedbacksGoodTitle => 'Utmärkt jobb!';

  @override
  String get feedbacksGoodSubtitle => 'Dina betyg ser bra ut än så länge';

  @override
  String get feedbacksBadTitle => 'Genomsnitt';

  @override
  String get feedbacksBadSubtitle => 'Du kan använda vissa förbättringar';

  @override
  String get feedbacksGoodPointsTitle => 'Några bra saker om dig:';

  @override
  String get feedbacksbadPointsTitle => 'Några punkter du kan förbättra:';

  @override
  String get feedbacksReviewsTitle => 'Några tidigare recensioner';

  @override
  String get payoutMethods => 'Utbetalningsmetoder';

  @override
  String get notice => 'Lägga märke till:';

  @override
  String get payoutNoticeTitle => 'Du kommer automatiskt att få betalt av administratören två gånger i veckan.';

  @override
  String get addPayoutMethod => 'Lägg till utbetalningsmetod';

  @override
  String get navigate => 'Navigera';

  @override
  String get noPayoutMethods => 'Inga utbetalningsmetoder';

  @override
  String get name => 'namn';

  @override
  String get nameHint => 'Skriv namn';

  @override
  String get bankNameHint => 'Ange banknamn';

  @override
  String get branchName => 'Filialens namn';

  @override
  String get branchNameHint => 'Ange filialnamn';

  @override
  String get accountHolderName => 'Kontoinnehavarens namn';

  @override
  String get routingNumber => 'Clearingnummer';

  @override
  String get routingNumberHint => 'Ange routingnummer';

  @override
  String get accountNumber => 'Kontonummer';

  @override
  String get accountNumberHint => 'Ange kontonummer';

  @override
  String get addressHint => 'Ange adress';

  @override
  String get dateOfBith => 'Födelsedatum';

  @override
  String get yearHint => 'År';

  @override
  String get monthHint => 'Månad';

  @override
  String get dayHint => 'Dag';

  @override
  String get city => 'Stad';

  @override
  String get cityHint => 'Gå in i staden';

  @override
  String get state => 'stat';

  @override
  String get stateHint => 'Ange tillstånd';

  @override
  String get zipCode => 'Postnummer';

  @override
  String get zipCodeHint => 'Ange postnummer';

  @override
  String get day => 'Dag';

  @override
  String get month => 'Månad';

  @override
  String get year => 'År';

  @override
  String get noActivitiesYet => 'Inga aktiviteter än.';

  @override
  String get headingToDestination => 'på väg till destinationen';

  @override
  String get driverArrivedNotice => 'Föraren väntar på dig';

  @override
  String get driverShouldAriveInNotice => 'Föraren beräknas komma in';

  @override
  String get driverShouldHaveArrivedNotice => 'Föraren borde anlända när som helst nu';

  @override
  String get deleteAccount => 'Radera konto';

  @override
  String get deleteAccountNotice => 'Är du säker på att du vill ta bort ditt konto? Efter 30 dagar kommer ditt konto att raderas permanent. Under denna tid kan du återställa ditt konto genom att logga in igen.';

  @override
  String get confirmAndDeleteAccount => 'Bekräfta ';

  @override
  String get accountDeleted => 'Kontot har raderats';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Jag är på väg till $destination från $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Mitt förarnamn är $firstName $lastName, mobilnumret är $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' Ryttaren med mig heter $firstName $lastName, mobilnumret är $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Resan har startat $startTime och jag räknar med att resan tar cirka $duration minuter';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Jag räknar med att resan tar cirka $duration minuter när jag sätter mig i förarens bil.';
  }

  @override
  String get sendSOSMessage => 'VIKTIGT: Använd denna funktion endast i nödfall. Vi kommer att kontakta myndigheter för dig.';

  @override
  String get confirmAndSendSOS => 'Bekräfta ';

  @override
  String get sosSentSuccessfully => 'SOS har skickats';

  @override
  String get topUpSuccess => 'Plånboken har fyllts på';

  @override
  String get cancelNotAllowed => 'Avbokning av en redan påbörjad resa är inte möjlig.';

  @override
  String get error => 'Fel';

  @override
  String get connectionError => 'Anslutningsfel';

  @override
  String get serverError => 'Serverfel';

  @override
  String get addNewLocation => 'Lägg till ny plats';

  @override
  String get twoWayTrip => 'Tvåvägsresa';

  @override
  String get reportSubmitted => 'Rapport inlämnad';

  @override
  String get reportSubmittedDescription => 'Din rapport har skickats, vi kommer att granska den och vidta nödvändiga åtgärder.';

  @override
  String get cardNumber => 'Kortnummer';

  @override
  String get cardNumberHint => 'Ange kortnummer';

  @override
  String get expiryDate => 'Utgångsdatum';

  @override
  String get expiryDateHint => 'MMÅÅ';

  @override
  String get noFavoriteDrivers => 'Inga favoritförare';

  @override
  String get noFavoriteDriversDescription => 'Du kan markera dina favoritförare som favoriter när du betygsätter dem efter resan.';

  @override
  String get pickupLocationNotFound => 'Vi kunde inte fastställa din nuvarande plats med GPS som upphämtningspunkt. Ange din upphämtningsplats manuellt.';

  @override
  String get dragToSelect => 'Dra för att välja';

  @override
  String get skip => 'Hoppa';

  @override
  String get openSettings => 'Öppna Inställningar';

  @override
  String get locationPermission => 'Platsbehörighet';

  @override
  String get locationPermissionDeniedForeverMessage => 'Platstillstånd är ett krav för att ta emot beställningar omkring dig och även för att föraren ska kunna spåra din plats. Du kan inte ta emot beställningar utan detta tillstånd och att vi aktar oss för din nuvarande plats. Du kan ändra denna behörighet i dina telefoninställningar.';

  @override
  String get allow => 'Tillåta';

  @override
  String get driverOnlineTitle => 'Söker skjuts';

  @override
  String get driverOfflineTitle => 'Gå online för att börja ta emot förfrågningar';

  @override
  String get payInCash => 'Kontant betalning';

  @override
  String get payInCashDescription => 'Fortsätt med kontantbetalningen till föraren. Föraren kommer att bekräfta betalningen när den har mottagits.';

  @override
  String get addToFavoriteDrivers => 'Lägg till favoritdrivrutiner';

  @override
  String get slideToConfirmArrival => 'Skjut för att bekräfta ankomst';

  @override
  String get slideToConfirmPickup => 'Skjut för att bekräfta hämtning';

  @override
  String get slideToConfirmDropoff => 'Skjut för att bekräfta avlämning';

  @override
  String get noticePickingUpRiderIn => 'Hämta ryttaren i:';

  @override
  String get noticeRiderNotified => 'Ryttaren har meddelats, Hämta ryttaren och påbörja färden';
}
