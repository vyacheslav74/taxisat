import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Persian (`fa`).
class SFa extends S {
  SFa([String locale = 'fa']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'کپی رایت © $company، تمامی حقوق محفوظ است.';
  }

  @override
  String get welcomeTitle => 'به برنامه خوش آمدید';

  @override
  String get today => 'امروز';

  @override
  String get yesterday => 'دیروز';

  @override
  String get settings => 'تنظیمات';

  @override
  String get about => 'در باره';

  @override
  String get profileInfo => 'اطلاعات پروفایل';

  @override
  String get language => 'زبان';

  @override
  String get firstName => 'نام کوچک';

  @override
  String get lastName => 'نام خانوادگی';

  @override
  String get mobileNumber => 'شماره موبایل';

  @override
  String get edit => 'ویرایش کنید';

  @override
  String get enterCode => 'کد را وارد کنید';

  @override
  String get editProfile => 'ویرایش نمایه';

  @override
  String get bankTransfer => 'حواله بانکی';

  @override
  String get gift => 'هدیه';

  @override
  String get correction => 'تصحیح';

  @override
  String get inappPayment => 'پرداخت درون برنامه ای';

  @override
  String get orderFee => 'هزینه سفارش';

  @override
  String get parkingFee => 'هزینه پارکینگ';

  @override
  String get cancellationFee => 'هزینهی ابطال';

  @override
  String get withdraw => 'کنار کشیدن';

  @override
  String get walletTransactions => 'معاملات کیف پول';

  @override
  String get addCard => 'کارت اضافه کنید';

  @override
  String get visa => 'ویزا';

  @override
  String get mastercard => 'مسترکارت';

