import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Arabic (`ar`).
class SAr extends S {
  SAr([String locale = 'ar']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'حقوق الطبع والنشر © $company, جميع الحقوق محفوظة.';
  }

  @override
  String get welcomeTitle => 'مرحبًا في التطبيق';

  @override
  String get today => 'اليوم';

  @override
  String get yesterday => 'الأمس';

  @override
  String get settings => 'الإعدادات';

  @override
  String get about => 'حول';

  @override
  String get profileInfo => 'معلومات الحساب';

  @override
  String get language => 'اللغة';

  @override
  String get firstName => 'الاسم الأول';

  @override
  String get lastName => 'اسم العائلة';

  @override
  String get mobileNumber => 'رقم الجوال';

  @override
  String get edit => 'تحرير';

  @override
  String get enterCode => 'إدخال الرمز';

  @override
  String get editProfile => 'تعديل الملف الشخصي';

  @override
  String get bankTransfer => 'تحويل بنكي';

  @override
  String get gift => 'هدية';

  @override
  String get correction => 'تصحيح';

  @override
  String get inappPayment => 'دفع داخل التطبيق';

  @override
  String get orderFee => 'رسوم الطلب';

  @override
  String get parkingFee => 'رسوم ال estacionamiento';

  @override
  String get cancellationFee => 'رسوم الإلغاء';

  @override
  String get withdraw => 'سحب';

  @override
  String get walletTransactions => 'معاملات المحفظة';

  @override
  String get addCard => 'إضافة بطاقة';

  @override
  String get visa => 'فيزا';

  @override
  String get mastercard => 'ماستركارد';

