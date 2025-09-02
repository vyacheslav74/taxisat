import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Hindi (`hi`).
class SHi extends S {
  SHi([String locale = 'hi']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'कॉपीराइट © $company, सर्वाधिकार सुरक्षित।';
  }

  @override
  String get welcomeTitle => 'ऐप में आपका स्वागत है';

  @override
  String get today => 'आज';

  @override
  String get yesterday => 'कल';

  @override
  String get settings => 'समायोजन';

  @override
  String get about => 'के बारे में';

  @override
  String get profileInfo => 'प्रोफ़ाइल जानकारी';

  @override
  String get language => 'भाषा';

  @override
  String get firstName => 'पहला नाम';

  @override
  String get lastName => 'उपनाम';

  @override
  String get mobileNumber => 'मोबाइल नंबर';

  @override
  String get edit => 'संपादन करना';

  @override
  String get enterCode => 'कोड दर्ज करें';

  @override
  String get editProfile => 'प्रोफ़ाइल संपादित करें';

  @override
  String get bankTransfer => 'बैंक ट्रांसफर';

  @override
  String get gift => 'उपहार';

  @override
  String get correction => 'सुधार';

  @override
  String get inappPayment => 'इन-ऐप भुगतान';

  @override
  String get orderFee => 'आदेश शुल्क';

  @override
  String get parkingFee => 'पार्किंग शुल्क';

  @override
  String get cancellationFee => 'रद्दीकरण शुल्क';

  @override
  String get withdraw => 'निकालना';

  @override
  String get walletTransactions => 'वॉलेट लेनदेन';

  @override
  String get addCard => 'कार्ड जोड़ें';

  @override
  String get visa => 'वीज़ा';

  @override
  String get mastercard => 'मास्टर कार्ड';

