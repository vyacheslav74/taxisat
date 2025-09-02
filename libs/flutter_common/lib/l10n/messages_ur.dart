import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Urdu (`ur`).
class SUr extends S {
  SUr([String locale = 'ur']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'کاپی رائٹ © $company، جملہ حقوق محفوظ ہیں۔';
  }

  @override
  String get welcomeTitle => 'ایپ میں خوش آمدید';

  @override
  String get today => 'آج';

  @override
  String get yesterday => 'کل';

  @override
  String get settings => 'ترتیبات';

  @override
  String get about => 'کے بارے میں';

  @override
  String get profileInfo => 'پروفائل کی معلومات';

  @override
  String get language => 'زبان';

  @override
  String get firstName => 'پہلا نام';

  @override
  String get lastName => 'آخری نام';

  @override
  String get mobileNumber => 'موبائل فون کانمبر';

  @override
  String get edit => 'ترمیم';

  @override
  String get enterCode => 'کوڈ درج کریں';

  @override
  String get editProfile => 'پروفائل میں ترمیم کریں';

  @override
  String get bankTransfer => 'بینک ٹرانسفر';

  @override
  String get gift => 'تحفہ';

  @override
  String get correction => 'تصحیح';

  @override
  String get inappPayment => 'درون ایپ ادائیگی';

  @override
  String get orderFee => 'آرڈر کی فیس';

  @override
  String get parkingFee => 'پارکنگ فیس';

  @override
  String get cancellationFee => 'منسوخی کی فیس';

  @override
  String get withdraw => 'واپس لینا';

  @override
  String get walletTransactions => 'بٹوے کے لین دین';

  @override
  String get addCard => 'کارڈ شامل کریں۔';

  @override
  String get visa => 'ویزا';

  @override
  String get mastercard => 'ماسٹر کارڈ';

