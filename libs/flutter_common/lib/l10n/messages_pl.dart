import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Polish (`pl`).
class SPl extends S {
  SPl([String locale = 'pl']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Wszelkie prawa zastrzeżone.';
  }

  @override
  String get welcomeTitle => 'Witamy w aplikacji';

  @override
  String get today => 'Dzisiaj';

  @override
  String get yesterday => 'Wczoraj';

  @override
  String get settings => 'Ustawienia';

  @override
  String get about => 'O';

  @override
  String get profileInfo => 'Informacje o profilu';

  @override
  String get language => 'Język';

  @override
  String get firstName => 'Imię';

  @override
  String get lastName => 'Nazwisko';

  @override
  String get mobileNumber => 'Numer telefonu komórkowego';

  @override
  String get edit => 'Edytować';

  @override
  String get enterCode => 'Wprowadź kod';

  @override
  String get editProfile => 'Edytuj profil';

  @override
  String get bankTransfer => 'Przelew bankowy';

  @override
  String get gift => 'Prezent';

  @override
  String get correction => 'Korekta';

  @override
  String get inappPayment => 'Płatność w aplikacji';

  @override
  String get orderFee => 'Opłata za zamówienie';

  @override
  String get parkingFee => 'Opłata parkingowa';

  @override
  String get cancellationFee => 'Opłata za umorzenie';

  @override
  String get withdraw => 'Wycofać';

  @override
  String get walletTransactions => 'Transakcje portfelowe';

  @override
  String get addCard => 'Dodaj kartę';

  @override
  String get visa => 'Wiza';

  @override
  String get mastercard => 'Karta MasterCard';

