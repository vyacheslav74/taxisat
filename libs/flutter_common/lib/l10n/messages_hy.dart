import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Armenian (`hy`).
class SHy extends S {
  SHy([String locale = 'hy']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Հեղինակային իրավունք © $company, Բոլոր իրավունքները պաշտպանված են:';
  }

  @override
  String get welcomeTitle => 'Բարի գալուստ հավելված';

  @override
  String get today => 'Այսօր';

  @override
  String get yesterday => 'Երեկ';

  @override
  String get settings => 'Կարգավորումներ';

  @override
  String get about => 'Մասին';

  @override
  String get profileInfo => 'Պրոֆիլի տվյալներ';

  @override
  String get language => 'Լեզու';

  @override
  String get firstName => 'Անուն';

  @override
  String get lastName => 'Ազգանուն';

  @override
  String get mobileNumber => 'Բջջայինի համար';

  @override
  String get edit => 'Խմբագրել';

  @override
  String get enterCode => 'Մուտքագրեք կոդը';

  @override
  String get editProfile => 'Խմբագրել պրոֆիլը';

  @override
  String get bankTransfer => 'Բանկային փոխանցում';

  @override
  String get gift => 'Նվեր';

  @override
  String get correction => 'Ուղղում';

  @override
  String get inappPayment => 'Ներծրագրային վճարում';

  @override
  String get orderFee => 'Պատվերի վճար';

  @override
  String get parkingFee => 'Ավտոկայանատեղի վճար';

  @override
  String get cancellationFee => 'Չեղարկման վճար';

  @override
  String get withdraw => 'Հանել';

  @override
  String get walletTransactions => 'Դրամապանակով գործարքներ';

  @override
  String get addCard => 'Ավելացնել քարտ';

  @override
  String get visa => 'Վիզա';

  @override
  String get mastercard => 'Mastercard';