  @override
  String get addBalance => 'بیلنس شامل کریں۔';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString منٹ',
      one: '$minutesString منٹ',
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
      other: '$hoursString Hours',
      one: '$hoursString Hour',
      zero: 'Zero hours',
    );
    return 'دورانیہ: $_temp0';
  }

  @override
  String get timePastDue => 'بقایاجات';

  @override
  String get justNow => 'ابھی ابھی';

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

    return '$distanceString کلومیٹر';
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
  String get welcomeSubtitle => 'آپ کے آرام کے لیے بنائی گئی ٹیکسی سروس آپ کے پسندیدہ ڈرائیوروں کے ساتھ ٹرپ رکھتی ہے اور اپنی سواری کی ترجیحات کا انتخاب کرتی ہے۔';

  @override
  String get onboardingRewardTitle => 'انعام حاصل کریں!';

  @override
  String get onboardingRewardSubtitle => 'دوست کا حوالہ دینے، ٹرپس مکمل کرنے اور بہت کچھ کرنے کے لیے اضافی بونس حاصل کریں...';

  @override
  String get selectLanguage => 'زبان منتخب کریں۔';

  @override
  String get searchForLanguage => 'زبان تلاش کریں۔';

  @override
  String get enterPhoneNumber => 'فون نمبر درج کریں۔';

  @override
  String get actionContinue => 'جاری رہے';

  @override
  String get whereIsYourDestination => 'آپ کی منزل کہاں ہے؟';

  @override
  String get whereAreYouGoing => 'آپ کہاں جا رہے ہیں؟';

  @override
  String get selectDestinations => 'آپ کا راستہ';

  @override
  String get pickupPoint => 'پک اپ پوائنٹ';

  @override
  String get enterPickupPoint => 'پک اپ پوائنٹ درج کریں۔';

  @override
  String get dropoffPoint => 'ڈراپ آف پوائنٹ';

  @override
  String get enterDropoffPoint => 'ڈراپ آف پوائنٹ درج کریں۔';

  @override
  String get stopPoint => 'سٹاپ پوائنٹ';

  @override
  String get enterStopPoint => 'سٹاپ پوائنٹ درج کریں۔';

  @override
  String get confirm => 'تصدیق کریں۔';

  @override
  String get confirmDropoff => 'ڈراپ آف کی تصدیق کریں۔';

  @override
  String get confirmPickup => 'پک اپ کی تصدیق کریں۔';

  @override
  String get enterAtLeast3Characters => 'کم از کم 3 حروف درج کریں۔';

  @override
  String get noResults => 'کوئی نتیجہ نہیں۔';

  @override
  String get bookNow => 'ابھی بک کریں۔';

  @override
  String get cash => 'نقد';

  @override
  String get online => 'آن لائن';

  @override
  String get offline => 'آف لائن';

  @override
  String get onTrip => 'سفر پر';

  @override
  String get confirmPay => 'تصدیق کریں۔';

  @override
  String get cancel => 'منسوخ کریں۔';

  @override
  String get apply => 'درخواست دیں';

  @override
  String get enterCouponCode => 'کوپن کوڈ درج کریں۔';

  @override
  String get reserveRide => 'ریزرو سواری';

  @override
  String get reserveRideMessage => 'صحیح تاریخ اور وقت منتخب کریں جو آپ چاہتے ہیں کہ آپ کی سواری محفوظ ہو۔';

  @override
  String get reserveRideMessageSuccess => 'آپ کی سواری کو کامیابی کے ساتھ محفوظ کر لیا گیا ہے۔ آپ اپنی محفوظ سواریوں کو \'شیڈولڈ سواری\' سیکشن میں دیکھ سکتے ہیں۔';

  @override
  String get cancelReservation => 'ریزرویشن منسوخ کریں۔';

  @override
  String get confirmResrve => 'تصدیق کریں۔';

  @override
  String get enterCouponDescription => 'قیمتوں پر لاگو ہونے کے لیے اپنا کوپن کوڈ داخل کریں۔';

  @override
  String get enterCoupon => 'کوپن درج کریں۔';

  @override
  String get couponApplied => 'کوپن لاگو کر دیا گیا۔';

  @override
  String get couponAppliedDescription => 'آپ کی سواری کے کرایے پر کوپن لاگو کر دیا گیا ہے۔';

  @override
  String get done => 'ہو گیا!';

  @override
  String get ridePreferences => 'سواری کی ترجیحات';

  @override
  String get noWaitTime => 'انتظار کا وقت نہیں۔';

  @override
  String minutesRange(String minutes) {
    return '$minutes منٹ';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds سیکنڈ';
  }

  @override
  String get rideRequested => 'سواری کی درخواست کی۔';

  @override
  String get searchingForAnOnlineDriver => 'آن لائن ڈرائیور کی تلاش ہے...';

  @override
  String get cancelRide => 'سواری منسوخ کریں۔';

  @override
  String get rideSafety => 'سواری کی حفاظت';

  @override
  String get shareTripInformation => 'سفر کی معلومات کا اشتراک کریں۔';

  @override
  String get shareTripInformationDescription => 'آپ اپنے سفر کی معلومات کسی دوست کے ساتھ شیئر کر سکتے ہیں۔';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'حکام کو ہنگامی صورتحال سے آگاہ کریں۔';

  @override
  String get reportAnIssue => 'ایک مسئلہ کی اطلاع دیں';

  @override
  String get reportAnIssueMidTripDescription => 'سفر کے دوران حفاظتی مسئلہ کا اشتراک کریں۔';

  @override
  String get rideOptions => 'سواری کے اختیارات';

  @override
  String get goBackToRide => 'سواری پر واپس جائیں۔';

  @override
  String get waitTime => 'وقت کا انتظار کریں۔';

  @override
  String get couponCode => 'کوپن کوڈ';

  @override
  String get giftCardCode => 'گفٹ کارڈ کوڈ';

  @override
  String get nicePoints => 'اچھے پوائنٹس';

  @override
  String get negativePoints => 'منفی پوائنٹس';

  @override
  String get reviewCommentBoxHint => 'تبصرہ شامل کریں...';

  @override
  String get howWasYourTrip => 'آپ کا سفر کیسا رہا؟';

  @override
  String oneStarReviewTitle(String name) {
    return '$name کے ساتھ خوفناک سفر';
  }

  @override
  String twoStarReviewTitle(String name) {
    return '$name کے ساتھ برا سفر';
  }

  @override
  String threeStarReviewTitle(String name) {
    return '$name کے ساتھ اوسط سفر';
  }

  @override
  String fourStarReviewTitle(String name) {
    return '$name کے ساتھ اچھا سفر';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return '$name کے ساتھ شاندار سفر';
  }

  @override
  String get submitFeedback => 'رائے جمع کروائیں۔';

  @override
  String get typeAMessage => 'ایک پیغام ٹائپ کریں۔';

  @override
  String get findAnotherRide => 'دوسری سواری تلاش کریں۔';

  @override
  String get next => 'اگلے';

  @override
  String get searchForDropoffLocation => 'ڈراپ آف لوکیشن تلاش کریں۔';

  @override
  String get searchForPickupLocation => 'پک اپ کی جگہ تلاش کریں۔';

  @override
  String get placeConfirmDialogPlaceholder => 'آپ کا ڈراپ آف لوکیشن کہاں ہے؟';

  @override
  String get noAnnouncements => 'کوئی اعلانات نہیں۔';

  @override
  String get announcements => 'اعلانات';

  @override
  String reviewsCount(int count) {
    return '($count جائزے)';
  }

  @override
  String get tripDetails => 'سفر کی تفصیلات';

  @override
  String get rideDetails => 'سواری کی تفصیلات';

  @override
  String get orderARide => 'سواری کا آرڈر دیں۔';

  @override
  String get noRidesYet => 'ابھی تک کوئی سواری نہیں!';

  @override
  String get issueSubjectPlaceholder => 'مسئلہ کا موضوع ٹائپ کریں۔';

  @override
  String get issueContentPlaceholder => 'مسئلے کی تفصیل ٹائپ کریں۔';

  @override
  String get reportThisIssue => 'اس مسئلے کی اطلاع دیں۔';

  @override
  String get fieldIsRequired => 'فیلڈ کی ضرورت ہے';

  @override
  String get ok => 'ٹھیک ہے';

  @override
  String get favoriteLocations => 'پسندیدہ مقامات';

  @override
  String get favoriteLocationsSubtitle => 'آسان رسائی کے لیے اپنے پسندیدہ مقامات کو محفوظ کریں۔';

  @override
  String get createAFavoriteLocation => 'ایک پسندیدہ مقام بنائیں';

  @override
  String get addressTitleLabel => 'ایڈریس کا عنوان';

  @override
  String get clickToSetLocation => 'مقام سیٹ کرنے کے لیے کلک کریں۔';

  @override
  String get whereIsYourNewFavoriteLocation => 'آپ کا نیا پسندیدہ مقام کہاں ہے؟';

  @override
  String get locateFavoriteLocationDescription => 'صحیح مقام کو پن کرنے کے لیے یا تو نیچے سرچ باکس یا نقشہ استعمال کریں۔';

  @override
  String get searchLocation => 'مقام تلاش کریں۔';

  @override
  String get saveChanges => 'تبدیلیاں محفوظ کرو';

  @override
  String get rideHistory => 'سواری کی تاریخ';

  @override
  String get scheduledRides => 'طے شدہ سواری۔';

  @override
  String get keepTheOrder => 'آرڈر رکھیں';

  @override
  String get cancelTheRide => 'سواری منسوخ کریں۔';

  @override
  String get walletBalance => 'والیٹ بیلنس';

  @override
  String get activities => 'سرگرمیاں';

  @override
  String get pleaseEnterGiftCardCode => 'براہ کرم گفٹ کارڈ کوڈ درج کریں۔';

  @override
  String get redeem => 'چھڑانا';

  @override
  String get enterGiftCardCode => 'گفٹ کارڈ کوڈ درج کریں۔';

  @override
  String get redeemGiftCard => 'گفٹ کارڈ چھڑائیں۔';

  @override
  String get redeemGiftCardDescription => 'اسے چھڑانے کے لیے اپنے گفٹ کارڈ کا کوڈ درج کریں۔';

  @override
  String get redeemSuccessTitle => 'گفٹ کارڈ بھنایا گیا!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'آپ نے $amount گفٹ کارڈ کامیابی کے ساتھ بھنایا ہے۔';
  }

  @override
  String get addCredit => 'کریڈٹ شامل کریں۔';

  @override
  String get payNow => 'اب ادا';

  @override
  String get addCreditToWallet => 'بٹوے میں کریڈٹ شامل کریں۔';

  @override
  String get pleaseSelectAmount => 'براہ کرم رقم منتخب کریں۔';

  @override
  String get enterAmount => 'رقم درج کریں۔';

  @override
  String get selectAmount => 'رقم منتخب کریں:';

  @override
  String get wallet => 'پرس';

  @override
  String get totalRides => 'کل سواری۔';

  @override
  String get appSettings => 'ایپ کی ترتیبات';

  @override
  String get mapSettings => 'نقشہ کی ترتیبات';

  @override
  String get lanugageSettings => 'زبان کی ترتیبات';

  @override
  String get paymentMethods => 'ادائیگی کے طریقے';

  @override
  String get selectCards => 'کارڈز منتخب کریں۔';

  @override
  String get selectCardsDescription => 'آپ وہ کارڈ نمبر منتخب کر سکتے ہیں جنہیں آپ انوائسز پر ادائیگی کے طریقوں کی فہرست میں دکھانا چاہتے ہیں۔';

  @override
  String get delete => 'حذف کریں۔';

  @override
  String get nameOnCard => 'کارڈ پہ درج نام';

  @override
  String get profile => 'پروفائل';

  @override
  String get scheduledRide => 'طے شدہ سواری۔';

  @override
  String get addPaymentMethod => 'ادائیگی کا طریقہ شامل کریں۔';

  @override
  String get addPaymentMethodDescription => 'اپنے اکاؤنٹ میں ادائیگی کا نیا طریقہ شامل کریں۔';

  @override
  String get saveCard => 'کارڈ محفوظ کریں۔';

  @override
  String get selectDialCode => 'ڈائل کوڈ منتخب کریں۔';

  @override
  String get searchCountryName => 'ملک کا نام تلاش کریں۔';

  @override
  String get preferences => 'ترجیحات:';

  @override
  String get onboardingDescription => 'اپنے اکاؤنٹ کو رجسٹر کرنے اور آرام دہ سواریوں سے لطف اندوز ہونے سے لمحوں کی دوری پر';

  @override
  String get signInSignUp => 'سائن ان/سائن اپ کریں۔';

  @override
  String get enterOtp => 'OTP درج کریں۔';

  @override
  String get enterPassword => 'پاس ورڈ درج کریں';

  @override
  String get enterPasswordDescription => 'جاری رکھنے کے لیے براہ کرم اپنا پاس ورڈ درج کریں۔';

  @override
  String get setPassword => 'پاس ورڈ رکھیں';

  @override
  String get password => 'پاس ورڈ';

  @override
  String get passwordRuleDescription => 'درج ذیل میں سے کم از کم دو کو شامل کریں:';

  @override
  String get passwordRuleLength => '9 اور 64 حروف کے درمیان';

  @override
  String get passwordRuleUpperCase => 'بڑے حروف';

  @override
  String get passwordRuleLowerCase => 'چھوٹے حروف';

  @override
  String get passwordRuleNumber => 'نمبرز';

  @override
  String get passwordRuleSpecialCharacter => 'خصوصی کردار';

  @override
  String get contactDetails => 'رابطہ کی تفصیلات';

  @override
  String get vehicleDetails => 'گاڑی کی تفصیلات';

  @override
  String get payoutInformation => 'ادائیگی کی معلومات';

  @override
  String get documents => 'دستاویزات';

  @override
  String get accessDenied => 'رسائی مسترد کر دی';

  @override
  String get success => 'کامیابی';

  @override
  String get skipForNow => 'اب کے لئے چھوڑ دیں';

  @override
  String get sendOtpDescription => 'آپ کے فون نمبر پر ایک تصدیقی کوڈ بھیجا گیا ہے۔';

  @override
  String get resendOtp => 'کوڈ پھر سے بھیجو';

  @override
  String get useOtpInstead => 'اس کے بجائے OTP استعمال کریں۔';

  @override
  String get home => 'گھر';

  @override
  String get logout => 'لاگ آوٹ';

  @override
  String get driverLicenseNumber => 'ڈرائیور لائسنس نمبر';

  @override
  String get email => 'ای میل';

  @override
  String get address => 'پتہ';

  @override
  String get gender => 'صنف';

  @override
  String get genderMale => 'مرد';

  @override
  String get genderFemale => 'عورت';

  @override
  String get genderUnknown => 'غیر جانبدار/نامعلوم';

  @override
  String get vehiclePlateNumber => 'گاڑی کی پلیٹ نمبر';

  @override
  String get vehicleColor => 'گاڑی کا رنگ';

  @override
  String get vehicleModelAndMake => 'گاڑی کا ماڈل';

  @override
  String get vehicleProductionYear => 'گاڑیوں کی پیداوار کا سال';

  @override
  String get bankName => 'بینک کا نام';

  @override
  String get bankRoutingNumber => 'بینک روٹنگ نمبر';

  @override
  String get bankAccountNumber => 'بینک اکاؤنٹ نمبر';

  @override
  String get bankSwift => 'سوفٹ کوڈ';

  @override
  String get uploadImage => 'تصویر انٹرنیٹ پر ڈالنا';

  @override
  String get yourBalance => 'آپ کا بیلنس';

  @override
  String get rideCancellation => 'سواری کی منسوخی';

  @override
  String get cancelRideMessage => 'کیا آپ واقعی اپنی سواری منسوخ کرنا چاہتے ہیں؟';

  @override
  String get cancelRideSuccess => 'سواری کامیابی کے ساتھ منسوخ کر دی گئی ہے۔';

  @override
  String get confirmAndCancelRide => 'تصدیق کریں۔ ';

  @override
  String get selectPaymentMethod => 'ادائیگی کا طریقہ منتخب کریں۔';

  @override
  String get rideFeePaid => 'سواری کی فیس ادا کر دی گئی ہے۔';

  @override
  String get rideFeeUnpaid => 'سواری کی فیس ابھی تک ادا نہیں کی گئی ہے۔';

  @override
  String get total => 'کل';

  @override
  String get totalPrice => 'کل قیمت';

  @override
  String get addCustomCredit => 'حسب ضرورت ترمیم شامل کریں۔';

  @override
  String get serviceFee => 'خدمت کے پیسے';

  @override
  String get serviceOptionFee => 'سروس آپشن فیس';

  @override
  String get couponDiscount => 'کوپن ڈسکاؤنٹ';

  @override
  String get walletCreit => 'والیٹ کریڈٹ';

  @override
  String get custom => 'اپنی مرضی کے مطابق';

  @override
  String get payment => 'ادائیگی';

  @override
  String get cashPayment => 'نقد ادائیگی';

  @override
  String cashPaymentDescription(String amount) {
    return 'کیا آپ تصدیق کرتے ہیں کہ آپ کو $amount موصول ہوا ہے؟';
  }

  @override
  String get cashPaymentReceived => 'نقد ادائیگی موصول ہوئی۔';

  @override
  String get confirmAndEndTrip => 'تصدیق کریں۔ ';

  @override
  String get earnings => 'کمائی';

  @override
  String get acceptOrder => 'آرڈر قبول کریں۔';

  @override
  String get canceled => 'منسوخ';

  @override
  String get unknown => 'نامعلوم';

  @override
  String get commission => 'کمیشن';

  @override
  String get selectProfileImage => 'پروفائل امیج کو منتخب کریں۔';

  @override
  String get chooseAvatarDescription => 'یا نیچے دی گئی فہرست سے ایک اوتار منتخب کریں:';

  @override
  String get fullName => 'پورا نام';

  @override
  String get favoriteDrivers => 'پسندیدہ ڈرائیور';

  @override
  String get distanceTraveled => 'فاصلہ طے کیا۔';

  @override
  String get rating => 'درجہ بندی';

  @override
  String get map => 'نقشہ';

  @override
  String get income => 'آمدنی';

  @override
  String get timeSpent => 'وقت گزارا۔';

  @override
  String get daily => 'روزانہ';

  @override
  String get monthly => 'ماہانہ';

  @override
  String get noRecordsFoundEarnings => 'ان فلٹرز کے لیے کوئی ٹرپ ریکارڈ نہیں ملا';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'ابھی تک کوئی فیڈ بیک نہیں ہے۔';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'آپ کے پاس ابھی تک دکھانے کے لیے کافی فیڈ بیک نہیں ہیں۔';

  @override
  String get feedbacksSummary => 'تاثرات کا خلاصہ';

  @override
  String get feedbacksGoodTitle => 'شاندار کام!';

  @override
  String get feedbacksGoodSubtitle => 'آپ کی ریٹنگز اب تک اچھی لگ رہی ہیں۔';

  @override
  String get feedbacksBadTitle => 'اوسط';

  @override
  String get feedbacksBadSubtitle => 'آپ کچھ بہتری استعمال کر سکتے ہیں۔';

  @override
  String get feedbacksGoodPointsTitle => 'آپ کے بارے میں کچھ اچھے نکات:';

  @override
  String get feedbacksbadPointsTitle => 'کچھ نکات جو آپ بہتر کر سکتے ہیں:';

  @override
  String get feedbacksReviewsTitle => 'کچھ پہلے کے جائزے';

  @override
  String get payoutMethods => 'ادائیگی کے طریقے';

  @override
  String get notice => 'نوٹس:';

  @override
  String get payoutNoticeTitle => 'آپ کو ہفتے میں دو بار ایڈمن کی طرف سے خود بخود ادائیگی کی جائے گی۔';

  @override
  String get addPayoutMethod => 'ادائیگی کا طریقہ شامل کریں۔';

  @override
  String get navigate => 'نیویگیٹ کریں۔';

  @override
  String get noPayoutMethods => 'ادائیگی کے طریقے نہیں ہیں۔';

  @override
  String get name => 'نام';

  @override
  String get nameHint => 'نام درج کریں';

  @override
  String get bankNameHint => 'بینک کا نام درج کریں۔';

  @override
  String get branchName => 'برانچ کا نام';

  @override
  String get branchNameHint => 'برانچ کا نام درج کریں۔';

  @override
  String get accountHolderName => 'کھاتہ دار کا نام';

  @override
  String get routingNumber => 'رہنما عدد';

  @override
  String get routingNumberHint => 'روٹنگ نمبر درج کریں۔';

  @override
  String get accountNumber => 'اکاؤنٹ نمبر';

  @override
  String get accountNumberHint => 'اکاؤنٹ نمبر درج کریں۔';

  @override
  String get addressHint => 'پتہ درج کریں۔';

  @override
  String get dateOfBith => 'پیدائش کی تاریخ';

  @override
  String get yearHint => 'سال';

  @override
  String get monthHint => 'مہینہ';

  @override
  String get dayHint => 'دن';

  @override
  String get city => 'شہر';

  @override
  String get cityHint => 'شہر میں داخل ہوں۔';

  @override
  String get state => 'حالت';

  @override
  String get stateHint => 'ریاست درج کریں۔';

  @override
  String get zipCode => 'زپ کوڈ';

  @override
  String get zipCodeHint => 'زپ کوڈ درج';

  @override
  String get day => 'دن';

  @override
  String get month => 'مہینہ';

  @override
  String get year => 'سال';

  @override
  String get noActivitiesYet => 'ابھی تک کوئی سرگرمیاں نہیں ہیں۔';

  @override
  String get headingToDestination => 'منزل کی طرف بڑھ رہا ہے';

  @override
  String get driverArrivedNotice => 'ڈرائیور آپ کا انتظار کر رہا ہے۔';

  @override
  String get driverShouldAriveInNotice => 'ڈرائیور کے آنے کا اندازہ ہے۔';

  @override
  String get driverShouldHaveArrivedNotice => 'ڈرائیور اب کسی بھی لمحے پہنچ جائے گا۔';

  @override
  String get deleteAccount => 'کھاتہ مٹا دو';

  @override
  String get deleteAccountNotice => 'کیا آپ واقعی اپنا اکاؤنٹ حذف کرنا چاہتے ہیں؟ 30 دن کے بعد، آپ کا اکاؤنٹ مستقل طور پر حذف ہو جائے گا۔ اس وقت کے دوران، آپ دوبارہ سائن ان کر کے اپنا اکاؤنٹ بحال کر سکتے ہیں۔';

  @override
  String get confirmAndDeleteAccount => 'تصدیق کریں۔';

  @override
  String get accountDeleted => 'اکاؤنٹ حذف کر دیا گیا ہے۔';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'میں $pickup سے $destination کی طرف جا رہا ہوں۔';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return 'میرے ڈرائیور کا نام $firstName $lastName ہے، موبائل نمبر $mobileNumber ہے۔';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return 'میرے ساتھ سوار کا نام $firstName $lastName ہے، موبائل نمبر $mobileNumber ہے۔';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return 'ٹرپ $startTime کو شروع ہوا ہے اور مجھے امید ہے کہ اس سفر میں تقریباً $duration منٹ لگیں گے';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'میں توقع کرتا ہوں کہ ایک بار جب میں ڈرائیور کی گاڑی میں بیٹھوں گا تو اس سفر میں تقریباً $duration منٹ لگیں گے۔';
  }

  @override
  String get sendSOSMessage => 'اہم: براہ کرم اس خصوصیت کو صرف ہنگامی صورت حال میں استعمال کریں۔ ہم آپ کی طرف سے حکام سے رابطہ کریں گے۔';

  @override
  String get confirmAndSendSOS => 'تصدیق کریں۔';

  @override
  String get sosSentSuccessfully => 'SOS کامیابی سے بھیج دیا گیا ہے۔';

  @override
  String get topUpSuccess => 'والیٹ کو کامیابی کے ساتھ ٹاپ اپ کر دیا گیا ہے۔';

  @override
  String get cancelNotAllowed => 'پہلے سے شروع کی گئی سواری کی منسوخی ممکن نہیں ہے۔';

  @override
  String get error => 'خرابی';

  @override
  String get connectionError => 'رابطے میں خرابی';

  @override
  String get serverError => 'سرور کی خرابی۔';

  @override
  String get addNewLocation => 'نیا مقام شامل کریں۔';

  @override
  String get twoWayTrip => 'دو طرفہ سفر';

  @override
  String get reportSubmitted => 'رپورٹ جمع کرائی';

  @override
  String get reportSubmittedDescription => 'آپ کی رپورٹ کامیابی کے ساتھ جمع کر دی گئی ہے، ہم اس کا جائزہ لیں گے اور ضروری اقدامات کریں گے۔';

  @override
  String get cardNumber => 'کارڈ نمبر';

  @override
  String get cardNumberHint => 'کارڈ نمبر درج کریں۔';

  @override
  String get expiryDate => 'خاتمے کی تاریخ';

  @override
  String get expiryDateHint => 'MM/YY';

  @override
  String get noFavoriteDrivers => 'کوئی پسندیدہ ڈرائیور نہیں۔';

  @override
  String get noFavoriteDriversDescription => 'سفر کے بعد درجہ بندی کرتے وقت آپ اپنے پسندیدہ ڈرائیوروں کو پسندیدہ کے طور پر نشان زد کر سکتے ہیں۔';

  @override
  String get pickupLocationNotFound => 'ہم GPS کو پک اپ پوائنٹ کے طور پر استعمال کرتے ہوئے آپ کے موجودہ مقام کا تعین کرنے سے قاصر تھے۔ براہ کرم اپنا پک اپ پوائنٹ دستی طور پر درج کریں۔';

  @override
  String get dragToSelect => 'منتخب کرنے کے لیے گھسیٹیں۔';

  @override
  String get skip => 'چھوڑ دو';

  @override
  String get openSettings => 'ترتیبات کھولیں۔';

  @override
  String get locationPermission => 'مقام کی اجازت';

  @override
  String get locationPermissionDeniedForeverMessage => 'آپ کے ارد گرد آرڈرز وصول کرنے اور سوار کے لیے آپ کے مقام کا پتہ لگانے کے لیے مقام کی اجازت ایک شرط ہے۔ آپ اس اجازت کے بغیر آرڈر وصول نہیں کر سکتے اور ہم آپ کے موجودہ مقام سے ہوشیار رہیں۔ آپ اپنے فون کی ترتیبات میں اس اجازت کو تبدیل کر سکتے ہیں۔';

  @override
  String get allow => 'اجازت دیں۔';

  @override
  String get driverOnlineTitle => 'سواری کی تلاش ہے۔';

  @override
  String get driverOfflineTitle => 'درخواستیں وصول کرنا شروع کرنے کے لیے آن لائن ہوں۔';

  @override
  String get payInCash => 'نقد ادائیگی';

  @override
  String get payInCashDescription => 'براہ کرم ڈرائیور کو نقد ادائیگی کے ساتھ آگے بڑھیں۔ ایک بار موصول ہونے پر ڈرائیور ادائیگی کی تصدیق کرے گا۔';

  @override
  String get addToFavoriteDrivers => 'پسندیدہ ڈرائیوروں میں شامل کریں۔';

  @override
  String get slideToConfirmArrival => 'آمد کی تصدیق کے لیے سلائیڈ کریں۔';

  @override
  String get slideToConfirmPickup => 'پک اپ کی تصدیق کے لیے سلائیڈ کریں۔';

  @override
  String get slideToConfirmDropoff => 'ڈراپ آف کی تصدیق کے لیے سلائیڈ کریں۔';

  @override
  String get noticePickingUpRiderIn => 'اس میں سوار کو اٹھانا:';

  @override
  String get noticeRiderNotified => 'سوار کو مطلع کر دیا گیا ہے، سوار کو اٹھاؤ اور سواری شروع کرو';
}