  @override
  String get addBalance => 'تعادل را اضافه کنید';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString دقیقه',
      one: '$minutesString دقیقه',
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
      other: '$hoursString ساعت',
      one: '$hoursString ساعت',
      zero: 'Zero hours',
    );
    return 'مدت زمان: $_temp0';
  }

  @override
  String get timePastDue => 'سررسید گذشته';

  @override
  String get justNow => 'همین الان';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString متر';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString کیلومتر';
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
  String get welcomeSubtitle => 'سرویس تاکسی که برای راحتی شما طراحی شده است، سفرهایی با رانندگان مورد علاقه خود داشته باشید و ترجیحات سواری خود را انتخاب کنید';

  @override
  String get onboardingRewardTitle => 'پاداش بگیرید!';

  @override
  String get onboardingRewardSubtitle => 'برای معرفی یک دوست، تکمیل سفرها و بسیاری موارد دیگر، جوایز اضافی دریافت کنید...';

  @override
  String get selectLanguage => 'زبان را انتخاب کنید';

  @override
  String get searchForLanguage => 'جستجوی زبان';

  @override
  String get enterPhoneNumber => 'شماره تلفن را وارد کنید';

  @override
  String get actionContinue => 'ادامه هید';

  @override
  String get whereIsYourDestination => 'مقصدت کجاست؟';

  @override
  String get whereAreYouGoing => 'کجا میری؟';

  @override
  String get selectDestinations => 'مسیر شما';

  @override
  String get pickupPoint => 'نقطه تحویل';

  @override
  String get enterPickupPoint => 'نقطه تحویل را وارد کنید';

  @override
  String get dropoffPoint => 'نقطه سقوط';

  @override
  String get enterDropoffPoint => 'نقطه خروج را وارد کنید';

  @override
  String get stopPoint => 'نقطه توقف';

  @override
  String get enterStopPoint => 'نقطه توقف را وارد کنید';

  @override
  String get confirm => 'تایید';

  @override
  String get confirmDropoff => 'خروج را تایید کنید';

  @override
  String get confirmPickup => 'تحویل را تایید کنید';

  @override
  String get enterAtLeast3Characters => 'حداقل 3 کاراکتر وارد کنید';

  @override
  String get noResults => 'هیچ نتیجه ای';

  @override
  String get bookNow => 'اکنون ثبت کن';

  @override
  String get cash => 'پول نقد';

  @override
  String get online => 'برخط';

  @override
  String get offline => 'آفلاین';

  @override
  String get onTrip => 'در سفر';

  @override
  String get confirmPay => 'تایید';

  @override
  String get cancel => 'لغو کنید';

  @override
  String get apply => 'درخواست دادن';

  @override
  String get enterCouponCode => 'شماره کوپن را وارد کنید';

  @override
  String get reserveRide => 'سواری رزرو کنید';

  @override
  String get reserveRideMessage => 'تاریخ و ساعت دقیقی را که می‌خواهید سفرتان رزرو شود، انتخاب کنید';

  @override
  String get reserveRideMessageSuccess => 'سواری شما با موفقیت رزرو شد. می‌توانید سواری‌های رزرو شده خود را در بخش «سوارهای برنامه‌ریزی‌شده» مشاهده کنید.';

  @override
  String get cancelReservation => 'رزرو را لغو کنید';

  @override
  String get confirmResrve => 'تایید ';

  @override
  String get enterCouponDescription => 'کد کوپن خود را وارد کنید تا روی قیمت ها اعمال شود';

  @override
  String get enterCoupon => 'کوپن را وارد کنید';

  @override
  String get couponApplied => 'کوپن اعمال شد';

  @override
  String get couponAppliedDescription => 'کوپن برای کرایه سواری شما اعمال شده است';

  @override
  String get done => 'انجام شده!';

  @override
  String get ridePreferences => 'ترجیحات سواری';

  @override
  String get noWaitTime => 'بدون زمان انتظار';

  @override
  String minutesRange(String minutes) {
    return '$minutes دقیقه';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds ثانیه';
  }

  @override
  String get rideRequested => 'سوار شدن درخواست شد';

  @override
  String get searchingForAnOnlineDriver => 'جستجوی درایور آنلاین...';

  @override
  String get cancelRide => 'لغو سواری';

  @override
  String get rideSafety => 'ایمنی سواری';

  @override
  String get shareTripInformation => 'اطلاعات سفر را به اشتراک بگذارید';

  @override
  String get shareTripInformationDescription => 'می توانید اطلاعات سفر خود را با یک دوست به اشتراک بگذارید';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'به مقامات در مورد شرایط اضطراری اطلاع دهید';

  @override
  String get reportAnIssue => 'یک مشکل را گزارش کنید';

  @override
  String get reportAnIssueMidTripDescription => 'مشکل ایمنی در سفر را به اشتراک بگذارید';

  @override
  String get rideOptions => 'گزینه های سواری';

  @override
  String get goBackToRide => 'برگرد تا سوار شوی';

  @override
  String get waitTime => 'زمان انتظار';

  @override
  String get couponCode => 'کد کوپن';

  @override
  String get giftCardCode => 'کد کارت هدیه';

  @override
  String get nicePoints => 'نکات خوب';

  @override
  String get negativePoints => 'امتیازات منفی';

  @override
  String get reviewCommentBoxHint => 'افزودن نظر...';

  @override
  String get howWasYourTrip => 'سفرت چطور بود؟';

  @override
  String oneStarReviewTitle(String name) {
    return 'سفر وحشتناک با $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'سفر بد با $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'میانگین سفر با $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'سفر خوب با $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'سفری عالی با $name';
  }

  @override
  String get submitFeedback => 'بازخورد ارائه دهید';

  @override
  String get typeAMessage => 'یک پیام تایپ کنید';

  @override
  String get findAnotherRide => 'سوار دیگری پیدا کنید';

  @override
  String get next => 'بعد';

  @override
  String get searchForDropoffLocation => 'جستجوی مکان تخلیه';

  @override
  String get searchForPickupLocation => 'مکان تحویل را جستجو کنید';

  @override
  String get placeConfirmDialogPlaceholder => 'محل تحویل شما کجاست؟';

  @override
  String get noAnnouncements => 'بدون اطلاعیه';

  @override
  String get announcements => 'اطلاعیه ها';

  @override
  String reviewsCount(int count) {
    return '($count نظرات)';
  }

  @override
  String get tripDetails => 'جزئیات سفر';

  @override
  String get rideDetails => 'جزئیات سواری';

  @override
  String get orderARide => 'یک سواری سفارش دهید';

  @override
  String get noRidesYet => 'هنوز سواری ندارد!';

  @override
  String get issueSubjectPlaceholder => 'موضوع موضوع را تایپ کنید';

  @override
  String get issueContentPlaceholder => 'شرح موضوع را تایپ کنید';

  @override
  String get reportThisIssue => 'این موضوع را گزارش کنید';

  @override
  String get fieldIsRequired => 'فیلد الزامی است';

  @override
  String get ok => 'خوب';

  @override
  String get favoriteLocations => 'مکان های مورد علاقه';

  @override
  String get favoriteLocationsSubtitle => 'مکان های مورد علاقه خود را برای دسترسی آسان تر ذخیره کنید';

  @override
  String get createAFavoriteLocation => 'یک مکان مورد علاقه ایجاد کنید';

  @override
  String get addressTitleLabel => 'عنوان آدرس';

  @override
  String get clickToSetLocation => 'برای تنظیم مکان کلیک کنید';

  @override
  String get whereIsYourNewFavoriteLocation => 'مکان مورد علاقه جدید شما کجاست؟';

  @override
  String get locateFavoriteLocationDescription => 'از کادر جستجوی زیر یا نقشه برای پین کردن مکان دقیق استفاده کنید';

  @override
  String get searchLocation => 'جستجوی مکان';

  @override
  String get saveChanges => 'ذخیره تغییرات';

  @override
  String get rideHistory => 'تاریخچه سواری';

  @override
  String get scheduledRides => 'سواری های برنامه ریزی شده';

  @override
  String get keepTheOrder => 'نظم را حفظ کنید';

  @override
  String get cancelTheRide => 'سفر را لغو کنید';

  @override
  String get walletBalance => 'موجودی کیف پول';

  @override
  String get activities => 'فعالیت ها';

  @override
  String get pleaseEnterGiftCardCode => 'لطفا کد کارت هدیه را وارد کنید';

  @override
  String get redeem => 'از گرو در اوردن';

  @override
  String get enterGiftCardCode => 'کد کارت هدیه را وارد کنید';

  @override
  String get redeemGiftCard => 'بازخرید کارت هدیه';

  @override
  String get redeemGiftCardDescription => 'کد کارت هدیه خود را برای بازخرید آن وارد کنید.';

  @override
  String get redeemSuccessTitle => 'کارت هدیه بازخرید شد!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'شما با موفقیت از کارت هدیه $amount استفاده کردید.';
  }

  @override
  String get addCredit => 'اعتبار اضافه کنید';

  @override
  String get payNow => 'الان پرداخت کن';

  @override
  String get addCreditToWallet => 'اضافه کردن اعتبار به کیف پول';

  @override
  String get pleaseSelectAmount => 'لطفا مقدار را انتخاب کنید';

  @override
  String get enterAmount => 'مقدار را وارد کنید';

  @override
  String get selectAmount => 'انتخاب مقدار:';

  @override
  String get wallet => 'کیف پول';

  @override
  String get totalRides => 'مجموع سواری ها';

  @override
  String get appSettings => 'تنظیمات برنامه';

  @override
  String get mapSettings => 'تنظیمات نقشه';

  @override
  String get lanugageSettings => 'تنظیمات زبان';

  @override
  String get paymentMethods => 'روش های پرداخت';

  @override
  String get selectCards => 'کارت ها را انتخاب کنید';

  @override
  String get selectCardsDescription => 'می‌توانید شماره کارت‌هایی را که می‌خواهید در لیست روش‌های پرداخت روی فاکتورها نمایش داده شوند، انتخاب کنید.';

  @override
  String get delete => 'حذف';

  @override
  String get nameOnCard => 'نام روی کارت';

  @override
  String get profile => 'مشخصات';

  @override
  String get scheduledRide => 'سواری برنامه ریزی شده';

  @override
  String get addPaymentMethod => 'افزودن روش پرداخت';

  @override
  String get addPaymentMethodDescription => 'یک روش پرداخت جدید به حساب خود اضافه کنید';

  @override
  String get saveCard => 'ذخیره کارت';

  @override
  String get selectDialCode => 'کد شماره گیری را انتخاب کنید';

  @override
  String get searchCountryName => 'جستجوی نام کشور';

  @override
  String get preferences => 'اولویت ها:';

  @override
  String get onboardingDescription => 'لحظاتی دور از ثبت حساب کاربری و لذت بردن از سواری راحت';

  @override
  String get signInSignUp => 'ورود ثبت نام';

  @override
  String get enterOtp => 'OTP را وارد کنید';

  @override
  String get enterPassword => 'رمز عبور را وارد کنید';

  @override
  String get enterPasswordDescription => 'لطفا برای ادامه رمز عبور خود را وارد کنید';

  @override
  String get setPassword => 'قراردادن رمز عبور';

  @override
  String get password => 'کلمه عبور';

  @override
  String get passwordRuleDescription => 'حداقل دو مورد از موارد زیر را شامل شود:';

  @override
  String get passwordRuleLength => 'بین 9 تا 64 کاراکتر';

  @override
  String get passwordRuleUpperCase => 'حروف بزرگ';

  @override
  String get passwordRuleLowerCase => 'حروف کوچک';

  @override
  String get passwordRuleNumber => 'شماره';

  @override
  String get passwordRuleSpecialCharacter => 'شخصیت های خاص';

  @override
  String get contactDetails => 'اطلاعات تماس';

  @override
  String get vehicleDetails => 'جزئیات خودرو';

  @override
  String get payoutInformation => 'اطلاعات پرداخت';

  @override
  String get documents => 'اسناد';

  @override
  String get accessDenied => 'دسترسی ممنوع شد';

  @override
  String get success => 'موفقیت';

  @override
  String get skipForNow => 'فعلا رد شوید';

  @override
  String get sendOtpDescription => 'یک کد تأیید به شماره تلفن شما ارسال شده است';

  @override
  String get resendOtp => 'دوباره کد را ارسال کنید';

  @override
  String get useOtpInstead => 'به جای آن از OTP استفاده کنید';

  @override
  String get home => 'صفحه اصلی';

  @override
  String get logout => 'خروج';

  @override
  String get driverLicenseNumber => 'شماره گواهینامه رانندگی';

  @override
  String get email => 'پست الکترونیک';

  @override
  String get address => 'نشانی';

  @override
  String get gender => 'جنسیت';

  @override
  String get genderMale => 'نر';

  @override
  String get genderFemale => 'زن';

  @override
  String get genderUnknown => 'خنثی / ناشناخته';

  @override
  String get vehiclePlateNumber => 'شماره پلاک خودرو';

  @override
  String get vehicleColor => 'رنگ خودرو';

  @override
  String get vehicleModelAndMake => 'مدل خودرو';

  @override
  String get vehicleProductionYear => 'سال تولید خودرو';

  @override
  String get bankName => 'نام بانک';

  @override
  String get bankRoutingNumber => 'شماره مسیریابی بانک';

  @override
  String get bankAccountNumber => 'شماره حساب بانکی';

  @override
  String get bankSwift => 'کد سوئیفت';

  @override
  String get uploadImage => 'آپلود تصویر';

  @override
  String get yourBalance => 'تعادل شما';

  @override
  String get rideCancellation => 'لغو سواری';

  @override
  String get cancelRideMessage => 'آیا مطمئن هستید که می خواهید سواری خود را لغو کنید؟';

  @override
  String get cancelRideSuccess => 'سواری با موفقیت لغو شد';

  @override
  String get confirmAndCancelRide => 'تایید';

  @override
  String get selectPaymentMethod => 'روش پرداخت را انتخاب کنید';

  @override
  String get rideFeePaid => 'هزینه سواری پرداخت شده است';

  @override
  String get rideFeeUnpaid => 'هزینه سواری هنوز پرداخت نشده است';

  @override
  String get total => 'جمع';

  @override
  String get totalPrice => 'قیمت کل';

  @override
  String get addCustomCredit => 'ویرایش سفارشی را اضافه کنید';

  @override
  String get serviceFee => 'هزینه خدمات';

  @override
  String get serviceOptionFee => 'هزینه گزینه خدمات';

  @override
  String get couponDiscount => 'تخفیف کوپن';

  @override
  String get walletCreit => 'اعتبار کیف پول';

  @override
  String get custom => 'سفارشی';

  @override
  String get payment => 'پرداخت';

  @override
  String get cashPayment => 'پرداخت نقدی';

  @override
  String cashPaymentDescription(String amount) {
    return 'آیا تایید می کنید که $amount دریافت کرده اید؟';
  }

  @override
  String get cashPaymentReceived => 'پرداخت نقدی دریافت شد';

  @override
  String get confirmAndEndTrip => 'تایید';

  @override
  String get earnings => 'درآمد';

  @override
  String get acceptOrder => 'قبول سفارش';

  @override
  String get canceled => 'لغو شد';

  @override
  String get unknown => 'ناشناخته';

  @override
  String get commission => 'کمیسیون';

  @override
  String get selectProfileImage => 'تصویر نمایه را انتخاب کنید';

  @override
  String get chooseAvatarDescription => 'یا یک آواتار از لیست زیر انتخاب کنید:';

  @override
  String get fullName => 'نام و نام خانوادگی';

  @override
  String get favoriteDrivers => 'درایورهای مورد علاقه';

  @override
  String get distanceTraveled => 'مسافت طی شده';

  @override
  String get rating => 'رتبه بندی';

  @override
  String get map => 'نقشه';

  @override
  String get income => 'درآمد';

  @override
  String get timeSpent => 'زمان صرف شده';

  @override
  String get daily => 'روزانه';

  @override
  String get monthly => 'ماهانه';

  @override
  String get noRecordsFoundEarnings => 'هیچ سابقه سفری برای این فیلترها یافت نشد';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'هنوز بازخوردی وجود ندارد';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'هنوز بازخورد کافی برای نشان دادن ندارید.';

  @override
  String get feedbacksSummary => 'خلاصه بازخوردها';

  @override
  String get feedbacksGoodTitle => 'کار عالی!';

  @override
  String get feedbacksGoodSubtitle => 'رتبه بندی شما تا اینجا خوب به نظر می رسد';

  @override
  String get feedbacksBadTitle => 'میانگین';

  @override
  String get feedbacksBadSubtitle => 'می توانید از برخی پیشرفت ها استفاده کنید';

  @override
  String get feedbacksGoodPointsTitle => 'چند نکته خوب در مورد شما:';

  @override
  String get feedbacksbadPointsTitle => 'برخی از نکاتی که می توانید بهبود بخشید:';

  @override
  String get feedbacksReviewsTitle => 'برخی از بررسی های قبلی';

  @override
  String get payoutMethods => 'روش های پرداخت';

  @override
  String get notice => 'اطلاع:';

  @override
  String get payoutNoticeTitle => 'به طور خودکار هفته ای دو بار توسط ادمین پرداخت می شود.';

  @override
  String get addPayoutMethod => 'افزودن روش پرداخت';

  @override
  String get navigate => 'پیمایش کنید';

  @override
  String get noPayoutMethods => 'روش پرداخت وجود ندارد';

  @override
  String get name => 'نام';

  @override
  String get nameHint => 'نام را وارد کنید';

  @override
  String get bankNameHint => 'نام بانک را وارد کنید';

  @override
  String get branchName => 'نام شعبه';

  @override
  String get branchNameHint => 'نام شعبه را وارد کنید';

  @override
  String get accountHolderName => 'نام صاحب حساب';

  @override
  String get routingNumber => 'شماره مسیریابی';

  @override
  String get routingNumberHint => 'شماره مسیریابی را وارد کنید';

  @override
  String get accountNumber => 'شماره حساب';

  @override
  String get accountNumberHint => 'شماره حساب را وارد کنید';

  @override
  String get addressHint => 'آدرس را وارد کنید';

  @override
  String get dateOfBith => 'تاریخ تولد';

  @override
  String get yearHint => 'سال';

  @override
  String get monthHint => 'ماه';

  @override
  String get dayHint => 'روز';

  @override
  String get city => 'شهر';

  @override
  String get cityHint => 'شهر را وارد کنید';

  @override
  String get state => 'حالت';

  @override
  String get stateHint => 'ایالت را وارد کنید';

  @override
  String get zipCode => 'کد پستی';

  @override
  String get zipCodeHint => 'کد پستی را وارد کنید';

  @override
  String get day => 'روز';

  @override
  String get month => 'ماه';

  @override
  String get year => 'سال';

  @override
  String get noActivitiesYet => 'هنوز هیچ فعالیتی وجود ندارد.';

  @override
  String get headingToDestination => 'در حال حرکت به سمت مقصد';

  @override
  String get driverArrivedNotice => 'راننده منتظر شماست';

  @override
  String get driverShouldAriveInNotice => 'تخمین زده می شود که راننده وارد شود';

  @override
  String get driverShouldHaveArrivedNotice => 'راننده باید هر لحظه در حال حاضر برسد';

  @override
  String get deleteAccount => 'حذف حساب کاربری';

  @override
  String get deleteAccountNotice => 'آیا مطمئن هستید که می خواهید اکانت خود را حذف کنید؟ پس از 30 روز، حساب شما برای همیشه حذف خواهد شد. در این مدت می توانید با ورود مجدد به حساب کاربری خود بازیابی کنید.';

  @override
  String get confirmAndDeleteAccount => 'تایید';

  @override
  String get accountDeleted => 'اکانت حذف شده است';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'من از ساعت $pickup به سمت $destination در راه هستم.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return 'نام راننده من $firstName $lastName است، شماره موبایلم $mobileNumber است.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' نام سوار با من $firstName $lastName، شماره موبایل $mobileNumber است.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return 'سفر از $startTime شروع شده است و انتظار دارم سفر حدودا $duration دقیقه طول بکشد';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'انتظار دارم با سوار شدن به ماشین راننده، سفر تقریباً $duration دقیقه طول بکشد.';
  }

  @override
  String get sendSOSMessage => 'مهم: لطفاً از این ویژگی فقط در مواقع اضطراری استفاده کنید. ما به نمایندگی از شما با مقامات تماس خواهیم گرفت.';

  @override
  String get confirmAndSendSOS => 'تایید';

  @override
  String get sosSentSuccessfully => 'SOS با موفقیت ارسال شد';

  @override
  String get topUpSuccess => 'کیف پول با موفقیت شارژ شد';

  @override
  String get cancelNotAllowed => 'لغو سفری که از قبل شروع شده است امکان پذیر نیست.';

  @override
  String get error => 'خطا';

  @override
  String get connectionError => 'خطای اتصال';

  @override
  String get serverError => 'خطای سرور';

  @override
  String get addNewLocation => 'اضافه کردن مکان جدید';

  @override
  String get twoWayTrip => 'سفر دو طرفه';

  @override
  String get reportSubmitted => 'گزارش ارسال شد';

  @override
  String get reportSubmittedDescription => 'گزارش شما با موفقیت ارسال شد، ما آن را بررسی کرده و اقدامات لازم را انجام خواهیم داد.';

  @override
  String get cardNumber => 'شماره کارت';

  @override
  String get cardNumberHint => 'شماره کارت را وارد کنید';

  @override
  String get expiryDate => 'تاریخ انقضا';

  @override
  String get expiryDateHint => 'MM/YY';

  @override
  String get noFavoriteDrivers => 'بدون راننده مورد علاقه';

  @override
  String get noFavoriteDriversDescription => 'می‌توانید هنگام رتبه‌بندی رانندگان پس از سفر، آنها را به‌عنوان موارد دلخواه علامت‌گذاری کنید.';

  @override
  String get pickupLocationNotFound => 'ما نتوانستیم مکان فعلی شما را با استفاده از GPS به عنوان نقطه تحویل تعیین کنیم. لطفا نقطه تحویل خود را به صورت دستی وارد کنید.';

  @override
  String get dragToSelect => 'برای انتخاب بکشید';

  @override
  String get skip => 'پرش کنید';

  @override
  String get openSettings => 'تنظیمات را باز کنید';

  @override
  String get locationPermission => 'مجوز مکان';

  @override
  String get locationPermissionDeniedForeverMessage => 'مجوز موقعیت مکانی برای دریافت سفارشات در اطراف شما و همچنین برای ردیابی موقعیت مکانی شما توسط سوارکار الزامی است. شما نمی توانید بدون این اجازه سفارش دریافت کنید و ما مراقب مکان فعلی شما باشیم. می توانید این مجوز را در تنظیمات گوشی خود تغییر دهید.';

  @override
  String get allow => 'اجازه';

  @override
  String get driverOnlineTitle => 'در جستجوی سواری';

  @override
  String get driverOfflineTitle => 'برای شروع دریافت درخواست، آنلاین شوید';

  @override
  String get payInCash => 'پرداخت نقدی';

  @override
  String get payInCashDescription => 'لطفا نسبت به پرداخت نقدی به راننده اقدام نمایید. راننده پس از دریافت پرداخت را تایید می کند.';

  @override
  String get addToFavoriteDrivers => 'به درایورهای مورد علاقه اضافه کنید';

  @override
  String get slideToConfirmArrival => 'برای تایید ورود اسلاید کنید';

  @override
  String get slideToConfirmPickup => 'برای تأیید دریافت اسلاید کنید';

  @override
  String get slideToConfirmDropoff => 'برای تأیید خروج اسلاید کنید';

  @override
  String get noticePickingUpRiderIn => 'سوار کردن سوار در:';

  @override
  String get noticeRiderNotified => 'به سوار اطلاع داده شده است، سوار را بردارید و سواری را شروع کنید';
}