  @override
  String get addBalance => 'إضافة رصيد';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString دقائق',
      one: '$minutesString دقيقة',
      zero: 'صفر دقيقة',
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
      other: '$hoursString ساعات',
      one: '$hoursString ساعة',
      zero: 'صفر ساعة',
    );
    return 'المدة: $_temp0';
  }

  @override
  String get timePastDue => 'متأخر';

  @override
  String get justNow => 'الآن';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString م';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString كم';
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
  String get welcomeSubtitle => 'خدمة سيارات الأجرة مصممة لراحتك. قم برحلات مع سائقيك المفضلين وحدد تفضيلات ركوبك';

  @override
  String get onboardingRewardTitle => 'احصل على مكافأة!';

  @override
  String get onboardingRewardSubtitle => 'احصل على مكافآت إضافية عند الإحالة على صديق، واستكمال الرحلات، والعديد من المزايا الأخرى...';

  @override
  String get selectLanguage => 'اختر اللغة';

  @override
  String get searchForLanguage => 'البحث عن اللغة';

  @override
  String get enterPhoneNumber => 'أدخل رقم الهاتف';

  @override
  String get actionContinue => 'متابعة';

  @override
  String get whereIsYourDestination => 'أين وجهتك؟';

  @override
  String get whereAreYouGoing => 'إلى أين تتوجه؟';

  @override
  String get selectDestinations => 'مسارك';

  @override
  String get pickupPoint => 'نقطة الالتقاط';

  @override
  String get enterPickupPoint => 'أدخل نقطة الالتقاط';

  @override
  String get dropoffPoint => 'نقطة الإنزال';

  @override
  String get enterDropoffPoint => 'أدخل نقطة الإنزال';

  @override
  String get stopPoint => 'نقطة التوقف';

  @override
  String get enterStopPoint => 'أدخل نقطة التوقف';

  @override
  String get confirm => 'تأكيد';

  @override
  String get confirmDropoff => 'تأكيد الإنزال';

  @override
  String get confirmPickup => 'تأكيد الالتقاط';

  @override
  String get enterAtLeast3Characters => 'أدخل على الأقل 3 أحرف';

  @override
  String get noResults => 'لا توجد نتائج';

  @override
  String get bookNow => 'احجز الآن';

  @override
  String get cash => 'نقدي';

  @override
  String get online => 'عبر الإنترنت';

  @override
  String get offline => 'غير متصل';

  @override
  String get onTrip => 'في الرحلة';

  @override
  String get confirmPay => 'تأكيد والدفع';

  @override
  String get cancel => 'إلغاء';

  @override
  String get apply => 'تطبيق';

  @override
  String get enterCouponCode => 'أدخل رمز الكوبون';

  @override
  String get reserveRide => 'حجز الرحلة';

  @override
  String get reserveRideMessage => 'حدد التاريخ والوقت الدقيق الذي ترغب في حجز رحلتك فيه';

  @override
  String get reserveRideMessageSuccess => 'تم حجز رحلتك بنجاح. يمكنك عرض الرحلات المحجوزة في قسم \'الرحلات المجدولة\'.';

  @override
  String get cancelReservation => 'إلغاء الحجز';

  @override
  String get confirmResrve => 'تأكيد وحجز';

  @override
  String get enterCouponDescription => 'أدخل رمز الكوبون لتطبيقه على الأسعار';

  @override
  String get enterCoupon => 'أدخل الكوبون';

  @override
  String get couponApplied => 'تم تطبيق الكوبون';

  @override
  String get couponAppliedDescription => 'تم تطبيق الكوبون على أجرة رحلتك';

  @override
  String get done => 'تم!';

  @override
  String get ridePreferences => 'تفضيلات الرحلة';

  @override
  String get noWaitTime => 'لا وقت انتظار';

  @override
  String minutesRange(String minutes) {
    return '$minutes دقائق';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds ثانية';
  }

  @override
  String get rideRequested => 'تم طلب الرحلة';

  @override
  String get searchingForAnOnlineDriver => 'البحث عن سائق عبر الإنترنت...';

  @override
  String get cancelRide => 'إلغاء الرحلة';

  @override
  String get rideSafety => 'سلامة الرحلة';

  @override
  String get shareTripInformation => 'مشاركة معلومات الرحلة';

  @override
  String get shareTripInformationDescription => 'يمكنك مشاركة معلومات رحلتك مع صديق';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'أبلغ السلطات عن حالة طوارئ';

  @override
  String get reportAnIssue => 'الإبلاغ عن مشكلة';

  @override
  String get reportAnIssueMidTripDescription => 'مشاركة مشكلة أمان أثناء الرحلة';

  @override
  String get rideOptions => 'خيارات الرحلة';

  @override
  String get goBackToRide => 'العودة إلى الرحلة';

  @override
  String get waitTime => 'وقت الانتظار';

  @override
  String get couponCode => 'رمز الكوبون';

  @override
  String get giftCardCode => 'رمز بطاقة الهدايا';

  @override
  String get nicePoints => 'نقاط إيجابية';

  @override
  String get negativePoints => 'نقاط سلبية';

  @override
  String get reviewCommentBoxHint => 'أضف تعليقًا...';

  @override
  String get howWasYourTrip => 'كيف كانت رحلتك؟';

  @override
  String oneStarReviewTitle(String name) {
    return 'رحلة رهيبة مع $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'رحلة سيئة مع $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'رحلة متوسطة مع $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'رحلة جيدة مع $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'رحلة رائعة مع $name';
  }

  @override
  String get submitFeedback => 'إرسال التعليق';

  @override
  String get typeAMessage => 'اكتب رسالة';

  @override
  String get findAnotherRide => 'البحث عن رحلة أخرى';

  @override
  String get next => 'التالي';

  @override
  String get searchForDropoffLocation => 'البحث عن موقع الإنزال';

  @override
  String get searchForPickupLocation => 'البحث عن موقع الالتقاط';

  @override
  String get placeConfirmDialogPlaceholder => 'أين موقع إيقاف الإنزال؟';

  @override
  String get noAnnouncements => 'لا توجد إعلانات';

  @override
  String get announcements => 'الإعلانات';

  @override
  String reviewsCount(int count) {
    return '($count تقييمات)';
  }

  @override
  String get tripDetails => 'تفاصيل الرحلة';

  @override
  String get rideDetails => 'تفاصيل الرحلة';

  @override
  String get orderARide => 'طلب رحلة';

  @override
  String get noRidesYet => 'لا توجد رحلات حتى الآن!';

  @override
  String get issueSubjectPlaceholder => 'اكتب موضوع المشكلة';

  @override
  String get issueContentPlaceholder => 'اكتب وصف المشكلة';

  @override
  String get reportThisIssue => 'الإبلاغ عن هذه المشكلة';

  @override
  String get fieldIsRequired => 'الحقل مطلوب';

  @override
  String get ok => 'موافق';

  @override
  String get favoriteLocations => 'المواقع المفضلة';

  @override
  String get favoriteLocationsSubtitle => 'احفظ مواقعك المفضلة لسهولة الوصول إليها';

  @override
  String get createAFavoriteLocation => 'إنشاء موقع مفضل';

  @override
  String get addressTitleLabel => 'عنوان الموقع';

  @override
  String get clickToSetLocation => 'انقر لتحديد الموقع';

  @override
  String get whereIsYourNewFavoriteLocation => 'أين موقع موقعك المفضل الجديد؟';

  @override
  String get locateFavoriteLocationDescription => 'استخدم إما صندوق البحث أدناه أو الخريطة لتثبيت الموقع بدقة';

  @override
  String get searchLocation => 'بحث الموقع';

  @override
  String get saveChanges => 'حفظ التغييرات';

  @override
  String get rideHistory => 'سجل الرحلات';

  @override
  String get scheduledRides => 'الرحلات المجدولة';

  @override
  String get keepTheOrder => 'احتفظ بالطلب';

  @override
  String get cancelTheRide => 'إلغاء الرحلة';

  @override
  String get walletBalance => 'رصيد المحفظة';

  @override
  String get activities => 'الأنشطة';

  @override
  String get pleaseEnterGiftCardCode => 'الرجاء إدخال رمز بطاقة الهدايا';

  @override
  String get redeem => 'استبدال';

  @override
  String get enterGiftCardCode => 'أدخل رمز بطاقة الهدايا';

  @override
  String get redeemGiftCard => 'استبدال بطاقة الهدية';

  @override
  String get redeemGiftCardDescription => 'أدخل رمز بطاقة الهدية الخاصة بك لاستبدالها.';

  @override
  String get redeemSuccessTitle => 'تم استبدال بطاقة الهدية!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'لقد قمت بنجاح بتبديل بطاقة الهدية بقيمة $amount.';
  }

  @override
  String get addCredit => 'إضافة رصيد';

  @override
  String get payNow => 'ادفع الآن';

  @override
  String get addCreditToWallet => 'إضافة رصيد إلى المحفظة';

  @override
  String get pleaseSelectAmount => 'الرجاء تحديد المبلغ';

  @override
  String get enterAmount => 'أدخل المبلغ';

  @override
  String get selectAmount => 'تحديد المبلغ:';

  @override
  String get wallet => 'المحفظة';

  @override
  String get totalRides => 'مجموع الرحلات';

  @override
  String get appSettings => 'إعدادات التطبيق';

  @override
  String get mapSettings => 'إعدادات الخريطة';

  @override
  String get lanugageSettings => 'إعدادات اللغة';

  @override
  String get paymentMethods => 'وسائل الدفع';

  @override
  String get selectCards => 'حدد البطاقات';

  @override
  String get selectCardsDescription => 'يمكنك تحديد أرقام البطاقات التي ترغب في عرضها في قائمة وسائل الدفع في الفواتير.';

  @override
  String get delete => 'حذف';

  @override
  String get nameOnCard => 'اسم على البطاقة';

  @override
  String get profile => 'الملف الشخصي';

  @override
  String get scheduledRide => 'الرحلة المجدولة';

  @override
  String get addPaymentMethod => 'إضافة وسيلة دفع';

  @override
  String get addPaymentMethodDescription => 'أضف وسيلة دفع جديدة إلى حسابك';

  @override
  String get saveCard => 'حفظ البطاقة';

  @override
  String get selectDialCode => 'حدد رمز الاتصال';

  @override
  String get searchCountryName => 'البحث عن اسم البلد';

  @override
  String get preferences => 'التفضيلات:';

  @override
  String get onboardingDescription => 'لحظات قليلة وتكون على بعد خطوة واحدة من تسجيل حسابك والاستمتاع برحلات مريحة';

  @override
  String get signInSignUp => 'تسجيل الدخول / التسجيل';

  @override
  String get enterOtp => 'أدخل رمز التحقق';

  @override
  String get enterPassword => 'أدخل كلمة المرور';

  @override
  String get enterPasswordDescription => 'الرجاء إدخال كلمة المرور الخاصة بك للمتابعة';

  @override
  String get setPassword => 'تعيين كلمة المرور';

  @override
  String get password => 'كلمة المرور';

  @override
  String get passwordRuleDescription => 'تتضمن على الأقل اثنين من العناصر التالية:';

  @override
  String get passwordRuleLength => 'بين 9 و 64 حرفًا';

  @override
  String get passwordRuleUpperCase => 'حروف كبيرة';

  @override
  String get passwordRuleLowerCase => 'حروف صغيرة';

  @override
  String get passwordRuleNumber => 'أرقام';

  @override
  String get passwordRuleSpecialCharacter => 'رموز خاصة';

  @override
  String get contactDetails => 'تفاصيل الاتصال';

  @override
  String get vehicleDetails => 'تفاصيل السيارة';

  @override
  String get payoutInformation => 'معلومات الدفع';

  @override
  String get documents => 'الوثائق';

  @override
  String get accessDenied => 'تم الرفض';

  @override
  String get success => 'نجاح';

  @override
  String get skipForNow => 'تخطي للآن';

  @override
  String get sendOtpDescription => 'تم إرسال رمز التحقق إلى رقم هاتفك';

  @override
  String get resendOtp => 'إعادة إرسال الرمز';

  @override
  String get useOtpInstead => 'استخدم رمز التحقق بدلاً من ذلك';

  @override
  String get home => 'الرئيسية';

  @override
  String get logout => 'تسجيل الخروج';

  @override
  String get driverLicenseNumber => 'رقم رخصة القيادة';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get address => 'العنوان';

  @override
  String get gender => 'الجنس';

  @override
  String get genderMale => 'ذكر';

  @override
  String get genderFemale => 'أنثى';

  @override
  String get genderUnknown => 'محايد / غير معروف';

  @override
  String get vehiclePlateNumber => 'رقم لوحة السيارة';

  @override
  String get vehicleColor => 'لون السيارة';

  @override
  String get vehicleModelAndMake => 'طراز وصنع السيارة';

  @override
  String get vehicleProductionYear => 'سنة إنتاج السيارة';

  @override
  String get bankName => 'اسم البنك';

  @override
  String get bankRoutingNumber => 'رقم التوجيه المصرفي';

  @override
  String get bankAccountNumber => 'رقم الحساب المصرفي';

  @override
  String get bankSwift => 'كود SWIFT';

  @override
  String get uploadImage => 'تحميل صورة';

  @override
  String get yourBalance => 'رصيدك';

  @override
  String get rideCancellation => 'إلغاء الرحلة';

  @override
  String get cancelRideMessage => 'هل أنت متأكد أنك تريد إلغاء الرحلة؟';

  @override
  String get cancelRideSuccess => 'تم إلغاء الرحلة بنجاح';

  @override
  String get confirmAndCancelRide => 'تأكيد وإلغاء الرحلة';

  @override
  String get selectPaymentMethod => 'اختر وسيلة الدفع';

  @override
  String get rideFeePaid => 'تم دفع رسوم الرحلة';

  @override
  String get rideFeeUnpaid => 'لم يتم دفع رسوم الرحلة بعد';

  @override
  String get total => 'الإجمالي';

  @override
  String get totalPrice => 'السعر الإجمالي';

  @override
  String get addCustomCredit => 'إضافة رصيد مخصص';

  @override
  String get serviceFee => 'رسوم الخدمة';

  @override
  String get serviceOptionFee => 'رسوم الخيارات الإضافية';

  @override
  String get couponDiscount => 'خصم الكوبون';

  @override
  String get walletCreit => 'رصيد المحفظة';

  @override
  String get custom => 'مخصص';

  @override
  String get payment => 'الدفع';

  @override
  String get cashPayment => 'الدفع نقدًا';

  @override
  String cashPaymentDescription(String amount) {
    return 'هل تؤكد أنك استلمت $amount؟';
  }

  @override
  String get cashPaymentReceived => 'تم استلام الدفع نقدًا';

  @override
  String get confirmAndEndTrip => 'تأكيد وإنهاء الرحلة';

  @override
  String get earnings => 'الأرباح';

  @override
  String get acceptOrder => 'قبول الطلب';

  @override
  String get canceled => 'تم الإلغاء';

  @override
  String get unknown => 'غير معروف';

  @override
  String get commission => 'العمولة';

  @override
  String get selectProfileImage => 'اختيار صورة الملف الشخصي';

  @override
  String get chooseAvatarDescription => 'أو اختر أفاتار من القائمة أدناه:';

  @override
  String get fullName => 'الاسم الكامل';

  @override
  String get favoriteDrivers => 'السائقون المفضلون';

  @override
  String get distanceTraveled => 'المسافة المقطوعة';

  @override
  String get rating => 'التقييم';

  @override
  String get map => 'الخريطة';

  @override
  String get income => 'الدخل';

  @override
  String get timeSpent => 'الوقت المستغرق';

  @override
  String get daily => 'يوميًا';

  @override
  String get monthly => 'شهريًا';

  @override
  String get noRecordsFoundEarnings => 'لم يتم العثور على سجل رحلات لهذه الفلاتر';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'No feedbacks yet';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'ليس لديك ما يكفي من التقييمات حتى الآن.';

  @override
  String get feedbacksSummary => 'ملخص التقييمات';

  @override
  String get feedbacksGoodTitle => 'عمل ممتاز!';

  @override
  String get feedbacksGoodSubtitle => 'تبدو تقييماتك جيدة حتى الآن';

  @override
  String get feedbacksBadTitle => 'متوسط';

  @override
  String get feedbacksBadSubtitle => 'يمكنك إدخال بعض التحسينات';

  @override
  String get feedbacksGoodPointsTitle => 'بعض النقاط الجيدة حولك:';

  @override
  String get feedbacksbadPointsTitle => 'بعض النقاط التي يمكنك تحسينها:';

  @override
  String get feedbacksReviewsTitle => 'بعض التقييمات السابقة';

  @override
  String get payoutMethods => 'طرق الدفع';

  @override
  String get notice => 'ملاحظة:';

  @override
  String get payoutNoticeTitle => 'سيتم دفع مبلغ الأرباح تلقائيًا من قبل المسؤول مرتين في الأسبوع.';

  @override
  String get addPayoutMethod => 'إضافة طريقة دفع';

  @override
  String get navigate => 'توجيه';

  @override
  String get noPayoutMethods => 'لا توجد وسائل دفع حاليًا';

  @override
  String get name => 'الاسم';

  @override
  String get nameHint => 'أدخل الاسم';

  @override
  String get bankNameHint => 'أدخل اسم البنك';

  @override
  String get branchName => 'اسم الفرع';

  @override
  String get branchNameHint => 'أدخل اسم الفرع';

  @override
  String get accountHolderName => 'اسم حامل الحساب';

  @override
  String get routingNumber => 'رقم التوجيه';

  @override
  String get routingNumberHint => 'أدخل رقم التوجيه';

  @override
  String get accountNumber => 'رقم الحساب';

  @override
  String get accountNumberHint => 'أدخل رقم الحساب';

  @override
  String get addressHint => 'أدخل العنوان';

  @override
  String get dateOfBith => 'Date of birth';

  @override
  String get yearHint => 'سنة';

  @override
  String get monthHint => 'شهر';

  @override
  String get dayHint => 'يوم';

  @override
  String get city => 'المدينة';

  @override
  String get cityHint => 'أدخل اسم المدينة';

  @override
  String get state => 'الولاية';

  @override
  String get stateHint => 'أدخل اسم الولاية';

  @override
  String get zipCode => 'الرمز البريدي';

  @override
  String get zipCodeHint => 'أدخل الرمز البريدي';

  @override
  String get day => 'يوم';

  @override
  String get month => 'شهر';

  @override
  String get year => 'سنة';

  @override
  String get noActivitiesYet => 'لا توجد أنشطة حتى الآن.';

  @override
  String get headingToDestination => 'متجه إلى الوجهة';

  @override
  String get driverArrivedNotice => 'السائق في انتظارك';

  @override
  String get driverShouldAriveInNotice => 'Driver is estimated to arrive in';

  @override
  String get driverShouldHaveArrivedNotice => 'يجب أن يصل السائق في أي لحظة الآن';

  @override
  String get deleteAccount => 'حذف الحساب';

  @override
  String get deleteAccountNotice => 'هل أنت متأكد من رغبتك في حذف حسابك؟ بعد 30 يومًا ، سيتم حذف حسابك بشكل دائم. خلال هذا الوقت ، يمكنك استعادة حسابك من خلال تسجيل الدخول مرة أخرى.';

  @override
  String get confirmAndDeleteAccount => 'تأكيد وحذف الحساب';

  @override
  String get accountDeleted => 'تم حذف الحساب بنجاح';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'أنا في طريقي إلى $destination من $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return 'اسم السائق الخاص بي هو $firstName $lastName، ورقم الهاتف المحمول هو +$mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return 'اسم الراكب معي هو $firstName $lastName، ورقم الهاتف المحمول هو +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return 'بدأت الرحلة في $startTime وأتوقع أن تستغرق الرحلة ما يقرب من $duration دقيقة';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'أتوقع أن تستغرق الرحلة ما يقرب من $duration دقيقة بمجرد وصولي إلى سيارة السائق.';
  }

  @override
  String get sendSOSMessage => 'هام: يرجى استخدام هذه الميزة فقط في حالات الطوارئ. سنتصل بالسلطات نيابةً عنك.';

  @override
  String get confirmAndSendSOS => 'تأكيد وإرسال إشارة الطوارئ';

  @override
  String get sosSentSuccessfully => 'تم إرسال إشارة الطوارئ بنجاح';

  @override
  String get topUpSuccess => 'تم تعبئة المحفظة بنجاح';

  @override
  String get cancelNotAllowed => 'لا يمكن إلغاء الرحلة بعد بدء التنقل بالفعل.';

  @override
  String get error => 'خطأ';

  @override
  String get connectionError => 'خطأ في الاتصال';

  @override
  String get serverError => 'خطأ في الخادم';

  @override
  String get addNewLocation => 'إضافة موقع جديد';

  @override
  String get twoWayTrip => 'رحلة ذهاب وإياب';

  @override
  String get reportSubmitted => 'تم تقديم التقرير';

  @override
  String get reportSubmittedDescription => 'تم تقديم تقريرك بنجاح، سنراجعه ونتخذ الإجراءات اللازمة.';

  @override
  String get cardNumber => 'رقم البطاقة';

  @override
  String get cardNumberHint => 'أدخل رقم البطاقة';

  @override
  String get expiryDate => 'تاريخ الانتهاء';

  @override
  String get expiryDateHint => 'MM/YY';

  @override
  String get noFavoriteDrivers => 'لا يوجد سائقين مفضلين';

  @override
  String get noFavoriteDriversDescription => 'يمكنك تحديد السائقين المفضلين لديك عند تقييمهم بعد الرحلة.';

  @override
  String get pickupLocationNotFound => 'تعذر علينا تحديد موقعك الحالي باستخدام تحديد المواقع. يرجى إدخال نقطة الالتقاط يدوياً.';

  @override
  String get dragToSelect => 'اسحب لتحديد';

  @override
  String get skip => 'تخطي';

  @override
  String get openSettings => 'افتح الإعدادات';

  @override
  String get locationPermission => 'إذن الموقع';

  @override
  String get locationPermissionDeniedForeverMessage => 'إذن الموقع هو متطلب ضروري لاستلام الطلبات من حولك وأيضًا لتتبع الموقع من قبل الراكب. لا يمكنك استلام الطلبات بدون هذا الإذن وعلينا أن نكون على علم بموقعك الحالي. يمكنك تغيير هذا الإذن في إعدادات الهاتف الخاصة بك.';

  @override
  String get allow => 'السماح';

  @override
  String get driverOnlineTitle => 'البحث عن رحلة';

  @override
  String get driverOfflineTitle => 'كن على الإنترنت لبدء استقبال الطلبات';

  @override
  String get payInCash => 'الدفع نقدًا';

  @override
  String get payInCashDescription => 'يرجى متابعة الدفع نقدًا للسائق. سيقوم السائق بتأكيد الدفع عند استلامه.';

  @override
  String get addToFavoriteDrivers => 'إضافة إلى السائقين المفضلين';

  @override
  String get slideToConfirmArrival => 'Slide to confirm arrival';

  @override
  String get slideToConfirmPickup => 'Slide to confirm pickup';

  @override
  String get slideToConfirmDropoff => 'Slide to confirm drop-off';

  @override
  String get noticePickingUpRiderIn => 'Picking up the rider in:';

  @override
  String get noticeRiderNotified => 'Rider has been notified, Pickup the rider and start the ride';
}
