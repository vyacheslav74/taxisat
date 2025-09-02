import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, All rights reserved.';
  }

  @override
  String get welcomeTitle => 'Welcome to the app';

  @override
  String get today => 'Today';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get settings => 'Settings';

  @override
  String get about => 'About';

  @override
  String get profileInfo => 'Profile info';

  @override
  String get language => 'Language';

  @override
  String get firstName => 'First name';

  @override
  String get lastName => 'Last name';

  @override
  String get mobileNumber => 'Mobile number';

  @override
  String get edit => 'Edit';

  @override
  String get enterCode => 'Enter code';

  @override
  String get editProfile => 'Edit profile';

  @override
  String get bankTransfer => 'Bank Transfer';

  @override
  String get gift => 'Gift';

  @override
  String get correction => 'Correction';

  @override
  String get inappPayment => 'In-app payment';

  @override
  String get orderFee => 'Order fee';

  @override
  String get parkingFee => 'Parking fee';

  @override
  String get cancellationFee => 'Cancellation fee';

  @override
  String get withdraw => 'Withdraw';

  @override
  String get walletTransactions => 'Wallet transactions';

  @override
  String get addCard => 'Add card';

  @override
  String get visa => 'Visa';

  @override
  String get mastercard => 'Mastercard';

  @override
  String get addBalance => 'Add balance';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Minutes',
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
      other: '$hoursString Hours',
      one: '$hoursString Hour',
      zero: 'Zero hours',
    );
    return 'Duration: $_temp0';
  }

  @override
  String get timePastDue => 'Past due';

  @override
  String get justNow => 'Just Now';

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
  String get welcomeSubtitle => 'Taxi service designed for your comfort have Trips with your favorite drivers and select your ride preferences';

  @override
  String get onboardingRewardTitle => 'Get rewarded!';

  @override
  String get onboardingRewardSubtitle => 'Get extra bonuses for referring a friend, completing trips and many more...';

  @override
  String get selectLanguage => 'Select language';

  @override
  String get searchForLanguage => 'Search for language';

  @override
  String get enterPhoneNumber => 'Enter Phone Number';

  @override
  String get actionContinue => 'Continue';

  @override
  String get whereIsYourDestination => 'Where is your destination?';

  @override
  String get whereAreYouGoing => 'Where are you going?';

  @override
  String get selectDestinations => 'Your route';

  @override
  String get pickupPoint => 'Pick-up point';

  @override
  String get enterPickupPoint => 'Enter pick-up point';

  @override
  String get dropoffPoint => 'Drop-off point';

  @override
  String get enterDropoffPoint => 'Enter drop-off point';

  @override
  String get stopPoint => 'Stop point';

  @override
  String get enterStopPoint => 'Enter stop point';

  @override
  String get confirm => 'Confirm';

  @override
  String get confirmDropoff => 'Confirm drop-off';

  @override
  String get confirmPickup => 'Confirm pick-up';

  @override
  String get enterAtLeast3Characters => 'Enter at least 3 characters';

  @override
  String get noResults => 'No results';

  @override
  String get bookNow => 'Book Now';

  @override
  String get cash => 'Cash';

  @override
  String get online => 'Online';

  @override
  String get offline => 'Offline';

  @override
  String get onTrip => 'On Trip';

  @override
  String get confirmPay => 'Confirm & Pay';

  @override
  String get cancel => 'Cancel';

  @override
  String get apply => 'Apply';

  @override
  String get enterCouponCode => 'Enter coupon code';

  @override
  String get reserveRide => 'Reserve ride';

  @override
  String get reserveRideMessage => 'Select the exact date and time you wish your ride to be reserved';

  @override
  String get reserveRideMessageSuccess => 'Your ride has been reserved successfully. You can view your reserved rides in the \'Scheduled rides\' section.';

  @override
  String get cancelReservation => 'Cancel reservation';

  @override
  String get confirmResrve => 'Confirm & resrve';

  @override
  String get enterCouponDescription => 'Insert your coupon code to be applied on prices';

  @override
  String get enterCoupon => 'Enter coupon';

  @override
  String get couponApplied => 'Coupon applied';

  @override
  String get couponAppliedDescription => 'Coupon has been applied to your ride\'s fare';

  @override
  String get done => 'Done!';

  @override
  String get ridePreferences => 'Ride Preferences';

  @override
  String get noWaitTime => 'No wait time';

  @override
  String minutesRange(String minutes) {
    return '$minutes minutes';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds seconds';
  }

  @override
  String get rideRequested => 'Ride requested';

  @override
  String get searchingForAnOnlineDriver => 'Searching for an online driver...';

  @override
  String get cancelRide => 'Cancel ride';

  @override
  String get rideSafety => 'Ride Safety';

  @override
  String get shareTripInformation => 'Share trip information';

  @override
  String get shareTripInformationDescription => 'You can share your trip info with a friend';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Let authorities know of an emergency';

  @override
  String get reportAnIssue => 'Report an issue';

  @override
  String get reportAnIssueMidTripDescription => 'Share a safety issue on-trip';

  @override
  String get rideOptions => 'Ride options';

  @override
  String get goBackToRide => 'Go back to ride';

  @override
  String get waitTime => 'Wait time';

  @override
  String get couponCode => 'Coupon code';

  @override
  String get giftCardCode => 'Gift card code';

  @override
  String get nicePoints => 'Nice points';

  @override
  String get negativePoints => 'Negative Points';

  @override
  String get reviewCommentBoxHint => 'Add a comment...';

  @override
  String get howWasYourTrip => 'How was your trip?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Terrible trip with $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Bad trip with $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Average trip with $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Good trip with $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Awesome trip with $name';
  }

  @override
  String get submitFeedback => 'Submit feedback';

  @override
  String get typeAMessage => 'Type a message';

  @override
  String get findAnotherRide => 'Find another ride';

  @override
  String get next => 'Next';

  @override
  String get searchForDropoffLocation => 'Search for drop-off location';

  @override
  String get searchForPickupLocation => 'Search for pick-up location';

  @override
  String get placeConfirmDialogPlaceholder => 'Where is your drop off location?';

  @override
  String get noAnnouncements => 'No announcements';

  @override
  String get announcements => 'Announcements';

  @override
  String reviewsCount(int count) {
    return '($count reviews)';
  }

  @override
  String get tripDetails => 'Trip details';

  @override
  String get rideDetails => 'Ride details';

  @override
  String get orderARide => 'Order a ride';

  @override
  String get noRidesYet => 'No rides yet!';

  @override
  String get issueSubjectPlaceholder => 'Type the subject of the issue';

  @override
  String get issueContentPlaceholder => 'Type the description of the issue';

  @override
  String get reportThisIssue => 'Report this issue';

  @override
  String get fieldIsRequired => 'Field is required';

  @override
  String get ok => 'OK';

  @override
  String get favoriteLocations => 'Favorite locations';

  @override
  String get favoriteLocationsSubtitle => 'Save your favorite locations for easier access';

  @override
  String get createAFavoriteLocation => 'Create a favorite location';

  @override
  String get addressTitleLabel => 'Address\'s title';

  @override
  String get clickToSetLocation => 'Click to set location';

  @override
  String get whereIsYourNewFavoriteLocation => 'Where is your new favorite location?';

  @override
  String get locateFavoriteLocationDescription => 'Use either search box below or the map to pin the exact location';

  @override
  String get searchLocation => 'Search location';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get rideHistory => 'Ride History';

  @override
  String get scheduledRides => 'Scheduled rides';

  @override
  String get keepTheOrder => 'Keep the order';

  @override
  String get cancelTheRide => 'Cancel the ride';

  @override
  String get walletBalance => 'Wallet balance';

  @override
  String get activities => 'Activities';

  @override
  String get pleaseEnterGiftCardCode => 'Please enter gift card code';

  @override
  String get redeem => 'Redeem';

  @override
  String get enterGiftCardCode => 'Enter gift card code';

  @override
  String get redeemGiftCard => 'Redeem Gift Card';

  @override
  String get redeemGiftCardDescription => 'Enter your gift card code to redeem it.';

  @override
  String get redeemSuccessTitle => 'Gift Card Redeemed!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'You have successfully redeemed $amount gift card.';
  }

  @override
  String get addCredit => 'Add credit';

  @override
  String get payNow => 'Pay now';

  @override
  String get addCreditToWallet => 'Add credit to wallet';

  @override
  String get pleaseSelectAmount => 'Please select amount';

  @override
  String get enterAmount => 'Enter amount';

  @override
  String get selectAmount => 'Select amount:';

  @override
  String get wallet => 'Wallet';

  @override
  String get totalRides => 'Total rides';

  @override
  String get appSettings => 'App Settings';

  @override
  String get mapSettings => 'Map Settings';

  @override
  String get lanugageSettings => 'Lanugage Settings';

  @override
  String get paymentMethods => 'Payment methods';

  @override
  String get selectCards => 'Select cards';

  @override
  String get selectCardsDescription => 'You can select the card numbers you would like to be displayed in the list of payment methods on invoices.';

  @override
  String get delete => 'Delete';

  @override
  String get nameOnCard => 'Name on card';

  @override
  String get profile => 'Profile';

  @override
  String get scheduledRide => 'Scheduled ride';

  @override
  String get addPaymentMethod => 'Add Payment Method';

  @override
  String get addPaymentMethodDescription => 'Add a new payment method to your account';

  @override
  String get saveCard => 'Save card';

  @override
  String get selectDialCode => 'Select dial code';

  @override
  String get searchCountryName => 'Search country name';

  @override
  String get preferences => 'Preferences:';

  @override
  String get onboardingDescription => 'Moments away from registering your account and enjoying comfortable rides';

  @override
  String get signInSignUp => 'Sign in/ Sign up';

  @override
  String get enterOtp => 'Enter OTP';

  @override
  String get enterPassword => 'Enter Password';

  @override
  String get enterPasswordDescription => 'Please enter your password to continue';

  @override
  String get setPassword => 'Set Password';

  @override
  String get password => 'Password';

  @override
  String get passwordRuleDescription => 'Include at least two of the following:';

  @override
  String get passwordRuleLength => 'Between 9 and 64 characters';

  @override
  String get passwordRuleUpperCase => 'Uppercase letters';

  @override
  String get passwordRuleLowerCase => 'Lowercase letters';

  @override
  String get passwordRuleNumber => 'Numbers';

  @override
  String get passwordRuleSpecialCharacter => 'Special characters';

  @override
  String get contactDetails => 'Contact Details';

  @override
  String get vehicleDetails => 'Vehicle Details';

  @override
  String get payoutInformation => 'Payout Information';

  @override
  String get documents => 'Documents';

  @override
  String get accessDenied => 'Access Denied';

  @override
  String get success => 'Success';

  @override
  String get skipForNow => 'Skip for now';

  @override
  String get sendOtpDescription => 'A verification code has been sent to your phone number';

  @override
  String get resendOtp => 'Resend code';

  @override
  String get useOtpInstead => 'Use OTP instead';

  @override
  String get home => 'Home';

  @override
  String get logout => 'Logout';

  @override
  String get driverLicenseNumber => 'Driver License Number';

  @override
  String get email => 'E-mail';

  @override
  String get address => 'Address';

  @override
  String get gender => 'Gender';

  @override
  String get genderMale => 'Male';

  @override
  String get genderFemale => 'Female';

  @override
  String get genderUnknown => 'Neutral / Unknown';

  @override
  String get vehiclePlateNumber => 'Vehicle Plate Number';

  @override
  String get vehicleColor => 'Vehicle Color';

  @override
  String get vehicleModelAndMake => 'Vehicle Model & Make';

  @override
  String get vehicleProductionYear => 'Vehicle production year';

  @override
  String get bankName => 'Bank Name';

  @override
  String get bankRoutingNumber => 'Bank Routing Number';

  @override
  String get bankAccountNumber => 'Bank Account Number';

  @override
  String get bankSwift => 'SWIFT Code';

  @override
  String get uploadImage => 'Upload Image';

  @override
  String get yourBalance => 'Your balance';

  @override
  String get rideCancellation => 'Ride Cancellation';

  @override
  String get cancelRideMessage => 'Are you sure you want to cancel your ride?';

  @override
  String get cancelRideSuccess => 'Ride has been canceled successfully';

  @override
  String get confirmAndCancelRide => 'Confirm & Cancel the ride';

  @override
  String get selectPaymentMethod => 'Select payment method';

  @override
  String get rideFeePaid => 'Ride\'s fee has been paid';

  @override
  String get rideFeeUnpaid => 'Ride\'s fee hasn\'t been paid yet';

  @override
  String get total => 'Total';

  @override
  String get totalPrice => 'Total Price';

  @override
  String get addCustomCredit => 'Add custom credit';

  @override
  String get serviceFee => 'Service Fee';

  @override
  String get serviceOptionFee => 'Service Option Fee';

  @override
  String get couponDiscount => 'Coupon Discount';

  @override
  String get walletCreit => 'Wallet Credit';

  @override
  String get custom => 'Custom';

  @override
  String get payment => 'Payment';

  @override
  String get cashPayment => 'Cash payment';

  @override
  String cashPaymentDescription(String amount) {
    return 'Do you confirm that you received $amount?';
  }

  @override
  String get cashPaymentReceived => 'Cash payment received';

  @override
  String get confirmAndEndTrip => 'Confirm & End Trip';

  @override
  String get earnings => 'Earnings';

  @override
  String get acceptOrder => 'Accept order';

  @override
  String get canceled => 'Canceled';

  @override
  String get unknown => 'Unknown';

  @override
  String get commission => 'Commission';

  @override
  String get selectProfileImage => 'Select Profile Image';

  @override
  String get chooseAvatarDescription => 'Or select an avatar from the list below:';

  @override
  String get fullName => 'Full name';

  @override
  String get favoriteDrivers => 'Favorite Drivers';

  @override
  String get distanceTraveled => 'Distance traveled';

  @override
  String get rating => 'Rating';

  @override
  String get map => 'Map';

  @override
  String get income => 'Income';

  @override
  String get timeSpent => 'Time spent';

  @override
  String get daily => 'Daily';

  @override
  String get monthly => 'Monthly';

  @override
  String get noRecordsFoundEarnings => 'No trip record found for these filters';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'No feedbacks yet';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'You don\'t have enough feedbacks to show yet.';

  @override
  String get feedbacksSummary => 'Feedbacks Summary';

  @override
  String get feedbacksGoodTitle => 'Excellent Job!';

  @override
  String get feedbacksGoodSubtitle => 'Your ratings are looking good so far';

  @override
  String get feedbacksBadTitle => 'Average';

  @override
  String get feedbacksBadSubtitle => 'You can use some improvements';

  @override
  String get feedbacksGoodPointsTitle => 'Some good points about you:';

  @override
  String get feedbacksbadPointsTitle => 'Some points you can improve:';

  @override
  String get feedbacksReviewsTitle => 'Some earlier reviews';

  @override
  String get payoutMethods => 'Payout Methods';

  @override
  String get notice => 'Notice:';

  @override
  String get payoutNoticeTitle => 'You will automatically be paid by the admin twice a week.';

  @override
  String get addPayoutMethod => 'Add payout Method';

  @override
  String get navigate => 'Navigate';

  @override
  String get noPayoutMethods => 'No payout methods';

  @override
  String get name => 'Name';

  @override
  String get nameHint => 'Enter name';

  @override
  String get bankNameHint => 'Enter Bank name';

  @override
  String get branchName => 'Branch Name';

  @override
  String get branchNameHint => 'Enter Branch Name';

  @override
  String get accountHolderName => 'Account Holder name';

  @override
  String get routingNumber => 'Routing Number';

  @override
  String get routingNumberHint => 'Enter routing number';

  @override
  String get accountNumber => 'Account Number';

  @override
  String get accountNumberHint => 'Enter account number';

  @override
  String get addressHint => 'Enter address';

  @override
  String get dateOfBith => 'Date of birth';

  @override
  String get yearHint => 'Year';

  @override
  String get monthHint => 'Month';

  @override
  String get dayHint => 'Day';

  @override
  String get city => 'City';

  @override
  String get cityHint => 'Enter city';

  @override
  String get state => 'State';

  @override
  String get stateHint => 'Enter State';

  @override
  String get zipCode => 'Zip Code';

  @override
  String get zipCodeHint => 'Enter Zip Code';

  @override
  String get day => 'Day';

  @override
  String get month => 'Month';

  @override
  String get year => 'Year';

  @override
  String get noActivitiesYet => 'No Activities yet.';

  @override
  String get headingToDestination => 'heading to the destination';

  @override
  String get driverArrivedNotice => 'Driver is waiting for you';

  @override
  String get driverShouldAriveInNotice => 'Driver is estimated to arrive in';

  @override
  String get driverShouldHaveArrivedNotice => 'Driver should be arriving in any moment now';

  @override
  String get deleteAccount => 'Delete Account';

  @override
  String get deleteAccountNotice => 'Are you sure you want to delete your account? After 30 days, your account will be permanently deleted. During this time, you can restore your account by signing in again.';

  @override
  String get confirmAndDeleteAccount => 'Confirm & delete account';

  @override
  String get accountDeleted => 'Account has been deleted';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'I am on my way to $destination from $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' My driver name is $firstName $lastName, the mobile number is +$mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' The rider with me name is $firstName $lastName, the mobile number is +$mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Trip has started on $startTime and I expect the trip to take approximately $duration minutes';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' I expect the trip to take approximately $duration minutes once I get into the driver\'s car.';
  }

  @override
  String get sendSOSMessage => 'IMPORTANT: Please use this feature only in case of emergency. We will contact authorities in behalf of you.';

  @override
  String get confirmAndSendSOS => 'Confirm & Send SOS';

  @override
  String get sosSentSuccessfully => 'SOS has been sent successfully';

  @override
  String get topUpSuccess => 'Wallet has been topped up successfully';

  @override
  String get cancelNotAllowed => 'Cancellation of an already started ride is not possible.';

  @override
  String get error => 'Error';

  @override
  String get connectionError => 'Connection error';

  @override
  String get serverError => 'Server error';

  @override
  String get addNewLocation => 'Add new location';

  @override
  String get twoWayTrip => 'Two-way trip';

  @override
  String get reportSubmitted => 'Report Submitted';

  @override
  String get reportSubmittedDescription => 'Your report has been submitted successfully, we will review it and take the necessary actions.';

  @override
  String get cardNumber => 'Card number';

  @override
  String get cardNumberHint => 'Enter card number';

  @override
  String get expiryDate => 'Expiry date';

  @override
  String get expiryDateHint => 'MM/YY';

  @override
  String get noFavoriteDrivers => 'No favorite drivers';

  @override
  String get noFavoriteDriversDescription => 'You can mark your preferred drivers as favorites when rating them after the trip.';

  @override
  String get pickupLocationNotFound => 'We were unable to determine your current location using GPS as pickup point. Please enter your pickup point manually.';

  @override
  String get dragToSelect => 'Drag to select';

  @override
  String get skip => 'Skip';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get locationPermission => 'Location permission';

  @override
  String get locationPermissionDeniedForeverMessage => 'Location permission is a requirement for receiving orders around you and also for rider to track your location. You can not receive orders without this permission and us being beware of your current location. You can change this permission in your phone settings.';

  @override
  String get allow => 'Allow';

  @override
  String get driverOnlineTitle => 'Searching for a ride';

  @override
  String get driverOfflineTitle => 'Get online to start receiving requests';

  @override
  String get payInCash => 'Cash payment';

  @override
  String get payInCashDescription => 'Please proceed with the cash payment to the driver. The driver will confirm the payment once received.';

  @override
  String get addToFavoriteDrivers => 'Add to favorite drivers';

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
