import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'messages_ar.dart';
import 'messages_bn.dart';
import 'messages_de.dart';
import 'messages_en.dart';
import 'messages_es.dart';
import 'messages_et.dart';
import 'messages_fa.dart';
import 'messages_fi.dart';
import 'messages_fr.dart';
import 'messages_hi.dart';
import 'messages_hy.dart';
import 'messages_id.dart';
import 'messages_it.dart';
import 'messages_ja.dart';
import 'messages_ko.dart';
import 'messages_ms.dart';
import 'messages_nl.dart';
import 'messages_no.dart';
import 'messages_pl.dart';
import 'messages_pt.dart';
import 'messages_ro.dart';
import 'messages_ru.dart';
import 'messages_sv.dart';
import 'messages_th.dart';
import 'messages_tr.dart';
import 'messages_uk.dart';
import 'messages_ur.dart';
import 'messages_vi.dart';
import 'messages_zh.dart';

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/messages.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S)!;
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('et'),
    Locale('fa'),
    Locale('fi'),
    Locale('fr'),
    Locale('hi'),
    Locale('hy'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('ms'),
    Locale('nl'),
    Locale('no'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sv'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW')
  ];

  /// No description provided for @copyright_notice.
  ///
  /// In en, this message translates to:
  /// **'Copyright © {company}, All rights reserved.'**
  String copyright_notice(Object company);

  /// No description provided for @welcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to the app'**
  String get welcomeTitle;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterday;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @profileInfo.
  ///
  /// In en, this message translates to:
  /// **'Profile info'**
  String get profileInfo;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get lastName;

  /// No description provided for @mobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Mobile number'**
  String get mobileNumber;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @enterCode.
  ///
  /// In en, this message translates to:
  /// **'Enter code'**
  String get enterCode;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get editProfile;

  /// No description provided for @bankTransfer.
  ///
  /// In en, this message translates to:
  /// **'Bank Transfer'**
  String get bankTransfer;

  /// No description provided for @gift.
  ///
  /// In en, this message translates to:
  /// **'Gift'**
  String get gift;

  /// No description provided for @correction.
  ///
  /// In en, this message translates to:
  /// **'Correction'**
  String get correction;

  /// No description provided for @inappPayment.
  ///
  /// In en, this message translates to:
  /// **'In-app payment'**
  String get inappPayment;

  /// No description provided for @orderFee.
  ///
  /// In en, this message translates to:
  /// **'Order fee'**
  String get orderFee;

  /// No description provided for @parkingFee.
  ///
  /// In en, this message translates to:
  /// **'Parking fee'**
  String get parkingFee;

  /// No description provided for @cancellationFee.
  ///
  /// In en, this message translates to:
  /// **'Cancellation fee'**
  String get cancellationFee;

  /// No description provided for @withdraw.
  ///
  /// In en, this message translates to:
  /// **'Withdraw'**
  String get withdraw;

  /// No description provided for @walletTransactions.
  ///
  /// In en, this message translates to:
  /// **'Wallet transactions'**
  String get walletTransactions;

  /// No description provided for @addCard.
  ///
  /// In en, this message translates to:
  /// **'Add card'**
  String get addCard;

  /// No description provided for @visa.
  ///
  /// In en, this message translates to:
  /// **'Visa'**
  String get visa;

  /// No description provided for @mastercard.
  ///
  /// In en, this message translates to:
  /// **'Mastercard'**
  String get mastercard;

  /// No description provided for @addBalance.
  ///
  /// In en, this message translates to:
  /// **'Add balance'**
  String get addBalance;

  /// No description provided for @durationInMinutes.
  ///
  /// In en, this message translates to:
  /// **'{minutes, plural, =0{Zero minutes} =1{{minutes} Minute} other{{minutes} Minutes}}'**
  String durationInMinutes(num minutes);

  /// No description provided for @durationInHours.
  ///
  /// In en, this message translates to:
  /// **'Duration: {hours, plural, =0{Zero hours} =1{{hours} Hour} other{{hours} Hours}}'**
  String durationInHours(num hours);

  /// No description provided for @timePastDue.
  ///
  /// In en, this message translates to:
  /// **'Past due'**
  String get timePastDue;

  /// No description provided for @justNow.
  ///
  /// In en, this message translates to:
  /// **'Just Now'**
  String get justNow;

  /// No description provided for @distanceInMeters.
  ///
  /// In en, this message translates to:
  /// **'{distance} m'**
  String distanceInMeters(num distance);

  /// No description provided for @distanceInKilometers.
  ///
  /// In en, this message translates to:
  /// **'{distance} km'**
  String distanceInKilometers(num distance);

  /// No description provided for @distanceInFeets.
  ///
  /// In en, this message translates to:
  /// **'{distance} ft'**
  String distanceInFeets(num distance);

  /// No description provided for @distanceInMiles.
  ///
  /// In en, this message translates to:
  /// **'{distance} mi'**
  String distanceInMiles(num distance);

  /// No description provided for @welcomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Taxi service designed for your comfort have Trips with your favorite drivers and select your ride preferences'**
  String get welcomeSubtitle;

  /// No description provided for @onboardingRewardTitle.
  ///
  /// In en, this message translates to:
  /// **'Get rewarded!'**
  String get onboardingRewardTitle;

  /// No description provided for @onboardingRewardSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Get extra bonuses for referring a friend, completing trips and many more...'**
  String get onboardingRewardSubtitle;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select language'**
  String get selectLanguage;

  /// No description provided for @searchForLanguage.
  ///
  /// In en, this message translates to:
  /// **'Search for language'**
  String get searchForLanguage;

  /// No description provided for @enterPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter Phone Number'**
  String get enterPhoneNumber;

  /// No description provided for @actionContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get actionContinue;

  /// No description provided for @whereIsYourDestination.
  ///
  /// In en, this message translates to:
  /// **'Where is your destination?'**
  String get whereIsYourDestination;

  /// No description provided for @whereAreYouGoing.
  ///
  /// In en, this message translates to:
  /// **'Where are you going?'**
  String get whereAreYouGoing;

  /// No description provided for @selectDestinations.
  ///
  /// In en, this message translates to:
  /// **'Your route'**
  String get selectDestinations;

  /// No description provided for @pickupPoint.
  ///
  /// In en, this message translates to:
  /// **'Pick-up point'**
  String get pickupPoint;

  /// No description provided for @enterPickupPoint.
  ///
  /// In en, this message translates to:
  /// **'Enter pick-up point'**
  String get enterPickupPoint;

  /// No description provided for @dropoffPoint.
  ///
  /// In en, this message translates to:
  /// **'Drop-off point'**
  String get dropoffPoint;

  /// No description provided for @enterDropoffPoint.
  ///
  /// In en, this message translates to:
  /// **'Enter drop-off point'**
  String get enterDropoffPoint;

  /// No description provided for @stopPoint.
  ///
  /// In en, this message translates to:
  /// **'Stop point'**
  String get stopPoint;

  /// No description provided for @enterStopPoint.
  ///
  /// In en, this message translates to:
  /// **'Enter stop point'**
  String get enterStopPoint;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @confirmDropoff.
  ///
  /// In en, this message translates to:
  /// **'Confirm drop-off'**
  String get confirmDropoff;

  /// No description provided for @confirmPickup.
  ///
  /// In en, this message translates to:
  /// **'Confirm pick-up'**
  String get confirmPickup;

  /// No description provided for @enterAtLeast3Characters.
  ///
  /// In en, this message translates to:
  /// **'Enter at least 3 characters'**
  String get enterAtLeast3Characters;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No results'**
  String get noResults;

  /// No description provided for @bookNow.
  ///
  /// In en, this message translates to:
  /// **'Book Now'**
  String get bookNow;

  /// No description provided for @cash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// No description provided for @online.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get online;

  /// No description provided for @offline.
  ///
  /// In en, this message translates to:
  /// **'Offline'**
  String get offline;

  /// No description provided for @onTrip.
  ///
  /// In en, this message translates to:
  /// **'On Trip'**
  String get onTrip;

  /// No description provided for @confirmPay.
  ///
  /// In en, this message translates to:
  /// **'Confirm & Pay'**
  String get confirmPay;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @enterCouponCode.
  ///
  /// In en, this message translates to:
  /// **'Enter coupon code'**
  String get enterCouponCode;

  /// No description provided for @reserveRide.
  ///
  /// In en, this message translates to:
  /// **'Reserve ride'**
  String get reserveRide;

  /// No description provided for @reserveRideMessage.
  ///
  /// In en, this message translates to:
  /// **'Select the exact date and time you wish your ride to be reserved'**
  String get reserveRideMessage;

  /// No description provided for @reserveRideMessageSuccess.
  ///
  /// In en, this message translates to:
  /// **'Your ride has been reserved successfully. You can view your reserved rides in the \'Scheduled rides\' section.'**
  String get reserveRideMessageSuccess;

  /// No description provided for @cancelReservation.
  ///
  /// In en, this message translates to:
  /// **'Cancel reservation'**
  String get cancelReservation;

  /// No description provided for @confirmResrve.
  ///
  /// In en, this message translates to:
  /// **'Confirm & resrve'**
  String get confirmResrve;

  /// No description provided for @enterCouponDescription.
  ///
  /// In en, this message translates to:
  /// **'Insert your coupon code to be applied on prices'**
  String get enterCouponDescription;

  /// No description provided for @enterCoupon.
  ///
  /// In en, this message translates to:
  /// **'Enter coupon'**
  String get enterCoupon;

  /// No description provided for @couponApplied.
  ///
  /// In en, this message translates to:
  /// **'Coupon applied'**
  String get couponApplied;

  /// No description provided for @couponAppliedDescription.
  ///
  /// In en, this message translates to:
  /// **'Coupon has been applied to your ride\'s fare'**
  String get couponAppliedDescription;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done!'**
  String get done;

  /// No description provided for @ridePreferences.
  ///
  /// In en, this message translates to:
  /// **'Ride Preferences'**
  String get ridePreferences;

  /// No description provided for @noWaitTime.
  ///
  /// In en, this message translates to:
  /// **'No wait time'**
  String get noWaitTime;

  /// No description provided for @minutesRange.
  ///
  /// In en, this message translates to:
  /// **'{minutes} minutes'**
  String minutesRange(String minutes);

  /// No description provided for @secondsRange.
  ///
  /// In en, this message translates to:
  /// **'{seconds} seconds'**
  String secondsRange(String seconds);

  /// No description provided for @rideRequested.
  ///
  /// In en, this message translates to:
  /// **'Ride requested'**
  String get rideRequested;

  /// No description provided for @searchingForAnOnlineDriver.
  ///
  /// In en, this message translates to:
  /// **'Searching for an online driver...'**
  String get searchingForAnOnlineDriver;

  /// No description provided for @cancelRide.
  ///
  /// In en, this message translates to:
  /// **'Cancel ride'**
  String get cancelRide;

  /// No description provided for @rideSafety.
  ///
  /// In en, this message translates to:
  /// **'Ride Safety'**
  String get rideSafety;

  /// No description provided for @shareTripInformation.
  ///
  /// In en, this message translates to:
  /// **'Share trip information'**
  String get shareTripInformation;

  /// No description provided for @shareTripInformationDescription.
  ///
  /// In en, this message translates to:
  /// **'You can share your trip info with a friend'**
  String get shareTripInformationDescription;

  /// No description provided for @sos.
  ///
  /// In en, this message translates to:
  /// **'SOS'**
  String get sos;

  /// No description provided for @sosDescription.
  ///
  /// In en, this message translates to:
  /// **'Let authorities know of an emergency'**
  String get sosDescription;

  /// No description provided for @reportAnIssue.
  ///
  /// In en, this message translates to:
  /// **'Report an issue'**
  String get reportAnIssue;

  /// No description provided for @reportAnIssueMidTripDescription.
  ///
  /// In en, this message translates to:
  /// **'Share a safety issue on-trip'**
  String get reportAnIssueMidTripDescription;

  /// No description provided for @rideOptions.
  ///
  /// In en, this message translates to:
  /// **'Ride options'**
  String get rideOptions;

  /// No description provided for @goBackToRide.
  ///
  /// In en, this message translates to:
  /// **'Go back to ride'**
  String get goBackToRide;

  /// No description provided for @waitTime.
  ///
  /// In en, this message translates to:
  /// **'Wait time'**
  String get waitTime;

  /// No description provided for @couponCode.
  ///
  /// In en, this message translates to:
  /// **'Coupon code'**
  String get couponCode;

  /// No description provided for @giftCardCode.
  ///
  /// In en, this message translates to:
  /// **'Gift card code'**
  String get giftCardCode;

  /// No description provided for @nicePoints.
  ///
  /// In en, this message translates to:
  /// **'Nice points'**
  String get nicePoints;

  /// No description provided for @negativePoints.
  ///
  /// In en, this message translates to:
  /// **'Negative Points'**
  String get negativePoints;

  /// No description provided for @reviewCommentBoxHint.
  ///
  /// In en, this message translates to:
  /// **'Add a comment...'**
  String get reviewCommentBoxHint;

  /// No description provided for @howWasYourTrip.
  ///
  /// In en, this message translates to:
  /// **'How was your trip?'**
  String get howWasYourTrip;

  /// No description provided for @oneStarReviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Terrible trip with {name}'**
  String oneStarReviewTitle(String name);

  /// No description provided for @twoStarReviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Bad trip with {name}'**
  String twoStarReviewTitle(String name);

  /// No description provided for @threeStarReviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Average trip with {name}'**
  String threeStarReviewTitle(String name);

  /// No description provided for @fourStarReviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Good trip with {name}'**
  String fourStarReviewTitle(String name);

  /// No description provided for @fiveStarReviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Awesome trip with {name}'**
  String fiveStarReviewTitle(String name);

  /// No description provided for @submitFeedback.
  ///
  /// In en, this message translates to:
  /// **'Submit feedback'**
  String get submitFeedback;

  /// No description provided for @typeAMessage.
  ///
  /// In en, this message translates to:
  /// **'Type a message'**
  String get typeAMessage;

  /// No description provided for @findAnotherRide.
  ///
  /// In en, this message translates to:
  /// **'Find another ride'**
  String get findAnotherRide;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @searchForDropoffLocation.
  ///
  /// In en, this message translates to:
  /// **'Search for drop-off location'**
  String get searchForDropoffLocation;

  /// No description provided for @searchForPickupLocation.
  ///
  /// In en, this message translates to:
  /// **'Search for pick-up location'**
  String get searchForPickupLocation;

  /// No description provided for @placeConfirmDialogPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Where is your drop off location?'**
  String get placeConfirmDialogPlaceholder;

  /// No description provided for @noAnnouncements.
  ///
  /// In en, this message translates to:
  /// **'No announcements'**
  String get noAnnouncements;

  /// No description provided for @announcements.
  ///
  /// In en, this message translates to:
  /// **'Announcements'**
  String get announcements;

  /// No description provided for @reviewsCount.
  ///
  /// In en, this message translates to:
  /// **'({count} reviews)'**
  String reviewsCount(int count);

  /// No description provided for @tripDetails.
  ///
  /// In en, this message translates to:
  /// **'Trip details'**
  String get tripDetails;

  /// No description provided for @rideDetails.
  ///
  /// In en, this message translates to:
  /// **'Ride details'**
  String get rideDetails;

  /// No description provided for @orderARide.
  ///
  /// In en, this message translates to:
  /// **'Order a ride'**
  String get orderARide;

  /// No description provided for @noRidesYet.
  ///
  /// In en, this message translates to:
  /// **'No rides yet!'**
  String get noRidesYet;

  /// No description provided for @issueSubjectPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Type the subject of the issue'**
  String get issueSubjectPlaceholder;

  /// No description provided for @issueContentPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Type the description of the issue'**
  String get issueContentPlaceholder;

  /// No description provided for @reportThisIssue.
  ///
  /// In en, this message translates to:
  /// **'Report this issue'**
  String get reportThisIssue;

  /// No description provided for @fieldIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Field is required'**
  String get fieldIsRequired;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @favoriteLocations.
  ///
  /// In en, this message translates to:
  /// **'Favorite locations'**
  String get favoriteLocations;

  /// No description provided for @favoriteLocationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Save your favorite locations for easier access'**
  String get favoriteLocationsSubtitle;

  /// No description provided for @createAFavoriteLocation.
  ///
  /// In en, this message translates to:
  /// **'Create a favorite location'**
  String get createAFavoriteLocation;

  /// No description provided for @addressTitleLabel.
  ///
  /// In en, this message translates to:
  /// **'Address\'s title'**
  String get addressTitleLabel;

  /// No description provided for @clickToSetLocation.
  ///
  /// In en, this message translates to:
  /// **'Click to set location'**
  String get clickToSetLocation;

  /// No description provided for @whereIsYourNewFavoriteLocation.
  ///
  /// In en, this message translates to:
  /// **'Where is your new favorite location?'**
  String get whereIsYourNewFavoriteLocation;

  /// No description provided for @locateFavoriteLocationDescription.
  ///
  /// In en, this message translates to:
  /// **'Use either search box below or the map to pin the exact location'**
  String get locateFavoriteLocationDescription;

  /// No description provided for @searchLocation.
  ///
  /// In en, this message translates to:
  /// **'Search location'**
  String get searchLocation;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get saveChanges;

  /// No description provided for @rideHistory.
  ///
  /// In en, this message translates to:
  /// **'Ride History'**
  String get rideHistory;

  /// No description provided for @scheduledRides.
  ///
  /// In en, this message translates to:
  /// **'Scheduled rides'**
  String get scheduledRides;

  /// No description provided for @keepTheOrder.
  ///
  /// In en, this message translates to:
  /// **'Keep the order'**
  String get keepTheOrder;

  /// No description provided for @cancelTheRide.
  ///
  /// In en, this message translates to:
  /// **'Cancel the ride'**
  String get cancelTheRide;

  /// No description provided for @walletBalance.
  ///
  /// In en, this message translates to:
  /// **'Wallet balance'**
  String get walletBalance;

  /// No description provided for @activities.
  ///
  /// In en, this message translates to:
  /// **'Activities'**
  String get activities;

  /// No description provided for @pleaseEnterGiftCardCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter gift card code'**
  String get pleaseEnterGiftCardCode;

  /// No description provided for @redeem.
  ///
  /// In en, this message translates to:
  /// **'Redeem'**
  String get redeem;

  /// No description provided for @enterGiftCardCode.
  ///
  /// In en, this message translates to:
  /// **'Enter gift card code'**
  String get enterGiftCardCode;

  /// No description provided for @redeemGiftCard.
  ///
  /// In en, this message translates to:
  /// **'Redeem Gift Card'**
  String get redeemGiftCard;

  /// No description provided for @redeemGiftCardDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter your gift card code to redeem it.'**
  String get redeemGiftCardDescription;

  /// No description provided for @redeemSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'Gift Card Redeemed!'**
  String get redeemSuccessTitle;

  /// No description provided for @redeemSuccessDescription.
  ///
  /// In en, this message translates to:
  /// **'You have successfully redeemed {amount} gift card.'**
  String redeemSuccessDescription(String amount);

  /// No description provided for @addCredit.
  ///
  /// In en, this message translates to:
  /// **'Add credit'**
  String get addCredit;

  /// No description provided for @payNow.
  ///
  /// In en, this message translates to:
  /// **'Pay now'**
  String get payNow;

  /// No description provided for @addCreditToWallet.
  ///
  /// In en, this message translates to:
  /// **'Add credit to wallet'**
  String get addCreditToWallet;

  /// No description provided for @pleaseSelectAmount.
  ///
  /// In en, this message translates to:
  /// **'Please select amount'**
  String get pleaseSelectAmount;

  /// No description provided for @enterAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter amount'**
  String get enterAmount;

  /// No description provided for @selectAmount.
  ///
  /// In en, this message translates to:
  /// **'Select amount:'**
  String get selectAmount;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// No description provided for @totalRides.
  ///
  /// In en, this message translates to:
  /// **'Total rides'**
  String get totalRides;

  /// No description provided for @appSettings.
  ///
  /// In en, this message translates to:
  /// **'App Settings'**
  String get appSettings;

  /// No description provided for @mapSettings.
  ///
  /// In en, this message translates to:
  /// **'Map Settings'**
  String get mapSettings;

  /// No description provided for @lanugageSettings.
  ///
  /// In en, this message translates to:
  /// **'Lanugage Settings'**
  String get lanugageSettings;

  /// No description provided for @paymentMethods.
  ///
  /// In en, this message translates to:
  /// **'Payment methods'**
  String get paymentMethods;

  /// No description provided for @selectCards.
  ///
  /// In en, this message translates to:
  /// **'Select cards'**
  String get selectCards;

  /// No description provided for @selectCardsDescription.
  ///
  /// In en, this message translates to:
  /// **'You can select the card numbers you would like to be displayed in the list of payment methods on invoices.'**
  String get selectCardsDescription;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @nameOnCard.
  ///
  /// In en, this message translates to:
  /// **'Name on card'**
  String get nameOnCard;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @scheduledRide.
  ///
  /// In en, this message translates to:
  /// **'Scheduled ride'**
  String get scheduledRide;

  /// No description provided for @addPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Add Payment Method'**
  String get addPaymentMethod;

  /// No description provided for @addPaymentMethodDescription.
  ///
  /// In en, this message translates to:
  /// **'Add a new payment method to your account'**
  String get addPaymentMethodDescription;

  /// No description provided for @saveCard.
  ///
  /// In en, this message translates to:
  /// **'Save card'**
  String get saveCard;

  /// No description provided for @selectDialCode.
  ///
  /// In en, this message translates to:
  /// **'Select dial code'**
  String get selectDialCode;

  /// No description provided for @searchCountryName.
  ///
  /// In en, this message translates to:
  /// **'Search country name'**
  String get searchCountryName;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences:'**
  String get preferences;

  /// No description provided for @onboardingDescription.
  ///
  /// In en, this message translates to:
  /// **'Moments away from registering your account and enjoying comfortable rides'**
  String get onboardingDescription;

  /// No description provided for @signInSignUp.
  ///
  /// In en, this message translates to:
  /// **'Sign in/ Sign up'**
  String get signInSignUp;

  /// No description provided for @enterOtp.
  ///
  /// In en, this message translates to:
  /// **'Enter OTP'**
  String get enterOtp;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter Password'**
  String get enterPassword;

  /// No description provided for @enterPasswordDescription.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password to continue'**
  String get enterPasswordDescription;

  /// No description provided for @setPassword.
  ///
  /// In en, this message translates to:
  /// **'Set Password'**
  String get setPassword;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @passwordRuleDescription.
  ///
  /// In en, this message translates to:
  /// **'Include at least two of the following:'**
  String get passwordRuleDescription;

  /// No description provided for @passwordRuleLength.
  ///
  /// In en, this message translates to:
  /// **'Between 9 and 64 characters'**
  String get passwordRuleLength;

  /// No description provided for @passwordRuleUpperCase.
  ///
  /// In en, this message translates to:
  /// **'Uppercase letters'**
  String get passwordRuleUpperCase;

  /// No description provided for @passwordRuleLowerCase.
  ///
  /// In en, this message translates to:
  /// **'Lowercase letters'**
  String get passwordRuleLowerCase;

  /// No description provided for @passwordRuleNumber.
  ///
  /// In en, this message translates to:
  /// **'Numbers'**
  String get passwordRuleNumber;

  /// No description provided for @passwordRuleSpecialCharacter.
  ///
  /// In en, this message translates to:
  /// **'Special characters'**
  String get passwordRuleSpecialCharacter;

  /// No description provided for @contactDetails.
  ///
  /// In en, this message translates to:
  /// **'Contact Details'**
  String get contactDetails;

  /// No description provided for @vehicleDetails.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Details'**
  String get vehicleDetails;

  /// No description provided for @payoutInformation.
  ///
  /// In en, this message translates to:
  /// **'Payout Information'**
  String get payoutInformation;

  /// No description provided for @documents.
  ///
  /// In en, this message translates to:
  /// **'Documents'**
  String get documents;

  /// No description provided for @accessDenied.
  ///
  /// In en, this message translates to:
  /// **'Access Denied'**
  String get accessDenied;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @skipForNow.
  ///
  /// In en, this message translates to:
  /// **'Skip for now'**
  String get skipForNow;

  /// No description provided for @sendOtpDescription.
  ///
  /// In en, this message translates to:
  /// **'A verification code has been sent to your phone number'**
  String get sendOtpDescription;

  /// No description provided for @resendOtp.
  ///
  /// In en, this message translates to:
  /// **'Resend code'**
  String get resendOtp;

  /// No description provided for @useOtpInstead.
  ///
  /// In en, this message translates to:
  /// **'Use OTP instead'**
  String get useOtpInstead;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @driverLicenseNumber.
  ///
  /// In en, this message translates to:
  /// **'Driver License Number'**
  String get driverLicenseNumber;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get email;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @genderMale.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get genderMale;

  /// No description provided for @genderFemale.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get genderFemale;

  /// No description provided for @genderUnknown.
  ///
  /// In en, this message translates to:
  /// **'Neutral / Unknown'**
  String get genderUnknown;

  /// No description provided for @vehiclePlateNumber.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Plate Number'**
  String get vehiclePlateNumber;

  /// No description provided for @vehicleColor.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Color'**
  String get vehicleColor;

  /// No description provided for @vehicleModelAndMake.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Model & Make'**
  String get vehicleModelAndMake;

  /// No description provided for @vehicleProductionYear.
  ///
  /// In en, this message translates to:
  /// **'Vehicle production year'**
  String get vehicleProductionYear;

  /// No description provided for @bankName.
  ///
  /// In en, this message translates to:
  /// **'Bank Name'**
  String get bankName;

  /// No description provided for @bankRoutingNumber.
  ///
  /// In en, this message translates to:
  /// **'Bank Routing Number'**
  String get bankRoutingNumber;

  /// No description provided for @bankAccountNumber.
  ///
  /// In en, this message translates to:
  /// **'Bank Account Number'**
  String get bankAccountNumber;

  /// No description provided for @bankSwift.
  ///
  /// In en, this message translates to:
  /// **'SWIFT Code'**
  String get bankSwift;

  /// No description provided for @uploadImage.
  ///
  /// In en, this message translates to:
  /// **'Upload Image'**
  String get uploadImage;

  /// No description provided for @yourBalance.
  ///
  /// In en, this message translates to:
  /// **'Your balance'**
  String get yourBalance;

  /// No description provided for @rideCancellation.
  ///
  /// In en, this message translates to:
  /// **'Ride Cancellation'**
  String get rideCancellation;

  /// No description provided for @cancelRideMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to cancel your ride?'**
  String get cancelRideMessage;

  /// No description provided for @cancelRideSuccess.
  ///
  /// In en, this message translates to:
  /// **'Ride has been canceled successfully'**
  String get cancelRideSuccess;

  /// No description provided for @confirmAndCancelRide.
  ///
  /// In en, this message translates to:
  /// **'Confirm & Cancel the ride'**
  String get confirmAndCancelRide;

  /// No description provided for @selectPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Select payment method'**
  String get selectPaymentMethod;

  /// No description provided for @rideFeePaid.
  ///
  /// In en, this message translates to:
  /// **'Ride\'s fee has been paid'**
  String get rideFeePaid;

  /// No description provided for @rideFeeUnpaid.
  ///
  /// In en, this message translates to:
  /// **'Ride\'s fee hasn\'t been paid yet'**
  String get rideFeeUnpaid;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @totalPrice.
  ///
  /// In en, this message translates to:
  /// **'Total Price'**
  String get totalPrice;

  /// No description provided for @addCustomCredit.
  ///
  /// In en, this message translates to:
  /// **'Add custom credit'**
  String get addCustomCredit;

  /// No description provided for @serviceFee.
  ///
  /// In en, this message translates to:
  /// **'Service Fee'**
  String get serviceFee;

  /// No description provided for @serviceOptionFee.
  ///
  /// In en, this message translates to:
  /// **'Service Option Fee'**
  String get serviceOptionFee;

  /// No description provided for @couponDiscount.
  ///
  /// In en, this message translates to:
  /// **'Coupon Discount'**
  String get couponDiscount;

  /// No description provided for @walletCreit.
  ///
  /// In en, this message translates to:
  /// **'Wallet Credit'**
  String get walletCreit;

  /// No description provided for @custom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @cashPayment.
  ///
  /// In en, this message translates to:
  /// **'Cash payment'**
  String get cashPayment;

  /// No description provided for @cashPaymentDescription.
  ///
  /// In en, this message translates to:
  /// **'Do you confirm that you received {amount}?'**
  String cashPaymentDescription(String amount);

  /// No description provided for @cashPaymentReceived.
  ///
  /// In en, this message translates to:
  /// **'Cash payment received'**
  String get cashPaymentReceived;

  /// No description provided for @confirmAndEndTrip.
  ///
  /// In en, this message translates to:
  /// **'Confirm & End Trip'**
  String get confirmAndEndTrip;

  /// No description provided for @earnings.
  ///
  /// In en, this message translates to:
  /// **'Earnings'**
  String get earnings;

  /// No description provided for @acceptOrder.
  ///
  /// In en, this message translates to:
  /// **'Accept order'**
  String get acceptOrder;

  /// No description provided for @canceled.
  ///
  /// In en, this message translates to:
  /// **'Canceled'**
  String get canceled;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @commission.
  ///
  /// In en, this message translates to:
  /// **'Commission'**
  String get commission;

  /// No description provided for @selectProfileImage.
  ///
  /// In en, this message translates to:
  /// **'Select Profile Image'**
  String get selectProfileImage;

  /// No description provided for @chooseAvatarDescription.
  ///
  /// In en, this message translates to:
  /// **'Or select an avatar from the list below:'**
  String get chooseAvatarDescription;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullName;

  /// No description provided for @favoriteDrivers.
  ///
  /// In en, this message translates to:
  /// **'Favorite Drivers'**
  String get favoriteDrivers;

  /// No description provided for @distanceTraveled.
  ///
  /// In en, this message translates to:
  /// **'Distance traveled'**
  String get distanceTraveled;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// No description provided for @map.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get map;

  /// No description provided for @income.
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get income;

  /// No description provided for @timeSpent.
  ///
  /// In en, this message translates to:
  /// **'Time spent'**
  String get timeSpent;

  /// No description provided for @daily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get daily;

  /// No description provided for @monthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get monthly;

  /// No description provided for @noRecordsFoundEarnings.
  ///
  /// In en, this message translates to:
  /// **'No trip record found for these filters'**
  String get noRecordsFoundEarnings;

  /// No description provided for @feedbacksSummaryEmptyStateHeading.
  ///
  /// In en, this message translates to:
  /// **'No feedbacks yet'**
  String get feedbacksSummaryEmptyStateHeading;

  /// No description provided for @feedbacksSummaryEmptyStateTitle.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have enough feedbacks to show yet.'**
  String get feedbacksSummaryEmptyStateTitle;

  /// No description provided for @feedbacksSummary.
  ///
  /// In en, this message translates to:
  /// **'Feedbacks Summary'**
  String get feedbacksSummary;

  /// No description provided for @feedbacksGoodTitle.
  ///
  /// In en, this message translates to:
  /// **'Excellent Job!'**
  String get feedbacksGoodTitle;

  /// No description provided for @feedbacksGoodSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your ratings are looking good so far'**
  String get feedbacksGoodSubtitle;

  /// No description provided for @feedbacksBadTitle.
  ///
  /// In en, this message translates to:
  /// **'Average'**
  String get feedbacksBadTitle;

  /// No description provided for @feedbacksBadSubtitle.
  ///
  /// In en, this message translates to:
  /// **'You can use some improvements'**
  String get feedbacksBadSubtitle;

  /// No description provided for @feedbacksGoodPointsTitle.
  ///
  /// In en, this message translates to:
  /// **'Some good points about you:'**
  String get feedbacksGoodPointsTitle;

  /// No description provided for @feedbacksbadPointsTitle.
  ///
  /// In en, this message translates to:
  /// **'Some points you can improve:'**
  String get feedbacksbadPointsTitle;

  /// No description provided for @feedbacksReviewsTitle.
  ///
  /// In en, this message translates to:
  /// **'Some earlier reviews'**
  String get feedbacksReviewsTitle;

  /// No description provided for @payoutMethods.
  ///
  /// In en, this message translates to:
  /// **'Payout Methods'**
  String get payoutMethods;

  /// No description provided for @notice.
  ///
  /// In en, this message translates to:
  /// **'Notice:'**
  String get notice;

  /// No description provided for @payoutNoticeTitle.
  ///
  /// In en, this message translates to:
  /// **'You will automatically be paid by the admin twice a week.'**
  String get payoutNoticeTitle;

  /// No description provided for @addPayoutMethod.
  ///
  /// In en, this message translates to:
  /// **'Add payout Method'**
  String get addPayoutMethod;

  /// No description provided for @navigate.
  ///
  /// In en, this message translates to:
  /// **'Navigate'**
  String get navigate;

  /// No description provided for @noPayoutMethods.
  ///
  /// In en, this message translates to:
  /// **'No payout methods'**
  String get noPayoutMethods;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @nameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter name'**
  String get nameHint;

  /// No description provided for @bankNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter Bank name'**
  String get bankNameHint;

  /// No description provided for @branchName.
  ///
  /// In en, this message translates to:
  /// **'Branch Name'**
  String get branchName;

  /// No description provided for @branchNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter Branch Name'**
  String get branchNameHint;

  /// No description provided for @accountHolderName.
  ///
  /// In en, this message translates to:
  /// **'Account Holder name'**
  String get accountHolderName;

  /// No description provided for @routingNumber.
  ///
  /// In en, this message translates to:
  /// **'Routing Number'**
  String get routingNumber;

  /// No description provided for @routingNumberHint.
  ///
  /// In en, this message translates to:
  /// **'Enter routing number'**
  String get routingNumberHint;

  /// No description provided for @accountNumber.
  ///
  /// In en, this message translates to:
  /// **'Account Number'**
  String get accountNumber;

  /// No description provided for @accountNumberHint.
  ///
  /// In en, this message translates to:
  /// **'Enter account number'**
  String get accountNumberHint;

  /// No description provided for @addressHint.
  ///
  /// In en, this message translates to:
  /// **'Enter address'**
  String get addressHint;

  /// No description provided for @dateOfBith.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get dateOfBith;

  /// No description provided for @yearHint.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get yearHint;

  /// No description provided for @monthHint.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get monthHint;

  /// No description provided for @dayHint.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get dayHint;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @cityHint.
  ///
  /// In en, this message translates to:
  /// **'Enter city'**
  String get cityHint;

  /// No description provided for @state.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get state;

  /// No description provided for @stateHint.
  ///
  /// In en, this message translates to:
  /// **'Enter State'**
  String get stateHint;

  /// No description provided for @zipCode.
  ///
  /// In en, this message translates to:
  /// **'Zip Code'**
  String get zipCode;

  /// No description provided for @zipCodeHint.
  ///
  /// In en, this message translates to:
  /// **'Enter Zip Code'**
  String get zipCodeHint;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get day;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// No description provided for @noActivitiesYet.
  ///
  /// In en, this message translates to:
  /// **'No Activities yet.'**
  String get noActivitiesYet;

  /// No description provided for @headingToDestination.
  ///
  /// In en, this message translates to:
  /// **'heading to the destination'**
  String get headingToDestination;

  /// No description provided for @driverArrivedNotice.
  ///
  /// In en, this message translates to:
  /// **'Driver is waiting for you'**
  String get driverArrivedNotice;

  /// No description provided for @driverShouldAriveInNotice.
  ///
  /// In en, this message translates to:
  /// **'Driver is estimated to arrive in'**
  String get driverShouldAriveInNotice;

  /// No description provided for @driverShouldHaveArrivedNotice.
  ///
  /// In en, this message translates to:
  /// **'Driver should be arriving in any moment now'**
  String get driverShouldHaveArrivedNotice;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @deleteAccountNotice.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account? After 30 days, your account will be permanently deleted. During this time, you can restore your account by signing in again.'**
  String get deleteAccountNotice;

  /// No description provided for @confirmAndDeleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Confirm & delete account'**
  String get confirmAndDeleteAccount;

  /// No description provided for @accountDeleted.
  ///
  /// In en, this message translates to:
  /// **'Account has been deleted'**
  String get accountDeleted;

  /// No description provided for @share_trip_text_locations.
  ///
  /// In en, this message translates to:
  /// **'I am on my way to {destination} from {pickup}.'**
  String share_trip_text_locations(Object destination, Object pickup);

  /// No description provided for @share_trip_text_driver.
  ///
  /// In en, this message translates to:
  /// **' My driver name is {firstName} {lastName}, the mobile number is +{mobileNumber}.'**
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber);

  /// No description provided for @share_trip_text_rider.
  ///
  /// In en, this message translates to:
  /// **' The rider with me name is {firstName} {lastName}, the mobile number is +{mobileNumber}.'**
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber);

  /// No description provided for @share_trip_started_time.
  ///
  /// In en, this message translates to:
  /// **' Trip has started on {startTime} and I expect the trip to take approximately {duration} minutes'**
  String share_trip_started_time(Object startTime, Object duration);

  /// No description provided for @share_trip_not_arrived_time.
  ///
  /// In en, this message translates to:
  /// **' I expect the trip to take approximately {duration} minutes once I get into the driver\'s car.'**
  String share_trip_not_arrived_time(Object duration);

  /// No description provided for @sendSOSMessage.
  ///
  /// In en, this message translates to:
  /// **'IMPORTANT: Please use this feature only in case of emergency. We will contact authorities in behalf of you.'**
  String get sendSOSMessage;

  /// No description provided for @confirmAndSendSOS.
  ///
  /// In en, this message translates to:
  /// **'Confirm & Send SOS'**
  String get confirmAndSendSOS;

  /// No description provided for @sosSentSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'SOS has been sent successfully'**
  String get sosSentSuccessfully;

  /// No description provided for @topUpSuccess.
  ///
  /// In en, this message translates to:
  /// **'Wallet has been topped up successfully'**
  String get topUpSuccess;

  /// No description provided for @cancelNotAllowed.
  ///
  /// In en, this message translates to:
  /// **'Cancellation of an already started ride is not possible.'**
  String get cancelNotAllowed;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @connectionError.
  ///
  /// In en, this message translates to:
  /// **'Connection error'**
  String get connectionError;

  /// No description provided for @serverError.
  ///
  /// In en, this message translates to:
  /// **'Server error'**
  String get serverError;

  /// No description provided for @addNewLocation.
  ///
  /// In en, this message translates to:
  /// **'Add new location'**
  String get addNewLocation;

  /// No description provided for @twoWayTrip.
  ///
  /// In en, this message translates to:
  /// **'Two-way trip'**
  String get twoWayTrip;

  /// No description provided for @reportSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Report Submitted'**
  String get reportSubmitted;

  /// No description provided for @reportSubmittedDescription.
  ///
  /// In en, this message translates to:
  /// **'Your report has been submitted successfully, we will review it and take the necessary actions.'**
  String get reportSubmittedDescription;

  /// No description provided for @cardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card number'**
  String get cardNumber;

  /// No description provided for @cardNumberHint.
  ///
  /// In en, this message translates to:
  /// **'Enter card number'**
  String get cardNumberHint;

  /// No description provided for @expiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiry date'**
  String get expiryDate;

  /// No description provided for @expiryDateHint.
  ///
  /// In en, this message translates to:
  /// **'MM/YY'**
  String get expiryDateHint;

  /// No description provided for @noFavoriteDrivers.
  ///
  /// In en, this message translates to:
  /// **'No favorite drivers'**
  String get noFavoriteDrivers;

  /// No description provided for @noFavoriteDriversDescription.
  ///
  /// In en, this message translates to:
  /// **'You can mark your preferred drivers as favorites when rating them after the trip.'**
  String get noFavoriteDriversDescription;

  /// No description provided for @pickupLocationNotFound.
  ///
  /// In en, this message translates to:
  /// **'We were unable to determine your current location using GPS as pickup point. Please enter your pickup point manually.'**
  String get pickupLocationNotFound;

  /// No description provided for @dragToSelect.
  ///
  /// In en, this message translates to:
  /// **'Drag to select'**
  String get dragToSelect;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @openSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get openSettings;

  /// No description provided for @locationPermission.
  ///
  /// In en, this message translates to:
  /// **'Location permission'**
  String get locationPermission;

  /// No description provided for @locationPermissionDeniedForeverMessage.
  ///
  /// In en, this message translates to:
  /// **'Location permission is a requirement for receiving orders around you and also for rider to track your location. You can not receive orders without this permission and us being beware of your current location. You can change this permission in your phone settings.'**
  String get locationPermissionDeniedForeverMessage;

  /// No description provided for @allow.
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get allow;

  /// No description provided for @driverOnlineTitle.
  ///
  /// In en, this message translates to:
  /// **'Searching for a ride'**
  String get driverOnlineTitle;

  /// No description provided for @driverOfflineTitle.
  ///
  /// In en, this message translates to:
  /// **'Get online to start receiving requests'**
  String get driverOfflineTitle;

  /// No description provided for @payInCash.
  ///
  /// In en, this message translates to:
  /// **'Cash payment'**
  String get payInCash;

  /// No description provided for @payInCashDescription.
  ///
  /// In en, this message translates to:
  /// **'Please proceed with the cash payment to the driver. The driver will confirm the payment once received.'**
  String get payInCashDescription;

  /// No description provided for @addToFavoriteDrivers.
  ///
  /// In en, this message translates to:
  /// **'Add to favorite drivers'**
  String get addToFavoriteDrivers;

  /// No description provided for @slideToConfirmArrival.
  ///
  /// In en, this message translates to:
  /// **'Slide to confirm arrival'**
  String get slideToConfirmArrival;

  /// No description provided for @slideToConfirmPickup.
  ///
  /// In en, this message translates to:
  /// **'Slide to confirm pickup'**
  String get slideToConfirmPickup;

  /// No description provided for @slideToConfirmDropoff.
  ///
  /// In en, this message translates to:
  /// **'Slide to confirm drop-off'**
  String get slideToConfirmDropoff;

  /// No description provided for @noticePickingUpRiderIn.
  ///
  /// In en, this message translates to:
  /// **'Picking up the rider in:'**
  String get noticePickingUpRiderIn;

  /// No description provided for @noticeRiderNotified.
  ///
  /// In en, this message translates to:
  /// **'Rider has been notified, Pickup the rider and start the ride'**
  String get noticeRiderNotified;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'bn', 'de', 'en', 'es', 'et', 'fa', 'fi', 'fr', 'hi', 'hy', 'id', 'it', 'ja', 'ko', 'ms', 'nl', 'no', 'pl', 'pt', 'ro', 'ru', 'sv', 'th', 'tr', 'uk', 'ur', 'vi', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh': {
  switch (locale.countryCode) {
    case 'CN': return SZhCn();
case 'TW': return SZhTw();
   }
  break;
   }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return SAr();
    case 'bn': return SBn();
    case 'de': return SDe();
    case 'en': return SEn();
    case 'es': return SEs();
    case 'et': return SEt();
    case 'fa': return SFa();
    case 'fi': return SFi();
    case 'fr': return SFr();
    case 'hi': return SHi();
    case 'hy': return SHy();
    case 'id': return SId();
    case 'it': return SIt();
    case 'ja': return SJa();
    case 'ko': return SKo();
    case 'ms': return SMs();
    case 'nl': return SNl();
    case 'no': return SNo();
    case 'pl': return SPl();
    case 'pt': return SPt();
    case 'ro': return SRo();
    case 'ru': return SRu();
    case 'sv': return SSv();
    case 'th': return STh();
    case 'tr': return STr();
    case 'uk': return SUk();
    case 'ur': return SUr();
    case 'vi': return SVi();
    case 'zh': return SZh();
  }

  throw FlutterError(
    'S.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