  @override
  String get addBalance => 'Dodaj równowagę';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Minuty',
      one: '$minutesString Minuta',
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
      other: '$hoursString godziny',
      one: '$hoursString godzina',
      zero: 'Zero hours',
    );
    return 'Czas trwania: $_temp0';
  }

  @override
  String get timePastDue => 'Termin przekroczony';

  @override
  String get justNow => 'Właśnie';

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
  String get welcomeSubtitle => 'Usługa taksówkowa zaprojektowana z myślą o Twojej wygodzie. Korzystaj z Podróży ze swoimi ulubionymi kierowcami i wybieraj preferencje dotyczące przejazdów';

  @override
  String get onboardingRewardTitle => 'Zdobądź nagrodę!';

  @override
  String get onboardingRewardSubtitle => 'Zdobądź dodatkowe bonusy za polecenie znajomego, realizację wycieczek i wiele więcej...';

  @override
  String get selectLanguage => 'Wybierz język';

  @override
  String get searchForLanguage => 'Wyszukaj język';

  @override
  String get enterPhoneNumber => 'Wpisz numer telefonu';

  @override
  String get actionContinue => 'Kontynuować';

  @override
  String get whereIsYourDestination => 'Gdzie jest Twój cel?';

  @override
  String get whereAreYouGoing => 'Gdzie idziesz?';

  @override
  String get selectDestinations => 'Twoja trasa';

  @override
  String get pickupPoint => 'Punkt odbioru';

  @override
  String get enterPickupPoint => 'Wprowadź punkt odbioru';

  @override
  String get dropoffPoint => 'Punkt zrzutu';

  @override
  String get enterDropoffPoint => 'Wprowadź punkt zrzutu';

  @override
  String get stopPoint => 'Punkt zatrzymania';

  @override
  String get enterStopPoint => 'Wprowadź punkt zatrzymania';

  @override
  String get confirm => 'Potwierdzać';

  @override
  String get confirmDropoff => 'Potwierdź zrzut';

  @override
  String get confirmPickup => 'Potwierdź odbiór';

  @override
  String get enterAtLeast3Characters => 'Wpisz co najmniej 3 znaki';

  @override
  String get noResults => 'Brak wyników';

  @override
  String get bookNow => 'Rezerwuj teraz';

  @override
  String get cash => 'Gotówka';

  @override
  String get online => 'online';

  @override
  String get offline => 'Nieaktywny';

  @override
  String get onTrip => 'W podróży';

  @override
  String get confirmPay => 'Potwierdzać';

  @override
  String get cancel => 'Anulować';

  @override
  String get apply => 'Stosować';

  @override
  String get enterCouponCode => 'Wprowadź kod kuponu';

  @override
  String get reserveRide => 'Przejażdżka rezerwowa';

  @override
  String get reserveRideMessage => 'Wybierz dokładną datę i godzinę, w której chcesz zarezerwować przejazd';

  @override
  String get reserveRideMessageSuccess => 'Twój przejazd został pomyślnie zarezerwowany. Zarezerwowane przejazdy możesz sprawdzić w sekcji „Zaplanowane przejazdy”.';

  @override
  String get cancelReservation => 'Anulowanie rezerwacji';

  @override
  String get confirmResrve => 'Potwierdzać';

  @override
  String get enterCouponDescription => 'Wpisz swój kod kuponu, który będzie stosowany do cen';

  @override
  String get enterCoupon => 'Wprowadź kupon';

  @override
  String get couponApplied => 'Zastosowano kupon';

  @override
  String get couponAppliedDescription => 'Kupon został uwzględniony w cenie Twojego przejazdu';

  @override
  String get done => 'Zrobione!';

  @override
  String get ridePreferences => 'Preferencje jazdy';

  @override
  String get noWaitTime => 'Brak czasu oczekiwania';

  @override
  String minutesRange(String minutes) {
    return '$minutes minut';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds sekund';
  }

  @override
  String get rideRequested => 'Zażądano przejazdu';

  @override
  String get searchingForAnOnlineDriver => 'Szukam sterownika online...';

  @override
  String get cancelRide => 'Anuluj jazdę';

  @override
  String get rideSafety => 'Bezpieczeństwo jazdy';

  @override
  String get shareTripInformation => 'Udostępnij informacje o podróży';

  @override
  String get shareTripInformationDescription => 'Możesz udostępnić informacje o swojej podróży znajomemu';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Poinformuj władze o sytuacji awaryjnej';

  @override
  String get reportAnIssue => 'Zgłoś problem';

  @override
  String get reportAnIssueMidTripDescription => 'Podziel się kwestią bezpieczeństwa w podróży';

  @override
  String get rideOptions => 'Opcje jazdy';

  @override
  String get goBackToRide => 'Wracaj na przejażdżkę';

  @override
  String get waitTime => 'Czas oczekiwania';

  @override
  String get couponCode => 'Kod kuponu';

  @override
  String get giftCardCode => 'Kod karty podarunkowej';

  @override
  String get nicePoints => 'Ładne punkty';

  @override
  String get negativePoints => 'Punkty ujemne';

  @override
  String get reviewCommentBoxHint => 'Dodaj komentarz...';

  @override
  String get howWasYourTrip => 'Jak minęła Twoja podróż?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Straszna podróż z $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Zła podróż z $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Średnia podróż z $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Dobra wycieczka z $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Niesamowita wycieczka z $name';
  }

  @override
  String get submitFeedback => 'Prześlij opinię';

  @override
  String get typeAMessage => 'Wpisz wiadomość';

  @override
  String get findAnotherRide => 'Znajdź inny przejazd';

  @override
  String get next => 'Następny';

  @override
  String get searchForDropoffLocation => 'Wyszukaj miejsce nadania';

  @override
  String get searchForPickupLocation => 'Wyszukaj miejsce odbioru';

  @override
  String get placeConfirmDialogPlaceholder => 'Gdzie jest Twoje miejsce nadania?';

  @override
  String get noAnnouncements => 'Brak ogłoszeń';

  @override
  String get announcements => 'Ogłoszenia';

  @override
  String reviewsCount(int count) {
    return '($count recenzji)';
  }

  @override
  String get tripDetails => 'Szczegóły podróży';

  @override
  String get rideDetails => 'Szczegóły jazdy';

  @override
  String get orderARide => 'Zamów przejazd';

  @override
  String get noRidesYet => 'Nie ma jeszcze żadnych przejażdżek!';

  @override
  String get issueSubjectPlaceholder => 'Wpisz temat problemu';

  @override
  String get issueContentPlaceholder => 'Wpisz opis problemu';

  @override
  String get reportThisIssue => 'Zgłoś ten problem';

  @override
  String get fieldIsRequired => 'To pole jest wymagane';

  @override
  String get ok => 'OK';

  @override
  String get favoriteLocations => 'Ulubione lokalizacje';

  @override
  String get favoriteLocationsSubtitle => 'Zapisz swoje ulubione lokalizacje, aby mieć do nich łatwiejszy dostęp';

  @override
  String get createAFavoriteLocation => 'Utwórz ulubioną lokalizację';

  @override
  String get addressTitleLabel => 'Tytuł adresu';

  @override
  String get clickToSetLocation => 'Kliknij, aby ustawić lokalizację';

  @override
  String get whereIsYourNewFavoriteLocation => 'Gdzie jest Twoja nowa ulubiona lokalizacja?';

  @override
  String get locateFavoriteLocationDescription => 'Użyj pola wyszukiwania poniżej lub mapy, aby przypiąć dokładną lokalizację';

  @override
  String get searchLocation => 'Wyszukaj lokalizację';

  @override
  String get saveChanges => 'Zapisz zmiany';

  @override
  String get rideHistory => 'Historia jazdy';

  @override
  String get scheduledRides => 'Zaplanowane przejazdy';

  @override
  String get keepTheOrder => 'Zachowaj porządek';

  @override
  String get cancelTheRide => 'Anuluj przejazd';

  @override
  String get walletBalance => 'Saldo portfela';

  @override
  String get activities => 'Zajęcia';

  @override
  String get pleaseEnterGiftCardCode => 'Proszę wprowadzić kod karty podarunkowej';

  @override
  String get redeem => 'Odkupić';

  @override
  String get enterGiftCardCode => 'Wprowadź kod karty podarunkowej';

  @override
  String get redeemGiftCard => 'Zrealizuj Kartę Podarunkową';

  @override
  String get redeemGiftCardDescription => 'Wpisz kod karty podarunkowej, aby go zrealizować.';

  @override
  String get redeemSuccessTitle => 'Karta podarunkowa wykorzystana!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Pomyślnie wykorzystałeś kartę podarunkową $amount.';
  }

  @override
  String get addCredit => 'Dodaj kredyt';

  @override
  String get payNow => 'Zapłać teraz';

  @override
  String get addCreditToWallet => 'Dodaj środki do portfela';

  @override
  String get pleaseSelectAmount => 'Proszę wybrać kwotę';

  @override
  String get enterAmount => 'Wprowadź ilość';

  @override
  String get selectAmount => 'Wybierz kwotę:';

  @override
  String get wallet => 'Portfel';

  @override
  String get totalRides => 'Razem przejażdżki';

  @override
  String get appSettings => 'Ustawienia aplikacji';

  @override
  String get mapSettings => 'Ustawienia mapy';

  @override
  String get lanugageSettings => 'Ustawienia języka';

  @override
  String get paymentMethods => 'Metody Płatności';

  @override
  String get selectCards => 'Wybierz karty';

  @override
  String get selectCardsDescription => 'Możesz wybrać numery kart, które mają być wyświetlane na liście metod płatności na fakturach.';

  @override
  String get delete => 'Usuwać';

  @override
  String get nameOnCard => 'Imię na karcie';

  @override
  String get profile => 'Profil';

  @override
  String get scheduledRide => 'Zaplanowana jazda';

  @override
  String get addPaymentMethod => 'Dodaj metodę płatności';

  @override
  String get addPaymentMethodDescription => 'Dodaj nową metodę płatności do swojego konta';

  @override
  String get saveCard => 'Zapisz kartę';

  @override
  String get selectDialCode => 'Wybierz kod wybierania';

  @override
  String get searchCountryName => 'Wyszukaj nazwę kraju';

  @override
  String get preferences => 'Preferencje:';

  @override
  String get onboardingDescription => 'Tylko chwila dzieli Cię od rejestracji konta i cieszenia się komfortowymi podróżami';

  @override
  String get signInSignUp => 'Zaloguj się Zarejestruj się';

  @override
  String get enterOtp => 'Wpisz hasło jednorazowe';

  @override
  String get enterPassword => 'Wprowadź hasło';

  @override
  String get enterPasswordDescription => 'Wprowadź hasło, aby kontynuować';

  @override
  String get setPassword => 'Ustaw hasło';

  @override
  String get password => 'Hasło';

  @override
  String get passwordRuleDescription => 'Uwzględnij co najmniej dwa z poniższych:';

  @override
  String get passwordRuleLength => 'Od 9 do 64 znaków';

  @override
  String get passwordRuleUpperCase => 'Wielkie litery';

  @override
  String get passwordRuleLowerCase => 'Małe litery';

  @override
  String get passwordRuleNumber => 'Liczby';

  @override
  String get passwordRuleSpecialCharacter => 'Znaki specjalne';

  @override
  String get contactDetails => 'Szczegóły kontaktu';

  @override
  String get vehicleDetails => 'Szczegóły pojazdu';

  @override
  String get payoutInformation => 'Informacje o wypłatach';

  @override
  String get documents => 'Dokumenty';

  @override
  String get accessDenied => 'Brak dostępu';

  @override
  String get success => 'Powodzenie';

  @override
  String get skipForNow => 'Pomiń to na razie';

  @override
  String get sendOtpDescription => 'Kod weryfikacyjny został wysłany na Twój numer telefonu';

  @override
  String get resendOtp => 'Wyślij kod ponownie';

  @override
  String get useOtpInstead => 'Zamiast tego użyj hasła jednorazowego';

  @override
  String get home => 'Dom';

  @override
  String get logout => 'Wyloguj';

  @override
  String get driverLicenseNumber => 'Numer prawa jazdy';

  @override
  String get email => 'E-mail';

  @override
  String get address => 'Adres';

  @override
  String get gender => 'Płeć';

  @override
  String get genderMale => 'Mężczyzna';

  @override
  String get genderFemale => 'Kobieta';

  @override
  String get genderUnknown => 'Neutralny / Nieznany';

  @override
  String get vehiclePlateNumber => 'Numer rejestracyjny pojazdu';

  @override
  String get vehicleColor => 'Kolor pojazdu';

  @override
  String get vehicleModelAndMake => 'model maszyny';

  @override
  String get vehicleProductionYear => 'Rok produkcji pojazdu';

  @override
  String get bankName => 'Nazwa banku';

  @override
  String get bankRoutingNumber => 'Numer rozliczeniwy banku';

  @override
  String get bankAccountNumber => 'Numer konta bankowego';

  @override
  String get bankSwift => 'Kod SWIFT';

  @override
  String get uploadImage => 'Załaduj obrazek';

  @override
  String get yourBalance => 'Twój balans';

  @override
  String get rideCancellation => 'Anulowanie przejazdu';

  @override
  String get cancelRideMessage => 'Czy na pewno chcesz anulować przejazd?';

  @override
  String get cancelRideSuccess => 'Przejazd został pomyślnie anulowany';

  @override
  String get confirmAndCancelRide => 'Potwierdzać';

  @override
  String get selectPaymentMethod => 'Wybierz Metodę Płatności';

  @override
  String get rideFeePaid => 'Opłata za przejazd została uiszczona';

  @override
  String get rideFeeUnpaid => 'Opłata za przejazd nie została jeszcze uiszczona';

  @override
  String get total => 'Całkowity';

  @override
  String get totalPrice => 'Całkowita cena';

  @override
  String get addCustomCredit => 'Dodaj niestandardową zmianę';

  @override
  String get serviceFee => 'Opłata za usługę';

  @override
  String get serviceOptionFee => 'Opłata za opcję usługi';

  @override
  String get couponDiscount => 'Rabat kuponowy';

  @override
  String get walletCreit => 'Kredyt w portfelu';

  @override
  String get custom => 'Zwyczaj';

  @override
  String get payment => 'Zapłata';

  @override
  String get cashPayment => 'Zapłata gotówką';

  @override
  String cashPaymentDescription(String amount) {
    return 'Czy potwierdzasz, że otrzymałeś $amount?';
  }

  @override
  String get cashPaymentReceived => 'Otrzymano płatność gotówką';

  @override
  String get confirmAndEndTrip => 'Potwierdzać';

  @override
  String get earnings => 'Zyski';

  @override
  String get acceptOrder => 'Zaakceptuj zamówienie';

  @override
  String get canceled => 'Odwołany';

  @override
  String get unknown => 'Nieznany';

  @override
  String get commission => 'Zamawiać';

  @override
  String get selectProfileImage => 'Wybierz Obraz profilowy';

  @override
  String get chooseAvatarDescription => 'Lub wybierz awatar z poniższej listy:';

  @override
  String get fullName => 'Pełne imię i nazwisko';

  @override
  String get favoriteDrivers => 'Ulubieni kierowcy';

  @override
  String get distanceTraveled => 'Przebyty dystans';

  @override
  String get rating => 'Ocena';

  @override
  String get map => 'Mapa';

  @override
  String get income => 'Dochód';

  @override
  String get timeSpent => 'Czas spędzony';

  @override
  String get daily => 'Codziennie';

  @override
  String get monthly => 'Miesięczny';

  @override
  String get noRecordsFoundEarnings => 'Nie znaleziono żadnych zapisów podróży dla tych filtrów';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Nie ma jeszcze żadnych informacji zwrotnych';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Nie masz jeszcze wystarczającej liczby opinii do wyświetlenia.';

  @override
  String get feedbacksSummary => 'Podsumowanie opinii';

  @override
  String get feedbacksGoodTitle => 'Doskonała robota!';

  @override
  String get feedbacksGoodSubtitle => 'Twoje oceny jak na razie wyglądają dobrze';

  @override
  String get feedbacksBadTitle => 'Przeciętny';

  @override
  String get feedbacksBadSubtitle => 'Możesz zastosować pewne ulepszenia';

  @override
  String get feedbacksGoodPointsTitle => 'Kilka dobrych punktów o Tobie:';

  @override
  String get feedbacksbadPointsTitle => 'Niektóre punkty możesz poprawić:';

  @override
  String get feedbacksReviewsTitle => 'Niektóre wcześniejsze recenzje';

  @override
  String get payoutMethods => 'Metody wypłaty';

  @override
  String get notice => 'Ogłoszenie:';

  @override
  String get payoutNoticeTitle => 'Będziesz automatycznie otrzymywać płatność od administratora dwa razy w tygodniu.';

  @override
  String get addPayoutMethod => 'Dodaj metodę wypłaty';

  @override
  String get navigate => 'Nawigować';

  @override
  String get noPayoutMethods => 'Brak metod wypłaty';

  @override
  String get name => 'Nazwa';

  @override
  String get nameHint => 'Wprowadź imię';

  @override
  String get bankNameHint => 'Wprowadź nazwę banku';

  @override
  String get branchName => 'Nazwa filii';

  @override
  String get branchNameHint => 'Wprowadź nazwę oddziału';

  @override
  String get accountHolderName => 'Nazwa właściciela konta';

  @override
  String get routingNumber => 'Numer routingu';

  @override
  String get routingNumberHint => 'Wprowadź numer rozliczeniowy';

  @override
  String get accountNumber => 'Numer konta';

  @override
  String get accountNumberHint => 'Wprowadź numer konta';

  @override
  String get addressHint => 'Podaj adres';

  @override
  String get dateOfBith => 'Data urodzenia';

  @override
  String get yearHint => 'Rok';

  @override
  String get monthHint => 'Miesiąc';

  @override
  String get dayHint => 'Dzień';

  @override
  String get city => 'Miasto';

  @override
  String get cityHint => 'Wpisz miasto';

  @override
  String get state => 'Państwo';

  @override
  String get stateHint => 'Wprowadź stan';

  @override
  String get zipCode => 'Kod pocztowy';

  @override
  String get zipCodeHint => 'Wprowadź kod pocztowy';

  @override
  String get day => 'Dzień';

  @override
  String get month => 'Miesiąc';

  @override
  String get year => 'Rok';

  @override
  String get noActivitiesYet => 'Brak aktywności.';

  @override
  String get headingToDestination => 'udając się do celu';

  @override
  String get driverArrivedNotice => 'Kierowca czeka na Ciebie';

  @override
  String get driverShouldAriveInNotice => 'Szacuje się, że kierowca przyjedzie na miejsce';

  @override
  String get driverShouldHaveArrivedNotice => 'Kierowca powinien przyjechać za chwilę';

  @override
  String get deleteAccount => 'Usuń konto';

  @override
  String get deleteAccountNotice => 'Czy na pewno chcesz usunąć swoje konto? Po 30 dniach Twoje konto zostanie trwale usunięte. W tym czasie możesz przywrócić swoje konto, logując się ponownie.';

  @override
  String get confirmAndDeleteAccount => 'Potwierdzać';

  @override
  String get accountDeleted => 'Konto zostało usunięte';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Jestem w drodze do $destination od $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return 'Moje nazwisko kierowcy to $firstName $lastName, numer telefonu komórkowego to $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return 'Osoba ze mną ma na imię $firstName $lastName, numer telefonu komórkowego to $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return 'Podróż rozpoczęła się $startTime i spodziewam się, że podróż zajmie około $duration minut';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'Spodziewam się, że po wejściu do samochodu kierowcy podróż zajmie około $duration minut.';
  }

  @override
  String get sendSOSMessage => 'WAŻNE: Proszę korzystać z tej funkcji tylko w sytuacjach awaryjnych. Skontaktujemy się z władzami w Twoim imieniu.';

  @override
  String get confirmAndSendSOS => 'Potwierdzać';

  @override
  String get sosSentSuccessfully => 'Sygnał SOS został pomyślnie wysłany';

  @override
  String get topUpSuccess => 'Portfel został pomyślnie doładowany';

  @override
  String get cancelNotAllowed => 'Anulowanie już rozpoczętego przejazdu nie jest możliwe.';

  @override
  String get error => 'Błąd';

  @override
  String get connectionError => 'Błąd połączenia';

  @override
  String get serverError => 'Błąd serwera';

  @override
  String get addNewLocation => 'Dodaj nową lokalizację';

  @override
  String get twoWayTrip => 'Podróż w obie strony';

  @override
  String get reportSubmitted => 'Raport przesłany';

  @override
  String get reportSubmittedDescription => 'Twój raport został pomyślnie przesłany, sprawdzimy go i podejmiemy niezbędne działania.';

  @override
  String get cardNumber => 'Numer karty';

  @override
  String get cardNumberHint => 'Wprowadź numer karty';

  @override
  String get expiryDate => 'Data wygaśnięcia';

  @override
  String get expiryDateHint => 'MM/RR';

  @override
  String get noFavoriteDrivers => 'Brak ulubionych kierowców';

  @override
  String get noFavoriteDriversDescription => 'Możesz oznaczyć preferowanych kierowców jako ulubionych podczas oceniania ich po zakończeniu podróży.';

  @override
  String get pickupLocationNotFound => 'Nie mogliśmy określić Twojej aktualnej lokalizacji, używając GPS jako punktu odbioru. Wprowadź ręcznie punkt odbioru.';

  @override
  String get dragToSelect => 'Przeciągnij, aby wybrać';

  @override
  String get skip => 'Pominąć';

  @override
  String get openSettings => 'Otwórz ustawienia';

  @override
  String get locationPermission => 'Pozwolenie na lokalizację';

  @override
  String get locationPermissionDeniedForeverMessage => 'Zezwolenie na lokalizację jest wymagane, aby otrzymywać zamówienia w Twojej okolicy, a także aby pasażer mógł śledzić Twoją lokalizację. Bez tej zgody nie możesz otrzymywać zamówień, a my nie jesteśmy świadomi Twojej aktualnej lokalizacji. Możesz zmienić to uprawnienie w ustawieniach swojego telefonu.';

  @override
  String get allow => 'Umożliwić';

  @override
  String get driverOnlineTitle => 'Szukam przejazdu';

  @override
  String get driverOfflineTitle => 'Połącz się z Internetem, aby zacząć otrzymywać prośby';

  @override
  String get payInCash => 'Zapłata gotówką';

  @override
  String get payInCashDescription => 'Prosimy o dokonanie płatności gotówkowej kierowcy. Kierowca potwierdzi płatność po jej otrzymaniu.';

  @override
  String get addToFavoriteDrivers => 'Dodaj do ulubionych kierowców';

  @override
  String get slideToConfirmArrival => 'Przesuń, aby potwierdzić przybycie';

  @override
  String get slideToConfirmPickup => 'Przesuń, aby potwierdzić odbiór';

  @override
  String get slideToConfirmDropoff => 'Przesuń, aby potwierdzić odbiór';

  @override
  String get noticePickingUpRiderIn => 'Odbiór jeźdźca w:';

  @override
  String get noticeRiderNotified => 'Pasażer został powiadomiony. Odbierz jeźdźca i rozpocznij jazdę';
}
