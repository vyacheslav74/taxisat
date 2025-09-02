import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Bengali Bangla (`bn`).
class SBn extends S {
  SBn([String locale = 'bn']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'কপিরাইট © $company, সর্বস্বত্ব সংরক্ষিত।';
  }

  @override
  String get welcomeTitle => 'অ্যাপটিতে স্বাগতম';

  @override
  String get today => 'আজ';

  @override
  String get yesterday => 'গতকাল';

  @override
  String get settings => 'সেটিংস';

  @override
  String get about => 'সম্পর্কিত';

  @override
  String get profileInfo => 'প্রোফাইল তথ্য';

  @override
  String get language => 'ভাষা';

  @override
  String get firstName => 'নামের প্রথম অংশ';

  @override
  String get lastName => 'নামের শেষাংশ';

  @override
  String get mobileNumber => 'মোবাইল নম্বর';

  @override
  String get edit => 'সম্পাদনা করুন';

  @override
  String get enterCode => 'কোড লিখুন';

  @override
  String get editProfile => 'জীবন বৃত্তান্ত সম্পাদনা';

  @override
  String get bankTransfer => 'ব্যাংক লেনদেন';

  @override
  String get gift => 'উপহার';

  @override
  String get correction => 'সংশোধন';

  @override
  String get inappPayment => 'ইন-অ্যাপ পেমেন্ট';

  @override
  String get orderFee => 'অর্ডার ফি';

  @override
  String get parkingFee => 'পার্কিং ফি';

  @override
  String get cancellationFee => 'বাতিল ফি';

  @override
  String get withdraw => 'প্রত্যাহার করুন';

  @override
  String get walletTransactions => 'ওয়ালেট লেনদেন';

  @override
  String get addCard => 'কার্ড যোগ করুন';

  @override
  String get visa => 'ভিসা';

  @override
  String get mastercard => 'মাস্টারকার্ড';