  @override
  String get addBalance => 'Ավելացնել մնացորդ';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString րոպե',
      one: '$minutesString րոպե',
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
      other: '$hoursString Ժամ',
      one: '$hoursString Ժամ',
      zero: 'Zero hours',
    );
    return 'Տևողությունը՝ $_temp0';
  }

  @override
  String get timePastDue => 'Ժամկետանց ժամկետանց';

  @override
  String get justNow => 'Հենց հիմա';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString մ';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString կմ';
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
  String get welcomeSubtitle => 'Ձեր հարմարավետության համար նախատեսված տաքսի ծառայությունը կատարեք Ուղևորություններ ձեր սիրելի վարորդների հետ և ընտրեք ձեր նախընտրությունները';

  @override
  String get onboardingRewardTitle => 'Ստացեք պարգևատրում:';

  @override
  String get onboardingRewardSubtitle => 'Ստացեք հավելյալ բոնուսներ ընկերոջը ուղղորդելու, ուղևորություններ ավարտելու և շատ ավելին...';

  @override
  String get selectLanguage => 'Ընտրել լեզուն';

  @override
  String get searchForLanguage => 'Որոնել լեզուն';

  @override
  String get enterPhoneNumber => 'Մուտքագրեք Հեռախոսահամարը';

  @override
  String get actionContinue => 'Շարունակել';

  @override
  String get whereIsYourDestination => 'Որտե՞ղ է ձեր նպատակակետը:';

  @override
  String get whereAreYouGoing => 'Ուր ես գնում?';

  @override
  String get selectDestinations => 'Ձեր երթուղին';

  @override
  String get pickupPoint => 'Վերցնելու կետ';

  @override
  String get enterPickupPoint => 'Մուտքագրեք հավաքման կետը';

  @override
  String get dropoffPoint => 'Նվազման կետ';

  @override
  String get enterDropoffPoint => 'Մուտքագրեք թողարկման կետը';

  @override
  String get stopPoint => 'Կանգառի կետ';

  @override
  String get enterStopPoint => 'Մուտքագրեք կանգառի կետը';

  @override
  String get confirm => 'Հաստատել';

  @override
  String get confirmDropoff => 'Հաստատեք դուրս գալը';

  @override
  String get confirmPickup => 'Հաստատեք վերցնելը';

  @override
  String get enterAtLeast3Characters => 'Մուտքագրեք առնվազն 3 նիշ';

  @override
  String get noResults => 'Ոչ մի արդյունք';

  @override
  String get bookNow => 'Ամրագրեք հիմա';

  @override
  String get cash => 'Կանխիկ';

  @override
  String get online => 'Առցանց';

  @override
  String get offline => 'Անցանց';

  @override
  String get onTrip => 'Ուղևորության ժամանակ';

  @override
  String get confirmPay => 'Հաստատել ';

  @override
  String get cancel => 'Չեղարկել';

  @override
  String get apply => 'Դիմել';

  @override
  String get enterCouponCode => 'Մուտքագրեք կտրոնի կոդը';

  @override
  String get reserveRide => 'Պահուստային զբոսանք';

  @override
  String get reserveRideMessage => 'Ընտրեք ճշգրիտ ամսաթիվը և ժամը, որը ցանկանում եք, որ ձեր ուղևորությունը ամրագրվի';

  @override
  String get reserveRideMessageSuccess => 'Ձեր ուղևորությունը հաջողությամբ ամրագրված է: Դուք կարող եք դիտել ձեր վերապահված ուղևորությունները «Պլանավորված ուղևորություններ» բաժնում:';

  @override
  String get cancelReservation => 'Չեղարկել ամրագրումը';

  @override
  String get confirmResrve => 'Հաստատել ';

  @override
  String get enterCouponDescription => 'Տեղադրեք ձեր կուպոնի կոդը, որը կկիրառվի գների վրա';

  @override
  String get enterCoupon => 'Մուտքագրեք կտրոնը';

  @override
  String get couponApplied => 'Կտրոնը կիրառվում է';

  @override
  String get couponAppliedDescription => 'Կտրոնը կիրառվել է ձեր ուղևորության ուղեվարձի համար';

  @override
  String get done => 'Կատարած!';

  @override
  String get ridePreferences => 'Ուղևորության նախապատվություններ';

  @override
  String get noWaitTime => 'Սպասելու ժամանակ չկա';

  @override
  String minutesRange(String minutes) {
    return '$minutes րոպե';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds վայրկյան';
  }

  @override
  String get rideRequested => 'Ուղևորություն է պահանջվում';

  @override
  String get searchingForAnOnlineDriver => 'Առցանց վարորդի որոնում...';

  @override
  String get cancelRide => 'Չեղարկել ուղևորությունը';

  @override
  String get rideSafety => 'Ուղևորության անվտանգություն';

  @override
  String get shareTripInformation => 'Կիսվեք ուղևորության մասին տեղեկություններով';

  @override
  String get shareTripInformationDescription => 'Դուք կարող եք կիսվել ձեր ուղևորության մասին ընկերոջ հետ';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Տեղեկացրեք իշխանություններին արտակարգ իրավիճակի մասին';

  @override
  String get reportAnIssue => 'Հաղորդել խնդրի մասին';

  @override
  String get reportAnIssueMidTripDescription => 'Կիսվեք անվտանգության խնդրի հետ ուղևորության ժամանակ';

  @override
  String get rideOptions => 'Ուղևորության ընտրանքներ';

  @override
  String get goBackToRide => 'Վերադարձեք՝ քշելու';

  @override
  String get waitTime => 'Սպասեք ժամանակ';

  @override
  String get couponCode => 'Կտրոնի կոդը';

  @override
  String get giftCardCode => 'Նվեր քարտի կոդը';

  @override
  String get nicePoints => 'Հաճելի միավորներ';

  @override
  String get negativePoints => 'Բացասական միավորներ';

  @override
  String get reviewCommentBoxHint => 'Ավելացնել մեկնաբանություն...';

  @override
  String get howWasYourTrip => 'Ինչպես անցավ քո ճանապարհորդությունը?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Սարսափելի ճամփորդություն $name-ով';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Վատ ճանապարհորդություն $name-ով';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Միջին ուղևորությունը $name-ով';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Բարի ճանապարհ $name-ի հետ';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Հիանալի ճամփորդություն $name-ով';
  }

  @override
  String get submitFeedback => 'Հետադարձ կապ ուղարկել';

  @override
  String get typeAMessage => 'Մուտքագրեք հաղորդագրություն';

  @override
  String get findAnotherRide => 'Գտեք մեկ այլ ուղևորություն';

  @override
  String get next => 'Հաջորդը';

  @override
  String get searchForDropoffLocation => 'Փնտրեք վայրէջքի վայր';

  @override
  String get searchForPickupLocation => 'Փնտրեք հավաքման վայր';

  @override
  String get placeConfirmDialogPlaceholder => 'Որտե՞ղ է ձեր մեկնելու վայրը:';

  @override
  String get noAnnouncements => 'Ոչ մի հայտարարություն';

  @override
  String get announcements => 'Հայտարարություններ';

  @override
  String reviewsCount(int count) {
    return '($count ակնարկներ)';
  }

  @override
  String get tripDetails => 'Ուղևորության մանրամասները';

  @override
  String get rideDetails => 'Ուղևորության մանրամասները';

  @override
  String get orderARide => 'Պատվիրեք զբոսանք';

  @override
  String get noRidesYet => 'Դեռևս ուղևորություններ չկան:';

  @override
  String get issueSubjectPlaceholder => 'Մուտքագրեք հարցի թեման';

  @override
  String get issueContentPlaceholder => 'Մուտքագրեք խնդրի նկարագրությունը';

  @override
  String get reportThisIssue => 'Հաղորդել այս խնդրի մասին';

  @override
  String get fieldIsRequired => 'Դաշտը պարտադիր է';

  @override
  String get ok => 'լավ';

  @override
  String get favoriteLocations => 'Սիրված վայրերը';

  @override
  String get favoriteLocationsSubtitle => 'Պահպանեք ձեր նախընտրած վայրերը՝ ավելի հեշտ մուտք գործելու համար';

  @override
  String get createAFavoriteLocation => 'Ստեղծեք սիրելի վայր';

  @override
  String get addressTitleLabel => 'Հասցեի անվանումը';

  @override
  String get clickToSetLocation => 'Սեղմեք՝ տեղադրությունը սահմանելու համար';

  @override
  String get whereIsYourNewFavoriteLocation => 'Որտե՞ղ է ձեր նոր սիրելի վայրը:';

  @override
  String get locateFavoriteLocationDescription => 'Օգտագործեք ստորև գտնվող որոնման դաշտը կամ քարտեզը՝ ճշգրիտ վայրը ամրացնելու համար';

  @override
  String get searchLocation => 'Որոնել գտնվելու վայրը';

  @override
  String get saveChanges => 'Պահպանել փոփոխությունները';

  @override
  String get rideHistory => 'Ուղևորության պատմություն';

  @override
  String get scheduledRides => 'Պլանավորված զբոսանքներ';

  @override
  String get keepTheOrder => 'Պահպանեք կարգը';

  @override
  String get cancelTheRide => 'Չեղարկել ուղևորությունը';

  @override
  String get walletBalance => 'Դրամապանակի մնացորդը';

  @override
  String get activities => 'Գործունեություն';

  @override
  String get pleaseEnterGiftCardCode => 'Խնդրում ենք մուտքագրել նվեր քարտի կոդը';

  @override
  String get redeem => 'Փրկել';

  @override
  String get enterGiftCardCode => 'Մուտքագրեք նվեր քարտի կոդը';

  @override
  String get redeemGiftCard => 'Փրկեք նվեր քարտը';

  @override
  String get redeemGiftCardDescription => 'Մուտքագրեք ձեր նվեր քարտի կոդը՝ այն մարելու համար:';

  @override
  String get redeemSuccessTitle => 'Նվեր քարտը մարվել է:';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Դուք հաջողությամբ մարել եք $amount նվեր քարտը։';
  }

  @override
  String get addCredit => 'Ավելացնել վարկ';

  @override
  String get payNow => 'Վճարեք հիմա';

  @override
  String get addCreditToWallet => 'Ավելացրեք վարկ դրամապանակին';

  @override
  String get pleaseSelectAmount => 'Խնդրում ենք ընտրել գումարը';

  @override
  String get enterAmount => 'Մուտքագրեք գումարը';

  @override
  String get selectAmount => 'Ընտրեք գումարը.';

  @override
  String get wallet => 'Դրամապանակ';

  @override
  String get totalRides => 'Ընդհանուր ուղևորություններ';

  @override
  String get appSettings => 'Հավելվածի կարգավորումներ';

  @override
  String get mapSettings => 'Քարտեզի կարգավորումներ';

  @override
  String get lanugageSettings => 'Լեզվի կարգավորումներ';

  @override
  String get paymentMethods => 'Վճարման մեթոդներ';

  @override
  String get selectCards => 'Ընտրեք քարտեր';

  @override
  String get selectCardsDescription => 'Դուք կարող եք ընտրել քարտի համարները, որոնք ցանկանում եք, որ ցուցադրվեն հաշիվ-ապրանքագրերի վճարման եղանակների ցանկում:';

  @override
  String get delete => 'Ջնջել';

  @override
  String get nameOnCard => 'Անունը քարտի վրա';

  @override
  String get profile => 'Անձնագիր';

  @override
  String get scheduledRide => 'Պլանավորված ուղևորություն';

  @override
  String get addPaymentMethod => 'Ավելացնել վճարման եղանակ';

  @override
  String get addPaymentMethodDescription => 'Ձեր հաշվին ավելացրեք վճարման նոր եղանակ';

  @override
  String get saveCard => 'Պահպանել քարտը';

  @override
  String get selectDialCode => 'Ընտրեք հավաքման կոդը';

  @override
  String get searchCountryName => 'Որոնել երկրի անունը';

  @override
  String get preferences => 'Նախապատվություններ:';

  @override
  String get onboardingDescription => 'Ձեր հաշիվը գրանցելուց և հարմարավետ զբոսանքներից մի քանի րոպե հեռու';

  @override
  String get signInSignUp => 'Մուտք գործեք / Գրանցվեք';

  @override
  String get enterOtp => 'Մուտքագրեք OTP';

  @override
  String get enterPassword => 'Մուտքագրեք գաղտնաբառը';

  @override
  String get enterPasswordDescription => 'Շարունակելու համար խնդրում ենք մուտքագրել ձեր գաղտնաբառը';

  @override
  String get setPassword => 'Սահմանել գաղտնաբառը';

  @override
  String get password => 'Գաղտնաբառ';

  @override
  String get passwordRuleDescription => 'Ներառեք հետևյալներից առնվազն երկուսը.';

  @override
  String get passwordRuleLength => '9-ից 64 նիշերի միջև';

  @override
  String get passwordRuleUpperCase => 'Մեծատառեր';

  @override
  String get passwordRuleLowerCase => 'Փոքրատառեր';

  @override
  String get passwordRuleNumber => 'Թվեր';

  @override
  String get passwordRuleSpecialCharacter => 'Հատուկ կերպարներ';

  @override
  String get contactDetails => 'Կոնտակտային տվյալներ';

  @override
  String get vehicleDetails => 'Տրանսպորտային միջոցների մանրամասները';

  @override
  String get payoutInformation => 'Վճարման մասին տեղեկատվություն';

  @override
  String get documents => 'Փաստաթղթեր';

  @override
  String get accessDenied => 'Մուտքն արգելված է';

  @override
  String get success => 'Հաջողություն';

  @override
  String get skipForNow => 'Առայժմ բաց թողեք';

  @override
  String get sendOtpDescription => 'Ձեր հեռախոսահամարին ուղարկվել է հաստատման կոդը';

  @override
  String get resendOtp => 'Կրկին ուղարկել կոդը';

  @override
  String get useOtpInstead => 'Փոխարենը օգտագործեք OTP';

  @override
  String get home => 'տուն';

  @override
  String get logout => 'Դուրս գալ';

  @override
  String get driverLicenseNumber => 'Վարորդական իրավունքի համարը';

  @override
  String get email => 'Էլ';

  @override
  String get address => 'Հասցե';

  @override
  String get gender => 'Սեռ';

  @override
  String get genderMale => 'Արական';

  @override
  String get genderFemale => 'իգական';

  @override
  String get genderUnknown => 'Չեզոք / Անհայտ';

  @override
  String get vehiclePlateNumber => 'Մեքենայի համարանիշը';

  @override
  String get vehicleColor => 'Մեքենայի գույնը';

  @override
  String get vehicleModelAndMake => 'Մեքենայի մոդել ';

  @override
  String get vehicleProductionYear => 'Մեքենաների արտադրության տարին';

  @override
  String get bankName => 'Բանկի անվանումը';

  @override
  String get bankRoutingNumber => 'Բանկի երթուղային համարը';

  @override
  String get bankAccountNumber => 'Բանկային հաշվի համարը';

  @override
  String get bankSwift => 'SWIFT կոդը';

  @override
  String get uploadImage => 'Վերբեռնել պատկերը';

  @override
  String get yourBalance => 'Ձեր հաշվեկշիռը';

  @override
  String get rideCancellation => 'Ուղևորության չեղարկում';

  @override
  String get cancelRideMessage => 'Իսկապե՞ս ուզում եք չեղարկել ձեր ուղևորությունը:';

  @override
  String get cancelRideSuccess => 'Ուղևորությունը հաջողությամբ չեղարկվել է';

  @override
  String get confirmAndCancelRide => 'Հաստատել ';

  @override
  String get selectPaymentMethod => 'Ընտրեք վճարման եղանակը';

  @override
  String get rideFeePaid => 'Ուղևորության վճարը վճարված է';

  @override
  String get rideFeeUnpaid => 'Ուղևորության վճարը դեռ չի վճարվել';

  @override
  String get total => 'Ընդամենը';

  @override
  String get totalPrice => 'Ընդհանուր գինը';

  @override
  String get addCustomCredit => 'Ավելացրեք հատուկ վերանայում';

  @override
  String get serviceFee => 'Ծառայության վճար';

  @override
  String get serviceOptionFee => 'Ծառայության տարբերակի վճար';

  @override
  String get couponDiscount => 'Կտրոնային զեղչ';

  @override
  String get walletCreit => 'Դրամապանակի վարկ';

  @override
  String get custom => 'Պատվերով';

  @override
  String get payment => 'Վճարում';

  @override
  String get cashPayment => 'Կանխիկ վճարում';

  @override
  String cashPaymentDescription(String amount) {
    return 'Հաստատու՞մ եք, որ ստացել եք $amount։';
  }

  @override
  String get cashPaymentReceived => 'Ստացվել է կանխիկ վճարում';

  @override
  String get confirmAndEndTrip => 'Հաստատել ';

  @override
  String get earnings => 'Շահույթ';

  @override
  String get acceptOrder => 'Ընդունել պատվեր';

  @override
  String get canceled => 'Չեղարկված է';

  @override
  String get unknown => 'Անհայտ';

  @override
  String get commission => 'հանձնաժողով';

  @override
  String get selectProfileImage => 'Ընտրեք պրոֆիլի պատկերը';

  @override
  String get chooseAvatarDescription => 'Կամ ընտրեք ավատար ստորև բերված ցանկից.';

  @override
  String get fullName => 'Ամբողջական անուն';

  @override
  String get favoriteDrivers => 'Սիրված վարորդներ';

  @override
  String get distanceTraveled => 'Անցած հեռավորությունը';

  @override
  String get rating => 'Վարկանիշ';

  @override
  String get map => 'Քարտեզ';

  @override
  String get income => 'Եկամուտ';

  @override
  String get timeSpent => 'Ծախսված ժամանակը';

  @override
  String get daily => 'Ամենօրյա';

  @override
  String get monthly => 'Ամսական';

  @override
  String get noRecordsFoundEarnings => 'Այս զտիչների համար ուղևորությունների գրանցում չի գտնվել';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Հետադարձ կապ դեռ չկա';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Դուք դեռ բավարար արձագանքներ չունեք ցուցադրելու համար:';

  @override
  String get feedbacksSummary => 'Հետադարձ կապի ամփոփում';

  @override
  String get feedbacksGoodTitle => 'Գերազանց Աշխատանք!';

  @override
  String get feedbacksGoodSubtitle => 'Ձեր գնահատականներն առայժմ լավ են թվում';

  @override
  String get feedbacksBadTitle => 'Միջին';

  @override
  String get feedbacksBadSubtitle => 'Դուք կարող եք օգտագործել որոշ բարելավումներ';

  @override
  String get feedbacksGoodPointsTitle => 'Որոշ լավ կետեր ձեր մասին.';

  @override
  String get feedbacksbadPointsTitle => 'Որոշ կետեր, որոնք կարող եք բարելավել.';

  @override
  String get feedbacksReviewsTitle => 'Որոշ ավելի վաղ ակնարկներ';

  @override
  String get payoutMethods => 'Վճարման մեթոդներ';

  @override
  String get notice => 'Ծանուցում.';

  @override
  String get payoutNoticeTitle => 'Ադմինը ձեզ ավտոմատ կերպով կվճարի շաբաթը երկու անգամ։';

  @override
  String get addPayoutMethod => 'Ավելացնել վճարման մեթոդ';

  @override
  String get navigate => 'Նավարկություն';

  @override
  String get noPayoutMethods => 'Վճարման մեթոդներ չկան';

  @override
  String get name => 'Անուն';

  @override
  String get nameHint => 'Մուտքագրեք անունը';

  @override
  String get bankNameHint => 'Մուտքագրեք բանկի անունը';

  @override
  String get branchName => 'Մասնաճյուղի անուն';

  @override
  String get branchNameHint => 'Մուտքագրեք մասնաճյուղի անվանումը';

  @override
  String get accountHolderName => 'Հաշվատիրոջ անունը';

  @override
  String get routingNumber => 'Երթուղու համարը';

  @override
  String get routingNumberHint => 'Մուտքագրեք երթուղային համարը';

  @override
  String get accountNumber => 'Հաշվեհամար';

  @override
  String get accountNumberHint => 'Մուտքագրեք հաշվի համարը';

  @override
  String get addressHint => 'Մուտքագրեք հասցեն';

  @override
  String get dateOfBith => 'Ծննդյան ամսաթիվ';

  @override
  String get yearHint => 'Տարի';

  @override
  String get monthHint => 'Ամիս';

  @override
  String get dayHint => 'Օր';

  @override
  String get city => 'Քաղաք';

  @override
  String get cityHint => 'Մուտքագրեք քաղաքը';

  @override
  String get state => 'Պետություն';

  @override
  String get stateHint => 'Մուտքագրեք պետություն';

  @override
  String get zipCode => 'Փոստային ինդեքս';

  @override
  String get zipCodeHint => 'Մուտքագրեք փոստային կոդը';

  @override
  String get day => 'Օր';

  @override
  String get month => 'Ամիս';

  @override
  String get year => 'Տարի';

  @override
  String get noActivitiesYet => 'Գործունեություն դեռ չկա:';

  @override
  String get headingToDestination => 'ուղղություն դեպի նպատակակետ';

  @override
  String get driverArrivedNotice => 'Վարորդը սպասում է ձեզ';

  @override
  String get driverShouldAriveInNotice => 'Մոտավոր հաշվարկներով վարորդը ժամանել է ներս';

  @override
  String get driverShouldHaveArrivedNotice => 'Վարորդը ցանկացած պահի պետք է ժամանի';

  @override
  String get deleteAccount => 'Հաշիվը ջնջել';

  @override
  String get deleteAccountNotice => 'Իսկապե՞ս ուզում եք ջնջել ձեր հաշիվը: 30 օր հետո ձեր հաշիվն ընդմիշտ կջնջվի: Այս ընթացքում դուք կարող եք վերականգնել ձեր հաշիվը՝ նորից մուտք գործելով:';

  @override
  String get confirmAndDeleteAccount => 'Հաստատել ';

  @override
  String get accountDeleted => 'Հաշիվը ջնջվել է';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return '$pickup-ից $destination-ի ճանապարհին եմ։';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Իմ վարորդի անունը $firstName $lastName է, բջջային համարը՝ $mobileNumber։';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' Ինձ հետ հեծյալի անունը $firstName $lastName է, բջջային համարը՝ $mobileNumber։';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Ուղևորությունը սկսվել է $startTime-ին, և ես ակնկալում եմ, որ ճանապարհորդությունը կտևի մոտավորապես $duration րոպե';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Ես ակնկալում եմ, որ ճանապարհորդությունը կտևի մոտավորապես $duration րոպե, երբ ես նստեմ վարորդի մեքենան:';
  }

  @override
  String get sendSOSMessage => 'ԿԱՐԵՎՈՐ. Խնդրում ենք օգտագործել այս հնարավորությունը միայն արտակարգ իրավիճակների դեպքում: Մենք ձեր անունից կկապվենք իշխանությունների հետ:';

  @override
  String get confirmAndSendSOS => 'Հաստատել ';

  @override
  String get sosSentSuccessfully => 'SOS-ը հաջողությամբ ուղարկվել է';

  @override
  String get topUpSuccess => 'Դրամապանակը հաջողությամբ լիցքավորվել է';

  @override
  String get cancelNotAllowed => 'Արդեն սկսված երթի չեղարկումը հնարավոր չէ:';

  @override
  String get error => 'Սխալ';

  @override
  String get connectionError => 'Միացման սխալ';

  @override
  String get serverError => 'Սերվերի սխալ';

  @override
  String get addNewLocation => 'Ավելացնել նոր տեղադրություն';

  @override
  String get twoWayTrip => 'Երկկողմանի ուղևորություն';

  @override
  String get reportSubmitted => 'Զեկույցն ուղարկված է';

  @override
  String get reportSubmittedDescription => 'Ձեր հաշվետվությունը հաջողությամբ ներկայացվել է, մենք կուսումնասիրենք այն և կձեռնարկենք անհրաժեշտ գործողություններ:';

  @override
  String get cardNumber => 'Քարտի համար';

  @override
  String get cardNumberHint => 'Մուտքագրեք քարտի համարը';

  @override
  String get expiryDate => 'Ժամկետի ժամկետը';

  @override
  String get expiryDateHint => 'MM/YY';

  @override
  String get noFavoriteDrivers => 'Սիրված վարորդներ չկան';

  @override
  String get noFavoriteDriversDescription => 'Դուք կարող եք նշել ձեր նախընտրած վարորդներին որպես ֆավորիտներ, երբ դրանք գնահատեք ուղևորությունից հետո:';

  @override
  String get pickupLocationNotFound => 'Մենք չկարողացանք որոշել ձեր ընթացիկ գտնվելու վայրը՝ օգտագործելով GPS-ը որպես վերցնելու կետ: Խնդրում ենք ձեռքով մուտքագրել ձեր հավաքման կետը:';

  @override
  String get dragToSelect => 'Քաշեք՝ ընտրելու համար';

  @override
  String get skip => 'Բաց թողնել';

  @override
  String get openSettings => 'Բացեք Պարամետրերը';

  @override
  String get locationPermission => 'Տեղադրության թույլտվություն';

  @override
  String get locationPermissionDeniedForeverMessage => 'Տեղադրության թույլտվությունը պահանջ է ձեր շուրջը պատվերներ ստանալու համար, ինչպես նաև ձեր գտնվելու վայրը հետևելու համար: Դուք չեք կարող պատվերներ ստանալ առանց այս թույլտվության, և մենք զգուշանում ենք ձեր ընթացիկ գտնվելու վայրից: Դուք կարող եք փոխել այս թույլտվությունը ձեր հեռախոսի կարգավորումներում:';

  @override
  String get allow => 'Թույլատրել';

  @override
  String get driverOnlineTitle => 'Ուղևորության որոնում';

  @override
  String get driverOfflineTitle => 'Միացեք առցանց՝ հարցումներ ստանալու համար';

  @override
  String get payInCash => 'Կանխիկ վճարում';

  @override
  String get payInCashDescription => 'Խնդրում ենք շարունակել վարորդին կանխիկ վճարումը։ Վարորդը կհաստատի վճարումը ստանալուց հետո:';

  @override
  String get addToFavoriteDrivers => 'Ավելացնել սիրելի վարորդներին';

  @override
  String get slideToConfirmArrival => 'Սահեցրեք ժամանումը հաստատելու համար';

  @override
  String get slideToConfirmPickup => 'Սահեցրեք՝ վերցնելը հաստատելու համար';

  @override
  String get slideToConfirmDropoff => 'Սահեցրեք՝ թողնելը հաստատելու համար';

  @override
  String get noticePickingUpRiderIn => 'Հեծանվորդին վերցնելը հետևյալում.';

  @override
  String get noticeRiderNotified => 'Հեծանվորդը ծանուցվել է, վերցրեք վարորդին և սկսեք երթևեկությունը';
}