  @override
  String get addBalance => 'संतुलन जोड़ें';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString मिनट',
      one: '$minutesString मिनट',
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
      other: '$hoursString घंटे',
      one: '$hoursString घंटा',
      zero: 'Zero hours',
    );
    return 'अवधि: $_temp0';
  }

  @override
  String get timePastDue => 'पिछला बकाया';

  @override
  String get justNow => 'बस अब';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString एम';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString किमी';
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
  String get welcomeSubtitle => 'आपके आराम के लिए डिज़ाइन की गई टैक्सी सेवा आपके पसंदीदा ड्राइवरों के साथ यात्राएं करती है और आपकी सवारी प्राथमिकताओं का चयन करती है';

  @override
  String get onboardingRewardTitle => 'पुरस्कृत हो जाओ!';

  @override
  String get onboardingRewardSubtitle => 'किसी मित्र को रेफ़र करने, यात्राएँ पूरी करने तथा और भी बहुत कुछ करने के लिए अतिरिक्त बोनस प्राप्त करें...';

  @override
  String get selectLanguage => 'भाषा चुने';

  @override
  String get searchForLanguage => 'भाषा खोजें';

  @override
  String get enterPhoneNumber => 'फोन नंबर दर्ज';

  @override
  String get actionContinue => 'जारी रखना';

  @override
  String get whereIsYourDestination => 'आपकी मंजिल कहाँ है?';

  @override
  String get whereAreYouGoing => 'आप कहां जा रहे हैं?';

  @override
  String get selectDestinations => 'आपका मार्ग';

  @override
  String get pickupPoint => 'पिक अप बिंदु';

  @override
  String get enterPickupPoint => 'पिक-अप बिंदु दर्ज करें';

  @override
  String get dropoffPoint => 'ड्रॉप ऑफ पॉइंट';

  @override
  String get enterDropoffPoint => 'ड्रॉप-ऑफ़ बिंदु दर्ज करें';

  @override
  String get stopPoint => 'रुकें बिंदु';

  @override
  String get enterStopPoint => 'स्टॉप पॉइंट दर्ज करें';

  @override
  String get confirm => 'पुष्टि करना';

  @override
  String get confirmDropoff => 'ड्रॉप-ऑफ़ की पुष्टि करें';

  @override
  String get confirmPickup => 'पिक-अप की पुष्टि करें';

  @override
  String get enterAtLeast3Characters => 'कम से कम 3 अक्षर दर्ज करें';

  @override
  String get noResults => 'कोई परिणाम नहीं';

  @override
  String get bookNow => 'अभी बुक करें';

  @override
  String get cash => 'नकद';

  @override
  String get online => 'ऑनलाइन';

  @override
  String get offline => 'ऑफलाइन';

  @override
  String get onTrip => 'यात्रा पर';

  @override
  String get confirmPay => 'पुष्टि करना ';

  @override
  String get cancel => 'रद्द करना';

  @override
  String get apply => 'आवेदन करना';

  @override
  String get enterCouponCode => 'परचा कूट दर्ज करें';

  @override
  String get reserveRide => 'रिजर्व सवारी';

  @override
  String get reserveRideMessage => 'वह सटीक तारीख और समय चुनें, जब आप अपनी सवारी आरक्षित कराना चाहते हैं';

  @override
  String get reserveRideMessageSuccess => 'आपकी सवारी सफलतापूर्वक आरक्षित कर दी गई है। आप अपनी आरक्षित सवारी को \'निर्धारित सवारी\' अनुभाग में देख सकते हैं।';

  @override
  String get cancelReservation => 'आरक्षण रद्द करो';

  @override
  String get confirmResrve => 'पुष्टि करना ';

  @override
  String get enterCouponDescription => 'कीमतों पर लागू करने के लिए अपना कूपन कोड डालें';

  @override
  String get enterCoupon => 'कूपन दर्ज करें';

  @override
  String get couponApplied => 'कूपन लागू किया गया';

  @override
  String get couponAppliedDescription => 'कूपन आपकी सवारी के किराये पर लागू कर दिया गया है';

  @override
  String get done => 'हो गया!';

  @override
  String get ridePreferences => 'सवारी प्राथमिकताएँ';

  @override
  String get noWaitTime => 'कोई प्रतीक्षा समय नहीं';

  @override
  String minutesRange(String minutes) {
    return '$minutes मिनट';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds सेकंड';
  }

  @override
  String get rideRequested => 'सवारी का अनुरोध किया गया';

  @override
  String get searchingForAnOnlineDriver => 'ऑनलाइन ड्राइवर की खोज की जा रही है...';

  @override
  String get cancelRide => 'सवारी रद्द करें';

  @override
  String get rideSafety => 'सवारी सुरक्षा';

  @override
  String get shareTripInformation => 'यात्रा की जानकारी साझा करें';

  @override
  String get shareTripInformationDescription => 'आप अपनी यात्रा की जानकारी किसी मित्र के साथ साझा कर सकते हैं';

  @override
  String get sos => 'मुसीबत का इशारा';

  @override
  String get sosDescription => 'अधिकारियों को आपात्कालीन स्थिति के बारे में बताएं';

  @override
  String get reportAnIssue => 'मामले की रिपोर्ट करें';

  @override
  String get reportAnIssueMidTripDescription => 'यात्रा के दौरान सुरक्षा संबंधी कोई मुद्दा साझा करें';

  @override
  String get rideOptions => 'सवारी के विकल्प';

  @override
  String get goBackToRide => 'सवारी के लिए वापस जाएँ';

  @override
  String get waitTime => 'प्रतीक्षा समय';

  @override
  String get couponCode => 'कूपन कोड';

  @override
  String get giftCardCode => 'उपहार कार्ड कोड';

  @override
  String get nicePoints => 'अच्छे अंक';

  @override
  String get negativePoints => 'नकारात्मक बिंदु';

  @override
  String get reviewCommentBoxHint => 'एक टिप्पणी जोड़ने...';

  @override
  String get howWasYourTrip => 'आपकी यात्रा कैसी थी?';

  @override
  String oneStarReviewTitle(String name) {
    return '$name के साथ भयानक यात्रा';
  }

  @override
  String twoStarReviewTitle(String name) {
    return '$name के साथ ख़राब यात्रा';
  }

  @override
  String threeStarReviewTitle(String name) {
    return '$name के साथ औसत यात्रा';
  }

  @override
  String fourStarReviewTitle(String name) {
    return '$name के साथ अच्छी यात्रा';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return '$name के साथ अद्भुत यात्रा';
  }

  @override
  String get submitFeedback => 'प्रतिपुष्टि दें';

  @override
  String get typeAMessage => 'एक संदेश लिखें';

  @override
  String get findAnotherRide => 'कोई और सवारी ढूंढो';

  @override
  String get next => 'अगला';

  @override
  String get searchForDropoffLocation => 'ड्रॉप-ऑफ़ स्थान खोजें';

  @override
  String get searchForPickupLocation => 'पिक-अप स्थान खोजें';

  @override
  String get placeConfirmDialogPlaceholder => 'आपका ड्रॉप ऑफ स्थान कहां है?';

  @override
  String get noAnnouncements => 'कोई घोषणा नहीं';

  @override
  String get announcements => 'घोषणाएं';

  @override
  String reviewsCount(int count) {
    return '($count समीक्षाएं)';
  }

  @override
  String get tripDetails => 'यात्रा विवरण';

  @override
  String get rideDetails => 'सवारी विवरण';

  @override
  String get orderARide => 'सवारी का ऑर्डर दें';

  @override
  String get noRidesYet => 'अभी तक कोई सवारी नहीं!';

  @override
  String get issueSubjectPlaceholder => 'मुद्दे का विषय टाइप करें';

  @override
  String get issueContentPlaceholder => 'समस्या का विवरण टाइप करें';

  @override
  String get reportThisIssue => 'इस समस्या की रिपोर्ट करें';

  @override
  String get fieldIsRequired => 'ये स्थान भरा जाना है';

  @override
  String get ok => 'ठीक है';

  @override
  String get favoriteLocations => 'पसंदीदा स्थान';

  @override
  String get favoriteLocationsSubtitle => 'आसान पहुंच के लिए अपने पसंदीदा स्थान सहेजें';

  @override
  String get createAFavoriteLocation => 'कोई पसंदीदा स्थान बनाएं';

  @override
  String get addressTitleLabel => 'पते का शीर्षक';

  @override
  String get clickToSetLocation => 'स्थान निर्धारित करने के लिए क्लिक करें';

  @override
  String get whereIsYourNewFavoriteLocation => 'आपका नया पसंदीदा स्थान कहाँ है?';

  @override
  String get locateFavoriteLocationDescription => 'सटीक स्थान पिन करने के लिए नीचे दिए गए खोज बॉक्स या मानचित्र का उपयोग करें';

  @override
  String get searchLocation => 'स्थान खोजें';

  @override
  String get saveChanges => 'परिवर्तनों को सुरक्षित करें';

  @override
  String get rideHistory => 'सवारी का इतिहास';

  @override
  String get scheduledRides => 'अनुसूचित सवारी';

  @override
  String get keepTheOrder => 'व्यवस्था बनाए रखें';

  @override
  String get cancelTheRide => 'सवारी रद्द करें';

  @override
  String get walletBalance => 'बटुआ शेष';

  @override
  String get activities => 'गतिविधियाँ';

  @override
  String get pleaseEnterGiftCardCode => 'कृपया उपहार कार्ड कोड दर्ज करें';

  @override
  String get redeem => 'भुनाना';

  @override
  String get enterGiftCardCode => 'उपहार कार्ड कोड दर्ज करें';

  @override
  String get redeemGiftCard => 'गिफ्ट कार्ड रिडीम करें';

  @override
  String get redeemGiftCardDescription => 'इसे भुनाने के लिए अपना उपहार कार्ड कोड दर्ज करें।';

  @override
  String get redeemSuccessTitle => 'उपहार कार्ड भुनाया गया!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'आपने $amount उपहार कार्ड सफलतापूर्वक भुना लिया है।';
  }

  @override
  String get addCredit => 'क्रेडिट जोड़ने';

  @override
  String get payNow => 'अब भुगतान करें';

  @override
  String get addCreditToWallet => 'वॉलेट में क्रेडिट जोड़ें';

  @override
  String get pleaseSelectAmount => 'कृपया राशि चुनें';

  @override
  String get enterAmount => 'राशि डालें';

  @override
  String get selectAmount => 'राशि चुनें:';

  @override
  String get wallet => 'बटुआ';

  @override
  String get totalRides => 'कुल सवारी';

  @override
  String get appSettings => 'एप्लिकेशन सेटिंग';

  @override
  String get mapSettings => 'मानचित्र सेटिंग';

  @override
  String get lanugageSettings => 'लैनुगेज सेटिंग्स';

  @override
  String get paymentMethods => 'भुगतान की विधि';

  @override
  String get selectCards => 'कार्ड चुनें';

  @override
  String get selectCardsDescription => 'आप उन कार्ड नंबरों का चयन कर सकते हैं जिन्हें आप चालान पर भुगतान विधियों की सूची में प्रदर्शित करना चाहते हैं।';

  @override
  String get delete => 'मिटाना';

  @override
  String get nameOnCard => 'कार्ड पर नाम';

  @override
  String get profile => 'प्रोफ़ाइल';

  @override
  String get scheduledRide => 'निर्धारित सवारी';

  @override
  String get addPaymentMethod => 'भुगतान विधि जोड़ें';

  @override
  String get addPaymentMethodDescription => 'अपने खाते में एक नई भुगतान विधि जोड़ें';

  @override
  String get saveCard => 'कार्ड सहेजें';

  @override
  String get selectDialCode => 'डायल कोड चुनें';

  @override
  String get searchCountryName => 'देश का नाम खोजें';

  @override
  String get preferences => 'पसंद:';

  @override
  String get onboardingDescription => 'अपना खाता पंजीकृत करने और आरामदायक सवारी का आनंद लेने से कुछ ही क्षण दूर';

  @override
  String get signInSignUp => 'प्रवेश या साइन अप';

  @override
  String get enterOtp => 'ओटीपी दर्ज करें';

  @override
  String get enterPassword => 'पास वर्ड दर्ज करें';

  @override
  String get enterPasswordDescription => 'जारी रखने के लिए कृपया अपना कूटशब्द दर्ज करें';

  @override
  String get setPassword => 'सांकेतिक शब्द लगना';

  @override
  String get password => 'पासवर्ड';

  @override
  String get passwordRuleDescription => 'निम्नलिखित में से कम से कम दो शामिल करें:';

  @override
  String get passwordRuleLength => '9 से 64 वर्णों के बीच';

  @override
  String get passwordRuleUpperCase => 'बड़ी वर्तनी के अक्षर';

  @override
  String get passwordRuleLowerCase => 'छोटे अक्षर';

  @override
  String get passwordRuleNumber => 'नंबर';

  @override
  String get passwordRuleSpecialCharacter => 'विशेष वर्ण';

  @override
  String get contactDetails => 'सम्पर्क करने का विवरण';

  @override
  String get vehicleDetails => 'वाहन की सूचना';

  @override
  String get payoutInformation => 'भुगतान संबंधी जानकारी';

  @override
  String get documents => 'दस्तावेज़';

  @override
  String get accessDenied => 'पहुंच अस्वीकृत';

  @override
  String get success => 'सफलता';

  @override
  String get skipForNow => 'अभी के लिए छोड़ दे';

  @override
  String get sendOtpDescription => 'आपके फ़ोन नंबर पर एक सत्यापन कोड भेजा गया है';

  @override
  String get resendOtp => 'पुन: कोड भेजे';

  @override
  String get useOtpInstead => 'इसके बजाय ओटीपी का प्रयोग करें';

  @override
  String get home => 'घर';

  @override
  String get logout => 'लॉग आउट';

  @override
  String get driverLicenseNumber => 'ड्राइवर लाइसेंस नंबर';

  @override
  String get email => 'ईमेल';

  @override
  String get address => 'पता';

  @override
  String get gender => 'लिंग';

  @override
  String get genderMale => 'पुरुष';

  @override
  String get genderFemale => 'महिला';

  @override
  String get genderUnknown => 'तटस्थ/अज्ञात';

  @override
  String get vehiclePlateNumber => 'वाहन प्लेट नंबर';

  @override
  String get vehicleColor => 'वाहन का रंग';

  @override
  String get vehicleModelAndMake => 'वाहन मॉडल';

  @override
  String get vehicleProductionYear => 'वाहन उत्पादन वर्ष';

  @override
  String get bankName => 'बैंक का नाम';

  @override
  String get bankRoutingNumber => 'अधिकोष क्रम संख्या';

  @override
  String get bankAccountNumber => 'बैंक खाता संख्या';

  @override
  String get bankSwift => 'स्विफ्ट कोड';

  @override
  String get uploadImage => 'तस्विर अपलोड करना';

  @override
  String get yourBalance => 'आपका बैलेंस';

  @override
  String get rideCancellation => 'सवारी रद्दीकरण';

  @override
  String get cancelRideMessage => 'क्या आप वाकई अपनी यात्रा रद्द करना चाहते हैं?';

  @override
  String get cancelRideSuccess => 'सवारी सफलतापूर्वक रद्द कर दी गई है';

  @override
  String get confirmAndCancelRide => 'पुष्टि करना';

  @override
  String get selectPaymentMethod => 'भुगतान का तरीका चुनें';

  @override
  String get rideFeePaid => 'सवारी का शुल्क चुका दिया गया है';

  @override
  String get rideFeeUnpaid => 'सवारी का शुल्क अभी तक नहीं चुकाया गया है';

  @override
  String get total => 'कुल';

  @override
  String get totalPrice => 'कुल कीमत';

  @override
  String get addCustomCredit => 'कस्टम रेडिट जोड़ें';

  @override
  String get serviceFee => 'सेवा शुल्क';

  @override
  String get serviceOptionFee => 'सेवा विकल्प शुल्क';

  @override
  String get couponDiscount => 'कूपन छूट';

  @override
  String get walletCreit => 'वॉलेट क्रेडिट';

  @override
  String get custom => 'रिवाज़';

  @override
  String get payment => 'भुगतान';

  @override
  String get cashPayment => 'नकद भुगतान';

  @override
  String cashPaymentDescription(String amount) {
    return 'क्या आप पुष्टि करते हैं कि आपको $amount प्राप्त हुआ है?';
  }

  @override
  String get cashPaymentReceived => 'नकद भुगतान प्राप्त हुआ';

  @override
  String get confirmAndEndTrip => 'पुष्टि करना';

  @override
  String get earnings => 'आय';

  @override
  String get acceptOrder => 'आदेश स्वीकार करें';

  @override
  String get canceled => 'रद्द';

  @override
  String get unknown => 'अज्ञात';

  @override
  String get commission => 'आयोग';

  @override
  String get selectProfileImage => 'प्रोफ़ाइल छवि चुनें';

  @override
  String get chooseAvatarDescription => 'या नीचे दी गई सूची से एक अवतार चुनें:';

  @override
  String get fullName => 'पूरा नाम';

  @override
  String get favoriteDrivers => 'पसंदीदा ड्राइवर';

  @override
  String get distanceTraveled => 'तय की गई दूरी';

  @override
  String get rating => 'रेटिंग';

  @override
  String get map => 'नक्शा';

  @override
  String get income => 'आय';

  @override
  String get timeSpent => 'समय बिताया';

  @override
  String get daily => 'दैनिक';

  @override
  String get monthly => 'महीने के';

  @override
  String get noRecordsFoundEarnings => 'इन फ़िल्टर के लिए कोई यात्रा रिकॉर्ड नहीं मिला';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'अभी तक कोई प्रतिक्रिया नहीं';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'आपके पास अभी तक दिखाने के लिए पर्याप्त फीडबैक नहीं हैं।';

  @override
  String get feedbacksSummary => 'फीडबैक सारांश';

  @override
  String get feedbacksGoodTitle => 'बहुत बढ़िया काम!';

  @override
  String get feedbacksGoodSubtitle => 'अब तक आपकी रेटिंग अच्छी लग रही है';

  @override
  String get feedbacksBadTitle => 'औसत';

  @override
  String get feedbacksBadSubtitle => 'आप कुछ सुधारों का उपयोग कर सकते हैं';

  @override
  String get feedbacksGoodPointsTitle => 'आपके बारे में कुछ अच्छी बातें:';

  @override
  String get feedbacksbadPointsTitle => 'कुछ बिंदु जिनमें आप सुधार कर सकते हैं:';

  @override
  String get feedbacksReviewsTitle => 'कुछ पूर्व समीक्षाएँ';

  @override
  String get payoutMethods => 'भुगतान के तरीके';

  @override
  String get notice => 'सूचना:';

  @override
  String get payoutNoticeTitle => 'आपको सप्ताह में दो बार व्यवस्थापक द्वारा स्वचालित रूप से भुगतान किया जाएगा।';

  @override
  String get addPayoutMethod => 'भुगतान विधि जोड़ें';

  @override
  String get navigate => 'नेविगेट';

  @override
  String get noPayoutMethods => 'कोई भुगतान विधि नहीं';

  @override
  String get name => 'नाम';

  @override
  String get nameHint => 'नाम दर्ज करें';

  @override
  String get bankNameHint => 'बैंक का नाम दर्ज करें';

  @override
  String get branchName => 'शाखा का नाम';

  @override
  String get branchNameHint => 'शाखा का नाम दर्ज करें';

  @override
  String get accountHolderName => 'खाता धारक का नाम';

  @override
  String get routingNumber => 'राउटिंग नम्बर';

  @override
  String get routingNumberHint => 'रूटिंग नंबर दर्ज करें';

  @override
  String get accountNumber => 'खाता संख्या';

  @override
  String get accountNumberHint => 'खाता संख्या दर्ज करें';

  @override
  String get addressHint => 'पता दर्ज करें';

  @override
  String get dateOfBith => 'जन्म की तारीख';

  @override
  String get yearHint => 'वर्ष';

  @override
  String get monthHint => 'महीना';

  @override
  String get dayHint => 'दिन';

  @override
  String get city => 'शहर';

  @override
  String get cityHint => 'शहर में प्रवेश करें';

  @override
  String get state => 'राज्य';

  @override
  String get stateHint => 'राज्य दर्ज करें';

  @override
  String get zipCode => 'ज़िप कोड';

  @override
  String get zipCodeHint => 'ज़िप कोड डालें';

  @override
  String get day => 'दिन';

  @override
  String get month => 'महीना';

  @override
  String get year => 'वर्ष';

  @override
  String get noActivitiesYet => 'अभी तक कोई गतिविधि नहीं.';

  @override
  String get headingToDestination => 'गंतव्य की ओर जा रहे हैं';

  @override
  String get driverArrivedNotice => 'ड्राइवर आपका इंतज़ार कर रहा है';

  @override
  String get driverShouldAriveInNotice => 'ड्राइवर के आने का अनुमान है';

  @override
  String get driverShouldHaveArrivedNotice => 'ड्राइवर अब किसी भी समय आ जाएगा';

  @override
  String get deleteAccount => 'खाता हटा दो';

  @override
  String get deleteAccountNotice => 'क्या आप इस खाते को हटाने के लिए सुनिश्चित हैं? 30 दिनों के बाद, आपका खाता स्थायी रूप से हटा दिया जाएगा। इस दौरान आप दोबारा साइन इन करके अपना अकाउंट रीस्टोर कर सकते हैं।';

  @override
  String get confirmAndDeleteAccount => 'पुष्टि करना ';

  @override
  String get accountDeleted => 'खाता हटा दिया गया है';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'मैं $pickup से $destination की ओर जा रहा हूं।';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' मेरे ड्राइवर का नाम $firstName $lastName है, मोबाइल नंबर $mobileNumber है।';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' मेरे साथ सवार का नाम $firstName $lastName है, मोबाइल नंबर $mobileNumber है।';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' यात्रा $startTime को शुरू हो गई है और मुझे उम्मीद है कि यात्रा में लगभग $duration मिनट लगेंगे';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'मुझे उम्मीद है कि ड्राइवर की कार में बैठने के बाद यात्रा में लगभग $duration मिनट लगेंगे।';
  }

  @override
  String get sendSOSMessage => 'महत्वपूर्ण: कृपया इस सुविधा का उपयोग केवल आपातकालीन स्थिति में ही करें। हम आपकी ओर से अधिकारियों से संपर्क करेंगे.';

  @override
  String get confirmAndSendSOS => 'पुष्टि करना ';

  @override
  String get sosSentSuccessfully => 'एसओएस सफलतापूर्वक भेज दिया गया है';

  @override
  String get topUpSuccess => 'वॉलेट को सफलतापूर्वक टॉप अप कर दिया गया है';

  @override
  String get cancelNotAllowed => 'पहले से शुरू की गई सवारी को रद्द करना संभव नहीं है।';

  @override
  String get error => 'गलती';

  @override
  String get connectionError => 'संपर्क त्रुटि';

  @override
  String get serverError => 'सर्वर त्रुटि';

  @override
  String get addNewLocation => 'नया स्थान जोड़ें';

  @override
  String get twoWayTrip => 'दोतरफा यात्रा';

  @override
  String get reportSubmitted => 'रिपोर्ट प्रस्तुत की गई';

  @override
  String get reportSubmittedDescription => 'आपकी रिपोर्ट सफलतापूर्वक सबमिट कर दी गई है, हम इसकी समीक्षा करेंगे और आवश्यक कार्रवाई करेंगे।';

  @override
  String get cardNumber => 'कार्ड संख्या';

  @override
  String get cardNumberHint => 'कार्ड नंबर दर्ज करें';

  @override
  String get expiryDate => 'समाप्ति तिथि';

  @override
  String get expiryDateHint => 'महीना साल';

  @override
  String get noFavoriteDrivers => 'कोई पसंदीदा ड्राइवर नहीं';

  @override
  String get noFavoriteDriversDescription => 'आप यात्रा के बाद अपने पसंदीदा ड्राइवरों को रेटिंग देते समय उन्हें पसंदीदा के रूप में चिह्नित कर सकते हैं।';

  @override
  String get pickupLocationNotFound => 'हम पिकअप बिंदु के रूप में जीपीएस का उपयोग करके आपका वर्तमान स्थान निर्धारित करने में असमर्थ थे। कृपया अपना पिकअप पॉइंट मैन्युअल रूप से दर्ज करें।';

  @override
  String get dragToSelect => 'चयन करने के लिए खींचें';

  @override
  String get skip => 'छोडना';

  @override
  String get openSettings => 'खुली सेटिंग';

  @override
  String get locationPermission => 'स्थान की अनुमति';

  @override
  String get locationPermissionDeniedForeverMessage => 'आपके आस-पास ऑर्डर प्राप्त करने के लिए और राइडर के लिए आपके स्थान को ट्रैक करने के लिए स्थान की अनुमति एक आवश्यकता है। आप इस अनुमति के बिना ऑर्डर प्राप्त नहीं कर सकते हैं और हमें आपके वर्तमान स्थान से सावधान रहना चाहिए। आप इस अनुमति को अपनी फ़ोन सेटिंग में बदल सकते हैं.';

  @override
  String get allow => 'अनुमति दें';

  @override
  String get driverOnlineTitle => 'सवारी ढूंढ रहा हूँ';

  @override
  String get driverOfflineTitle => 'अनुरोध प्राप्त करना शुरू करने के लिए ऑनलाइन हो जाएँ';

  @override
  String get payInCash => 'नकद भुगतान';

  @override
  String get payInCashDescription => 'कृपया ड्राइवर को नकद भुगतान के साथ आगे बढ़ें। भुगतान प्राप्त होते ही ड्राइवर इसकी पुष्टि करेगा।';

  @override
  String get addToFavoriteDrivers => 'पसंदीदा ड्राइवरों में जोड़ें';

  @override
  String get slideToConfirmArrival => 'आगमन की पुष्टि के लिए स्लाइड करें';

  @override
  String get slideToConfirmPickup => 'पिकअप की पुष्टि के लिए स्लाइड करें';

  @override
  String get slideToConfirmDropoff => 'ड्रॉप-ऑफ़ की पुष्टि करने के लिए स्लाइड करें';

  @override
  String get noticePickingUpRiderIn => 'सवार को उठा रहा हूँ:';

  @override
  String get noticeRiderNotified => 'राइडर को सूचित कर दिया गया है, राइडर को उठाएँ और सवारी शुरू करें';
}