  @override
  String get addBalance => 'ব্যালেন্স যোগ করুন';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString মিনিট',
      one: '$minutesString মিনিট',
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
      other: '$hoursString ঘন্টা',
      one: '$hoursString ঘন্টা',
      zero: 'Zero hours',
    );
    return 'সময়কাল: $_temp0';
  }

  @override
  String get timePastDue => 'অতীতের দেনা';

  @override
  String get justNow => 'এক্ষুনি';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString মি';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString কিমি';
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
  String get welcomeSubtitle => 'আপনার আরামের জন্য ডিজাইন করা ট্যাক্সি পরিষেবা আপনার পছন্দের ড্রাইভারদের সাথে ট্রিপ করুন এবং আপনার রাইডের পছন্দগুলি নির্বাচন করুন৷';

  @override
  String get onboardingRewardTitle => 'পুরস্কৃত পান!';

  @override
  String get onboardingRewardSubtitle => 'বন্ধুকে রেফার করা, ট্রিপ সম্পূর্ণ করা এবং আরও অনেক কিছুর জন্য অতিরিক্ত বোনাস পান...';

  @override
  String get selectLanguage => 'ভাষা নির্বাচন কর';

  @override
  String get searchForLanguage => 'ভাষার জন্য অনুসন্ধান করুন';

  @override
  String get enterPhoneNumber => 'ফোন নম্বর লিখুন';

  @override
  String get actionContinue => 'চালিয়ে যান';

  @override
  String get whereIsYourDestination => 'তোমার গন্তব্য কোথায়?';

  @override
  String get whereAreYouGoing => 'আপনি কোথায় যাচ্ছেন?';

  @override
  String get selectDestinations => 'আপনার রুট';

  @override
  String get pickupPoint => 'সংগ্রহের স্থান';

  @override
  String get enterPickupPoint => 'পিক-আপ পয়েন্টে প্রবেশ করুন';

  @override
  String get dropoffPoint => 'ড্রপ-অফ পয়েন্ট';

  @override
  String get enterDropoffPoint => 'ড্রপ-অফ পয়েন্ট লিখুন';

  @override
  String get stopPoint => 'স্টপ পয়েন্ট';

  @override
  String get enterStopPoint => 'স্টপ পয়েন্ট লিখুন';

  @override
  String get confirm => 'নিশ্চিত করুন';

  @override
  String get confirmDropoff => 'ড্রপ-অফ নিশ্চিত করুন';

  @override
  String get confirmPickup => 'পিক আপ নিশ্চিত করুন';

  @override
  String get enterAtLeast3Characters => 'কমপক্ষে 3টি অক্ষর লিখুন';

  @override
  String get noResults => 'কোন ফলাফল নেই';

  @override
  String get bookNow => 'এখন বুক করুন';

  @override
  String get cash => 'নগদ';

  @override
  String get online => 'অনলাইন';

  @override
  String get offline => 'অফলাইন';

  @override
  String get onTrip => 'ভ্রমণে';

  @override
  String get confirmPay => 'নিশ্চিত করুন';

  @override
  String get cancel => 'বাতিল করুন';

  @override
  String get apply => 'আবেদন করুন';

  @override
  String get enterCouponCode => 'কুপন এর কোডটি প্রবেশ করান';

  @override
  String get reserveRide => 'রিজার্ভ রাইড';

  @override
  String get reserveRideMessage => 'আপনি আপনার রাইড সংরক্ষিত করতে চান সঠিক তারিখ এবং সময় নির্বাচন করুন';

  @override
  String get reserveRideMessageSuccess => 'আপনার রাইড সফলভাবে সংরক্ষিত হয়েছে। আপনি \'নির্ধারিত রাইডস\' বিভাগে আপনার সংরক্ষিত রাইডগুলি দেখতে পারেন।';

  @override
  String get cancelReservation => 'রিজার্ভেশন বাতিল করুন';

  @override
  String get confirmResrve => 'নিশ্চিত করুন';

  @override
  String get enterCouponDescription => 'দামে প্রয়োগ করতে আপনার কুপন কোড প্রবেশ করান';

  @override
  String get enterCoupon => 'কুপন লিখুন';

  @override
  String get couponApplied => 'কুপন প্রয়োগ করা হয়েছে';

  @override
  String get couponAppliedDescription => 'আপনার রাইডের ভাড়ায় কুপন প্রয়োগ করা হয়েছে';

  @override
  String get done => 'সম্পন্ন!';

  @override
  String get ridePreferences => 'রাইড পছন্দ';

  @override
  String get noWaitTime => 'অপেক্ষার সময় নেই';

  @override
  String minutesRange(String minutes) {
    return '$minutes মিনিট';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds সেকেন্ড';
  }

  @override
  String get rideRequested => 'রাইড অনুরোধ করা হয়েছে';

  @override
  String get searchingForAnOnlineDriver => 'একজন অনলাইন ড্রাইভার খোঁজা হচ্ছে...';

  @override
  String get cancelRide => 'রাইড বাতিল করুন';

  @override
  String get rideSafety => 'রাইড নিরাপত্তা';

  @override
  String get shareTripInformation => 'ভ্রমণের তথ্য শেয়ার করুন';

  @override
  String get shareTripInformationDescription => 'আপনি একটি বন্ধুর সাথে আপনার ভ্রমণ তথ্য শেয়ার করতে পারেন';

  @override
  String get sos => 'এসওএস';

  @override
  String get sosDescription => 'কর্তৃপক্ষকে জরুরি অবস্থা সম্পর্কে অবহিত করুন';

  @override
  String get reportAnIssue => 'একটি সমস্যা রিপোর্ট';

  @override
  String get reportAnIssueMidTripDescription => 'ট্রিপে একটি নিরাপত্তা সমস্যা শেয়ার করুন';

  @override
  String get rideOptions => 'রাইড বিকল্প';

  @override
  String get goBackToRide => 'রাইড করতে ফিরে যান';

  @override
  String get waitTime => 'অপেক্ষার সময়';

  @override
  String get couponCode => 'কুপন কোড';

  @override
  String get giftCardCode => 'উপহার কার্ড কোড';

  @override
  String get nicePoints => 'চমৎকার পয়েন্ট';

  @override
  String get negativePoints => 'নেতিবাচক পয়েন্ট';

  @override
  String get reviewCommentBoxHint => 'একটা মন্তব্য যোগ করুন...';

  @override
  String get howWasYourTrip => 'কেমন ছিল তোমার যাত্রা?';

  @override
  String oneStarReviewTitle(String name) {
    return '$name সহ ভয়ানক ট্রিপ';
  }

  @override
  String twoStarReviewTitle(String name) {
    return '$name দিয়ে খারাপ ট্রিপ';
  }

  @override
  String threeStarReviewTitle(String name) {
    return '$name দিয়ে গড় ট্রিপ';
  }

  @override
  String fourStarReviewTitle(String name) {
    return '$name এর সাথে ভাল ট্রিপ';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return '$name সহ দুর্দান্ত ট্রিপ';
  }

  @override
  String get submitFeedback => 'প্রতিক্রিয়া জমা দিন';

  @override
  String get typeAMessage => 'একটি বার্তা টাইপ করুন';

  @override
  String get findAnotherRide => 'অন্য রাইড খুঁজুন';

  @override
  String get next => 'পরবর্তী';

  @override
  String get searchForDropoffLocation => 'ড্রপ-অফ অবস্থানের জন্য অনুসন্ধান করুন';

  @override
  String get searchForPickupLocation => 'পিক আপ অবস্থানের জন্য অনুসন্ধান করুন';

  @override
  String get placeConfirmDialogPlaceholder => 'আপনার ড্রপ অফ অবস্থান কোথায়?';

  @override
  String get noAnnouncements => 'কোনো ঘোষণা নেই';

  @override
  String get announcements => 'ঘোষণা';

  @override
  String reviewsCount(int count) {
    return '($count পর্যালোচনা)';
  }

  @override
  String get tripDetails => 'ভ্রমণের বিবরণ';

  @override
  String get rideDetails => 'রাইডের বিবরণ';

  @override
  String get orderARide => 'একটি রাইড অর্ডার';

  @override
  String get noRidesYet => 'এখনও রাইড নেই!';

  @override
  String get issueSubjectPlaceholder => 'সমস্যাটির বিষয় টাইপ করুন';

  @override
  String get issueContentPlaceholder => 'সমস্যার বিবরণ টাইপ করুন';

  @override
  String get reportThisIssue => 'এই সমস্যা রিপোর্ট';

  @override
  String get fieldIsRequired => 'আপনি উত্তর দিবেন না';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get favoriteLocations => 'প্রিয় অবস্থান';

  @override
  String get favoriteLocationsSubtitle => 'সহজে অ্যাক্সেসের জন্য আপনার প্রিয় অবস্থানগুলি সংরক্ষণ করুন৷';

  @override
  String get createAFavoriteLocation => 'একটি প্রিয় অবস্থান তৈরি করুন';

  @override
  String get addressTitleLabel => 'ঠিকানার শিরোনাম';

  @override
  String get clickToSetLocation => 'অবস্থান সেট করতে ক্লিক করুন';

  @override
  String get whereIsYourNewFavoriteLocation => 'আপনার নতুন প্রিয় অবস্থান কোথায়?';

  @override
  String get locateFavoriteLocationDescription => 'সঠিক অবস্থানটি পিন করতে নীচের অনুসন্ধান বাক্স বা মানচিত্রটি ব্যবহার করুন৷';

  @override
  String get searchLocation => 'অবস্থান অনুসন্ধান করুন';

  @override
  String get saveChanges => 'পরিবর্তনগুলোর সংরক্ষন';

  @override
  String get rideHistory => 'রাইড ইতিহাস';

  @override
  String get scheduledRides => 'নির্ধারিত রাইড';

  @override
  String get keepTheOrder => 'অর্ডার রাখুন';

  @override
  String get cancelTheRide => 'রাইড বাতিল করুন';

  @override
  String get walletBalance => 'ওয়ালেট ব্যালেন্স';

  @override
  String get activities => 'কার্যক্রম';

  @override
  String get pleaseEnterGiftCardCode => 'উপহার কার্ড কোড লিখুন দয়া করে';

  @override
  String get redeem => 'খালাস';

  @override
  String get enterGiftCardCode => 'উপহার কার্ড কোড লিখুন';

  @override
  String get redeemGiftCard => 'উপহার কার্ড খালাস';

  @override
  String get redeemGiftCardDescription => 'এটি রিডিম করতে আপনার উপহার কার্ড কোড লিখুন।';

  @override
  String get redeemSuccessTitle => 'উপহার কার্ড খালাস!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'আপনি সফলভাবে $amount উপহার কার্ড রিডিম করেছেন।';
  }

  @override
  String get addCredit => 'ক্রেডিট যোগ করুন';

  @override
  String get payNow => 'এখন পরিশোধ করুন';

  @override
  String get addCreditToWallet => 'ওয়ালেটে ক্রেডিট যোগ করুন';

  @override
  String get pleaseSelectAmount => 'পরিমাণ নির্বাচন করুন';

  @override
  String get enterAmount => 'পরিমান লিখুন';

  @override
  String get selectAmount => 'পরিমাণ নির্বাচন করুন:';

  @override
  String get wallet => 'ওয়ালেট';

  @override
  String get totalRides => 'মোট রাইড';

  @override
  String get appSettings => 'অ্যাপ সেটিংস';

  @override
  String get mapSettings => 'মানচিত্র সেটিংস';

  @override
  String get lanugageSettings => 'ভাষা সেটিংস';

  @override
  String get paymentMethods => 'মুল্য পরিশোধ পদ্ধতি';

  @override
  String get selectCards => 'কার্ড নির্বাচন করুন';

  @override
  String get selectCardsDescription => 'আপনি ইনভয়েসে পেমেন্ট পদ্ধতির তালিকায় যে কার্ড নম্বরগুলি প্রদর্শন করতে চান তা নির্বাচন করতে পারেন৷';

  @override
  String get delete => 'মুছে ফেলা';

  @override
  String get nameOnCard => 'কার্ডের ওপর নাম';

  @override
  String get profile => 'প্রোফাইল';

  @override
  String get scheduledRide => 'নির্ধারিত রাইড';

  @override
  String get addPaymentMethod => 'পেমেন্ট পদ্ধতি যোগ করুন';

  @override
  String get addPaymentMethodDescription => 'আপনার অ্যাকাউন্টে একটি নতুন অর্থপ্রদানের পদ্ধতি যোগ করুন';

  @override
  String get saveCard => 'কার্ড সংরক্ষণ';

  @override
  String get selectDialCode => 'ডায়াল কোড নির্বাচন করুন';

  @override
  String get searchCountryName => 'দেশের নাম অনুসন্ধান করুন';

  @override
  String get preferences => 'পছন্দসমূহ:';

  @override
  String get onboardingDescription => 'আপনার অ্যাকাউন্ট নিবন্ধন করা এবং আরামদায়ক রাইড উপভোগ করা থেকে কিছুক্ষণ দূরে';

  @override
  String get signInSignUp => 'সাইন ইন সাইন আপ';

  @override
  String get enterOtp => 'OTP লিখুন';

  @override
  String get enterPassword => 'পাসওয়ার্ড লিখুন';

  @override
  String get enterPasswordDescription => 'অবিরত আপনার পাসওয়ার্ড দিন';

  @override
  String get setPassword => 'পাসওয়ার্ড সেট করুন';

  @override
  String get password => 'পাসওয়ার্ড';

  @override
  String get passwordRuleDescription => 'নিম্নলিখিতগুলির মধ্যে অন্তত দুটি অন্তর্ভুক্ত করুন:';

  @override
  String get passwordRuleLength => '9 থেকে 64 অক্ষরের মধ্যে';

  @override
  String get passwordRuleUpperCase => 'বড় হাতের অক্ষর';

  @override
  String get passwordRuleLowerCase => 'ছোট হাতের অক্ষর';

  @override
  String get passwordRuleNumber => 'সংখ্যা';

  @override
  String get passwordRuleSpecialCharacter => 'বিশেষ অক্ষর';

  @override
  String get contactDetails => 'যোগাযোগের ঠিকানা';

  @override
  String get vehicleDetails => 'যানবাহনের বিবরণ';

  @override
  String get payoutInformation => 'পেআউট তথ্য';

  @override
  String get documents => 'নথিপত্র';

  @override
  String get accessDenied => 'অ্যাক্সেস অস্বীকার করা হয়েছে৷';

  @override
  String get success => 'সফলতা';

  @override
  String get skipForNow => 'এখন জন্য লাফালাফি';

  @override
  String get sendOtpDescription => 'আপনার ফোন নম্বরে একটি যাচাইকরণ কোড পাঠানো হয়েছে';

  @override
  String get resendOtp => 'পুনরায় পাঠানো কোড';

  @override
  String get useOtpInstead => 'পরিবর্তে OTP ব্যবহার করুন';

  @override
  String get home => 'বাড়ি';

  @override
  String get logout => 'প্রস্থান';

  @override
  String get driverLicenseNumber => 'ড্রাইভার লাইসেন্স নম্বর';

  @override
  String get email => 'ই-মেইল';

  @override
  String get address => 'ঠিকানা';

  @override
  String get gender => 'লিঙ্গ';

  @override
  String get genderMale => 'পুরুষ';

  @override
  String get genderFemale => 'মহিলা';

  @override
  String get genderUnknown => 'নিরপেক্ষ/অজানা';

  @override
  String get vehiclePlateNumber => 'গাড়ির প্লেট নম্বর';

  @override
  String get vehicleColor => 'গাড়ির রঙ';

  @override
  String get vehicleModelAndMake => 'গাড়ির মডেল';

  @override
  String get vehicleProductionYear => 'যানবাহন উৎপাদন বছর';

  @override
  String get bankName => 'ব্যাংকের নাম';

  @override
  String get bankRoutingNumber => 'ব্যাঙ্ক রাউটিং নম্বর';

  @override
  String get bankAccountNumber => 'ব্যাংক একাউন্ট নম্বর';

  @override
  String get bankSwift => 'সুইফট কোড';

  @override
  String get uploadImage => 'চিত্র আপলোড';

  @override
  String get yourBalance => 'আপনার ব্যালেন্স';

  @override
  String get rideCancellation => 'রাইড বাতিলকরণ';

  @override
  String get cancelRideMessage => 'আপনি কি আপনার রাইড বাতিল করার বিষয়ে নিশ্চিত?';

  @override
  String get cancelRideSuccess => 'রাইড সফলভাবে বাতিল করা হয়েছে';

  @override
  String get confirmAndCancelRide => 'নিশ্চিত করুন';

  @override
  String get selectPaymentMethod => 'অর্থপ্রদানের পদ্ধতি নির্বাচন করুন';

  @override
  String get rideFeePaid => 'রাইডের ফি দেওয়া হয়েছে';

  @override
  String get rideFeeUnpaid => 'রাইডের ফি এখনো দেওয়া হয়নি';

  @override
  String get total => 'মোট';

  @override
  String get totalPrice => 'মোট দাম';

  @override
  String get addCustomCredit => 'কাস্টম রিডিট যোগ করুন';

  @override
  String get serviceFee => 'পরিসেবা চার্জ';

  @override
  String get serviceOptionFee => 'পরিষেবা বিকল্প ফি';

  @override
  String get couponDiscount => 'কুপন ডিসকাউন্ট';

  @override
  String get walletCreit => 'ওয়ালেট ক্রেডিট';

  @override
  String get custom => 'কাস্টম';

  @override
  String get payment => 'পেমেন্ট';

  @override
  String get cashPayment => 'নগদে টাকা প্রদান';

  @override
  String cashPaymentDescription(String amount) {
    return 'আপনি কি নিশ্চিত করেছেন যে আপনি $amount পেয়েছেন?';
  }

  @override
  String get cashPaymentReceived => 'নগদ পেমেন্ট প্রাপ্ত';

  @override
  String get confirmAndEndTrip => 'নিশ্চিত করুন';

  @override
  String get earnings => 'আয়';

  @override
  String get acceptOrder => 'আদেশ গ্রহণ করুন';

  @override
  String get canceled => 'বাতিল';

  @override
  String get unknown => 'অজানা';

  @override
  String get commission => 'কমিশন';

  @override
  String get selectProfileImage => 'প্রোফাইল ইমেজ নির্বাচন করুন';

  @override
  String get chooseAvatarDescription => 'অথবা নীচের তালিকা থেকে একটি অবতার নির্বাচন করুন:';

  @override
  String get fullName => 'পুরো নাম';

  @override
  String get favoriteDrivers => 'প্রিয় ড্রাইভার';

  @override
  String get distanceTraveled => 'দূরত্ব ভ্রমণ';

  @override
  String get rating => 'রেটিং';

  @override
  String get map => 'মানচিত্র';

  @override
  String get income => 'আয়';

  @override
  String get timeSpent => 'সময় অতিবাহিত';

  @override
  String get daily => 'দৈনিক';

  @override
  String get monthly => 'মাসিক';

  @override
  String get noRecordsFoundEarnings => 'এই ফিল্টারগুলির জন্য কোনও ট্রিপ রেকর্ড পাওয়া যায়নি৷';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'এখনও কোন প্রতিক্রিয়া';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'এখনও দেখানোর জন্য আপনার কাছে যথেষ্ট প্রতিক্রিয়া নেই৷';

  @override
  String get feedbacksSummary => 'প্রতিক্রিয়া সারাংশ';

  @override
  String get feedbacksGoodTitle => 'চমৎকার কাজ!';

  @override
  String get feedbacksGoodSubtitle => 'আপনার রেটিং এখন পর্যন্ত ভাল দেখাচ্ছে';

  @override
  String get feedbacksBadTitle => 'গড়';

  @override
  String get feedbacksBadSubtitle => 'আপনি কিছু উন্নতি ব্যবহার করতে পারেন';

  @override
  String get feedbacksGoodPointsTitle => 'আপনার সম্পর্কে কিছু ভাল পয়েন্ট:';

  @override
  String get feedbacksbadPointsTitle => 'কিছু পয়েন্ট যা আপনি উন্নত করতে পারেন:';

  @override
  String get feedbacksReviewsTitle => 'আগের কিছু রিভিউ';

  @override
  String get payoutMethods => 'পেআউট পদ্ধতি';

  @override
  String get notice => 'বিজ্ঞপ্তি:';

  @override
  String get payoutNoticeTitle => 'আপনাকে সপ্তাহে দুবার অ্যাডমিন দ্বারা স্বয়ংক্রিয়ভাবে অর্থ প্রদান করা হবে।';

  @override
  String get addPayoutMethod => 'পেআউট পদ্ধতি যোগ করুন';

  @override
  String get navigate => 'নেভিগেট করুন';

  @override
  String get noPayoutMethods => 'কোনো পেআউট পদ্ধতি নেই';

  @override
  String get name => 'নাম';

  @override
  String get nameHint => 'নাম লিখুন';

  @override
  String get bankNameHint => 'ব্যাঙ্কের নাম লিখুন';

  @override
  String get branchName => 'শাখার নাম';

  @override
  String get branchNameHint => 'শাখার নাম লিখুন';

  @override
  String get accountHolderName => 'হিসাব দাতার নাম';

  @override
  String get routingNumber => 'রাউটিং নম্বর';

  @override
  String get routingNumberHint => 'রাউটিং নম্বর লিখুন';

  @override
  String get accountNumber => 'হিসাব নাম্বার';

  @override
  String get accountNumberHint => 'অ্যাকাউন্ট নম্বর লিখুন';

  @override
  String get addressHint => 'ঠিকানা লিখুন';

  @override
  String get dateOfBith => 'জন্ম তারিখ';

  @override
  String get yearHint => 'বছর';

  @override
  String get monthHint => 'মাস';

  @override
  String get dayHint => 'দিন';

  @override
  String get city => 'শহর';

  @override
  String get cityHint => 'শহরে প্রবেশ কর';

  @override
  String get state => 'অবস্থা';

  @override
  String get stateHint => 'রাজ্যে প্রবেশ করুন';

  @override
  String get zipCode => 'জিপ কোড';

  @override
  String get zipCodeHint => 'জিপ কোড প্রবেশ';

  @override
  String get day => 'দিন';

  @override
  String get month => 'মাস';

  @override
  String get year => 'বছর';

  @override
  String get noActivitiesYet => 'এখনো কোনো কার্যক্রম নেই.';

  @override
  String get headingToDestination => 'গন্তব্যের দিকে যাচ্ছে';

  @override
  String get driverArrivedNotice => 'ড্রাইভার আপনার জন্য অপেক্ষা করছে';

  @override
  String get driverShouldAriveInNotice => 'ড্রাইভার প্রবেশ করবে অনুমান করা হচ্ছে';

  @override
  String get driverShouldHaveArrivedNotice => 'ড্রাইভার এখন যে কোন মুহূর্তে পৌঁছানো উচিত';

  @override
  String get deleteAccount => 'হিসাব মুছে ফেলা';

  @override
  String get deleteAccountNotice => 'আপনি আপনার অ্যাকাউন্ট মুছে ফেলতে চান আপনি কি নিশ্চিত? 30 দিন পরে, আপনার অ্যাকাউন্ট স্থায়ীভাবে মুছে ফেলা হবে। এই সময়ের মধ্যে, আপনি আবার সাইন ইন করে আপনার অ্যাকাউন্ট পুনরুদ্ধার করতে পারেন৷';

  @override
  String get confirmAndDeleteAccount => 'নিশ্চিত করুন ';

  @override
  String get accountDeleted => 'অ্যাকাউন্ট মুছে ফেলা হয়েছে';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'আমি $pickup থেকে $destination এ যাচ্ছি।';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' আমার ড্রাইভারের নাম $firstName $lastName, মোবাইল নম্বর হল $mobileNumber';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' আমার সাথে রাইডারের নাম $firstName $lastName, মোবাইল নম্বর হল $mobileNumber';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return 'ট্রিপ $startTime এ শুরু হয়েছে এবং আমি আশা করি ট্রিপে প্রায় $duration মিনিট সময় লাগবে';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' আমি চালকের গাড়িতে উঠলে ট্রিপে প্রায় $duration মিনিট সময় লাগবে বলে আশা করি।';
  }

  @override
  String get sendSOSMessage => 'গুরুত্বপূর্ণ: শুধুমাত্র জরুরি ক্ষেত্রে এই বৈশিষ্ট্যটি ব্যবহার করুন। আমরা আপনার পক্ষে কর্তৃপক্ষের সাথে যোগাযোগ করব।';

  @override
  String get confirmAndSendSOS => 'নিশ্চিত করুন';

  @override
  String get sosSentSuccessfully => 'SOS সফলভাবে পাঠানো হয়েছে';

  @override
  String get topUpSuccess => 'ওয়ালেট সফলভাবে টপ আপ করা হয়েছে৷';

  @override
  String get cancelNotAllowed => 'ইতিমধ্যে শুরু হওয়া রাইড বাতিল করা সম্ভব নয়।';

  @override
  String get error => 'ত্রুটি';

  @override
  String get connectionError => 'সংযোগ ত্রুটি';

  @override
  String get serverError => 'সার্ভার সমস্যা';

  @override
  String get addNewLocation => 'নতুন অবস্থান যোগ করুন';

  @override
  String get twoWayTrip => 'দ্বিমুখী ভ্রমণ';

  @override
  String get reportSubmitted => 'প্রতিবেদন দাখিল করা হয়েছে';

  @override
  String get reportSubmittedDescription => 'আপনার প্রতিবেদন সফলভাবে জমা দেওয়া হয়েছে, আমরা এটি পর্যালোচনা করব এবং প্রয়োজনীয় ব্যবস্থা নেব।';

  @override
  String get cardNumber => 'কার্ড নম্বর';

  @override
  String get cardNumberHint => 'কার্ড নম্বর লিখুন';

  @override
  String get expiryDate => 'মেয়াদ শেষ হওয়ার তারিখ';

  @override
  String get expiryDateHint => 'MM/YY';

  @override
  String get noFavoriteDrivers => 'প্রিয় চালক নেই';

  @override
  String get noFavoriteDriversDescription => 'ট্রিপের পরে রেটিং দেওয়ার সময় আপনি আপনার পছন্দের ড্রাইভারদের পছন্দসই হিসাবে চিহ্নিত করতে পারেন।';

  @override
  String get pickupLocationNotFound => 'আমরা পিকআপ পয়েন্ট হিসাবে জিপিএস ব্যবহার করে আপনার বর্তমান অবস্থান নির্ধারণ করতে পারিনি। ম্যানুয়ালি আপনার পিক আপ পয়েন্ট লিখুন.';

  @override
  String get dragToSelect => 'নির্বাচন করতে টেনে আনুন';

  @override
  String get skip => 'এড়িয়ে যান';

  @override
  String get openSettings => 'ওপেন সেটিংস';

  @override
  String get locationPermission => 'অবস্থানের অনুমতি';

  @override
  String get locationPermissionDeniedForeverMessage => 'আপনার আশেপাশে অর্ডার গ্রহণের জন্য এবং আপনার অবস্থান ট্র্যাক করার জন্য রাইডারের জন্য অবস্থানের অনুমতি একটি প্রয়োজন৷ আপনি এই অনুমতি ছাড়া অর্ডার গ্রহণ করতে পারবেন না এবং আমরা আপনার বর্তমান অবস্থান সম্পর্কে সতর্ক থাকি। আপনি আপনার ফোন সেটিংস থেকে এই অনুমতি পরিবর্তন করতে পারেন।';

  @override
  String get allow => 'অনুমতি দিন';

  @override
  String get driverOnlineTitle => 'একটি রাইড খুঁজছেন';

  @override
  String get driverOfflineTitle => 'অনুরোধ গ্রহণ শুরু করতে অনলাইন পান';

  @override
  String get payInCash => 'নগদে টাকা প্রদান';

  @override
  String get payInCashDescription => 'অনুগ্রহ করে ড্রাইভারকে নগদ অর্থ প্রদানের সাথে এগিয়ে যান। চালক পেমেন্ট পাওয়ার বিষয়টি নিশ্চিত করবেন।';

  @override
  String get addToFavoriteDrivers => 'প্রিয় ড্রাইভার যোগ করুন';

  @override
  String get slideToConfirmArrival => 'আগমন নিশ্চিত করতে স্লাইড করুন';

  @override
  String get slideToConfirmPickup => 'পিকআপ নিশ্চিত করতে স্লাইড করুন';

  @override
  String get slideToConfirmDropoff => 'ড্রপ-অফ নিশ্চিত করতে স্লাইড করুন';

  @override
  String get noticePickingUpRiderIn => 'এতে আরোহীকে তোলা হচ্ছে:';

  @override
  String get noticeRiderNotified => 'রাইডারকে জানানো হয়েছে, রাইডারকে পিকআপ করে রাইড শুরু করুন';
}
