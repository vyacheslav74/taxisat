import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Ukrainian (`uk`).
class SUk extends S {
  SUk([String locale = 'uk']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Усі права захищено.';
  }

  @override
  String get welcomeTitle => 'Ласкаво просимо в додаток';

  @override
  String get today => 'Сьогодні';

  @override
  String get yesterday => 'вчора';

  @override
  String get settings => 'Налаштування';

  @override
  String get about => 'про';

  @override
  String get profileInfo => 'Інформація про профіль';

  @override
  String get language => 'Мова';

  @override
  String get firstName => 'Ім\'я';

  @override
  String get lastName => 'Прізвище';

  @override
  String get mobileNumber => 'Номер мобільного';

  @override
  String get edit => 'Редагувати';

  @override
  String get enterCode => 'Введіть код';

  @override
  String get editProfile => 'Редагувати профіль';

  @override
  String get bankTransfer => 'Банківський переказ';

  @override
  String get gift => 'Подарунок';

  @override
  String get correction => 'Виправлення';

  @override
  String get inappPayment => 'Оплата в додатку';

  @override
  String get orderFee => 'Вартість замовлення';

  @override
  String get parkingFee => 'Плата за паркування';

  @override
  String get cancellationFee => 'Комісія за скасування';

  @override
  String get withdraw => 'Вилучити';

  @override
  String get walletTransactions => 'Транзакції гаманця';

  @override
  String get addCard => 'Додати картку';

  @override
  String get visa => 'Віза';

  @override
  String get mastercard => 'Mastercard';

  @override
  String get addBalance => 'Додайте баланс';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString хвилин',
      one: '$minutesString хвилин',
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
      other: '$hoursString годин',
      one: '$hoursString годин',
      zero: 'Zero hours',
    );
    return 'Тривалість: $_temp0';
  }

  @override
  String get timePastDue => 'Прострочено';

  @override
  String get justNow => 'Прямо зараз';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString м';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString км';
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
  String get welcomeSubtitle => 'Служба таксі, розроблена для вашого комфорту, має Поїздки з вашими улюбленими водіями та оберіть свої переваги поїздки';

  @override
  String get onboardingRewardTitle => 'Отримайте винагороду!';

  @override
  String get onboardingRewardSubtitle => 'Отримуйте додаткові бонуси за рекомендацію друга, завершення подорожей і багато іншого...';

  @override
  String get selectLanguage => 'Оберіть мову';

  @override
  String get searchForLanguage => 'Пошук мови';

  @override
  String get enterPhoneNumber => 'Введіть номер телефону';

  @override
  String get actionContinue => 'Продовжити';

  @override
  String get whereIsYourDestination => 'Де ваше призначення?';

  @override
  String get whereAreYouGoing => 'Куди ти йдеш?';

  @override
  String get selectDestinations => 'Ваш маршрут';

  @override
  String get pickupPoint => 'Пункт прийому';

  @override
  String get enterPickupPoint => 'Введіть пункт отримання';

  @override
  String get dropoffPoint => 'Пункт видачі';

  @override
  String get enterDropoffPoint => 'Введіть пункт висадки';

  @override
  String get stopPoint => 'Пункт зупинки';

  @override
  String get enterStopPoint => 'Введіть точку зупинки';

  @override
  String get confirm => 'Підтвердити';

  @override
  String get confirmDropoff => 'Підтвердити висадку';

  @override
  String get confirmPickup => 'Підтвердити отримання';

  @override
  String get enterAtLeast3Characters => 'Введіть принаймні 3 символи';

  @override
  String get noResults => 'Немає результатів';

  @override
  String get bookNow => 'Резервувати зараз';

  @override
  String get cash => 'Готівка';

  @override
  String get online => 'Онлайн';

  @override
  String get offline => 'Офлайн';

  @override
  String get onTrip => 'У поїздці';

  @override
  String get confirmPay => 'Підтвердити';

  @override
  String get cancel => 'Скасувати';

  @override
  String get apply => 'Застосувати';

  @override
  String get enterCouponCode => 'Введіть код купона';

  @override
  String get reserveRide => 'Резервна поїздка';

  @override
  String get reserveRideMessage => 'Виберіть точну дату й час, на які ви бажаєте забронювати поїздку';

  @override
  String get reserveRideMessageSuccess => 'Вашу поїздку успішно зарезервовано. Ви можете переглянути заброньовані поїздки в розділі «Заплановані поїздки».';

  @override
  String get cancelReservation => 'Скасувати бронювання';

  @override
  String get confirmResrve => 'Підтвердити ';

  @override
  String get enterCouponDescription => 'Введіть код купона, який буде застосовано до цін';

  @override
  String get enterCoupon => 'Введіть купон';

  @override
  String get couponApplied => 'Купон застосовано';

  @override
  String get couponAppliedDescription => 'Купон застосовано до вартості вашої поїздки';

  @override
  String get done => 'Готово!';

  @override
  String get ridePreferences => 'Налаштування їзди';

  @override
  String get noWaitTime => 'Немає часу очікування';

  @override
  String minutesRange(String minutes) {
    return '$minutes хвилин';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds секунд';
  }

  @override
  String get rideRequested => 'Попросили поїздку';

  @override
  String get searchingForAnOnlineDriver => 'Пошук онлайн драйвера...';

  @override
  String get cancelRide => 'Скасувати поїздку';

  @override
  String get rideSafety => 'Безпека їзди';

  @override
  String get shareTripInformation => 'Поділіться інформацією про поїздку';

  @override
  String get shareTripInformationDescription => 'Ви можете поділитися інформацією про свою поїздку з друзями';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Повідомте владу про надзвичайну ситуацію';

  @override
  String get reportAnIssue => 'Повідомити про проблему';

  @override
  String get reportAnIssueMidTripDescription => 'Поділіться проблемою безпеки під час подорожі';

  @override
  String get rideOptions => 'Варіанти їзди';

  @override
  String get goBackToRide => 'Поверніться, щоб покататися';

  @override
  String get waitTime => 'Час очікування';

  @override
  String get couponCode => 'Код купона';

  @override
  String get giftCardCode => 'Код подарункової картки';

  @override
  String get nicePoints => 'Хороші бали';

  @override
  String get negativePoints => 'Негативні моменти';

  @override
  String get reviewCommentBoxHint => 'Додати коментар...';

  @override
  String get howWasYourTrip => 'Як пройшла ваша поїздка?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Жахлива поїздка з $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Погана поїздка з $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Середня поїздка з $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Гарної подорожі з $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Чудова подорож з $name';
  }

  @override
  String get submitFeedback => 'Надіслати відгук';

  @override
  String get typeAMessage => 'Введіть повідомлення';

  @override
  String get findAnotherRide => 'Знайдіть іншу поїздку';

  @override
  String get next => 'Далі';

  @override
  String get searchForDropoffLocation => 'Пошук місця висадки';

  @override
  String get searchForPickupLocation => 'Пошук місця отримання';

  @override
  String get placeConfirmDialogPlaceholder => 'Де ваше місце висадки?';

  @override
  String get noAnnouncements => 'Жодних оголошень';

  @override
  String get announcements => 'Оголошення';

  @override
  String reviewsCount(int count) {
    return '($count відгуків)';
  }

  @override
  String get tripDetails => 'Деталі поїздки';

  @override
  String get rideDetails => 'Деталі поїздки';

  @override
  String get orderARide => 'Замовити поїздку';

  @override
  String get noRidesYet => 'Поки що немає поїздок!';

  @override
  String get issueSubjectPlaceholder => 'Введіть тему питання';

  @override
  String get issueContentPlaceholder => 'Введіть опис проблеми';

  @override
  String get reportThisIssue => 'Повідомити про цю проблему';

  @override
  String get fieldIsRequired => 'Поле обов\'язкове';

  @override
  String get ok => 'в порядку';

  @override
  String get favoriteLocations => 'Улюблені локації';

  @override
  String get favoriteLocationsSubtitle => 'Збережіть свої улюблені місця для зручнішого доступу';

  @override
  String get createAFavoriteLocation => 'Створіть улюблене місце';

  @override
  String get addressTitleLabel => 'Назва адреси';

  @override
  String get clickToSetLocation => 'Натисніть, щоб встановити місцезнаходження';

  @override
  String get whereIsYourNewFavoriteLocation => 'Де ваше нове улюблене місце?';

  @override
  String get locateFavoriteLocationDescription => 'Скористайтеся вікном пошуку нижче або картою, щоб закріпити точне місцезнаходження';

  @override
  String get searchLocation => 'Місце пошуку';

  @override
  String get saveChanges => 'Зберегти зміни';

  @override
  String get rideHistory => 'Історія поїздок';

  @override
  String get scheduledRides => 'Поїздки за розкладом';

  @override
  String get keepTheOrder => 'Дотримуйтесь порядку';

  @override
  String get cancelTheRide => 'Скасувати поїздку';

  @override
  String get walletBalance => 'Баланс гаманця';

  @override
  String get activities => 'Діяльності';

  @override
  String get pleaseEnterGiftCardCode => 'Будь ласка, введіть код подарункової картки';

  @override
  String get redeem => 'Викупити';

  @override
  String get enterGiftCardCode => 'Введіть код подарункової картки';

  @override
  String get redeemGiftCard => 'Активувати подарункову картку';

  @override
  String get redeemGiftCardDescription => 'Введіть код подарункової картки, щоб активувати її.';

  @override
  String get redeemSuccessTitle => 'Подарункову картку активовано!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Ви успішно активували $amount подарункову картку.';
  }

  @override
  String get addCredit => 'Додати кредит';

  @override
  String get payNow => 'Платити зараз';

  @override
  String get addCreditToWallet => 'Додайте кредит у гаманець';

  @override
  String get pleaseSelectAmount => 'Виберіть суму';

  @override
  String get enterAmount => 'Введіть суму';

  @override
  String get selectAmount => 'Виберіть суму:';

  @override
  String get wallet => 'Гаманець';

  @override
  String get totalRides => 'Всього поїздок';

  @override
  String get appSettings => 'Налаштування програми';

  @override
  String get mapSettings => 'Налаштування карти';

  @override
  String get lanugageSettings => 'Налаштування мови';

  @override
  String get paymentMethods => 'Методи оплати';

  @override
  String get selectCards => 'Виберіть картки';

  @override
  String get selectCardsDescription => 'Ви можете вибрати номери карток, які відображатимуться у списку способів оплати на рахунках.';

  @override
  String get delete => 'Видалити';

  @override
  String get nameOnCard => 'Ім\'я на картці';

  @override
  String get profile => 'Профіль';

  @override
  String get scheduledRide => 'Поїздка за розкладом';

  @override
  String get addPaymentMethod => 'Додати спосіб оплати';

  @override
  String get addPaymentMethodDescription => 'Додайте новий спосіб оплати до свого облікового запису';

  @override
  String get saveCard => 'Зберегти картку';

  @override
  String get selectDialCode => 'Виберіть код набору';

  @override
  String get searchCountryName => 'Шукати назву країни';

  @override
  String get preferences => 'Налаштування:';

  @override
  String get onboardingDescription => 'За кілька хвилин від реєстрації облікового запису та насолоди комфортними поїздками';

  @override
  String get signInSignUp => 'Увійти/ Зареєструватися';

  @override
  String get enterOtp => 'Введіть OTP';

  @override
  String get enterPassword => 'Введіть пароль';

  @override
  String get enterPasswordDescription => 'Щоб продовжити, введіть свій пароль';

  @override
  String get setPassword => 'Встановити пароль';

  @override
  String get password => 'Пароль';

  @override
  String get passwordRuleDescription => 'Включіть принаймні два з наступного:';

  @override
  String get passwordRuleLength => 'Від 9 до 64 символів';

  @override
  String get passwordRuleUpperCase => 'Великі літери';

  @override
  String get passwordRuleLowerCase => 'Букви нижнього регістру';

  @override
  String get passwordRuleNumber => 'Числа';

  @override
  String get passwordRuleSpecialCharacter => 'Спеціальні символи';

  @override
  String get contactDetails => 'Контактні дані';

  @override
  String get vehicleDetails => 'Деталі транспортного засобу';

  @override
  String get payoutInformation => 'Інформація про виплату';

  @override
  String get documents => 'Документи';

  @override
  String get accessDenied => 'Доступ заборонено';

  @override
  String get success => 'Успіх';

  @override
  String get skipForNow => 'Пропустити поки що';

  @override
  String get sendOtpDescription => 'На ваш номер телефону надіслано код підтвердження';

  @override
  String get resendOtp => 'Надіслати код повторно';

  @override
  String get useOtpInstead => 'Натомість використовуйте OTP';

  @override
  String get home => 'додому';

  @override
  String get logout => 'Вийти';

  @override
  String get driverLicenseNumber => 'Номер водійського посвідчення';

  @override
  String get email => 'Електронна пошта';

  @override
  String get address => 'Адреса';

  @override
  String get gender => 'Стать';

  @override
  String get genderMale => 'Чоловік';

  @override
  String get genderFemale => 'Жінка';

  @override
  String get genderUnknown => 'Нейтрально / Невідомо';

  @override
  String get vehiclePlateNumber => 'Номерний знак транспортного засобу';

  @override
  String get vehicleColor => 'Колір транспортного засобу';

  @override
  String get vehicleModelAndMake => 'Модель транспортного засобу ';

  @override
  String get vehicleProductionYear => 'Рік випуску автомобіля';

  @override
  String get bankName => 'Назва банку';

  @override
  String get bankRoutingNumber => 'Номер банку';

  @override
  String get bankAccountNumber => 'Номер рахунку в банку';

  @override
  String get bankSwift => 'Швидкий код';

  @override
  String get uploadImage => 'Завантажити зображення';

  @override
  String get yourBalance => 'Ваш баланс';

  @override
  String get rideCancellation => 'Скасування поїздки';

  @override
  String get cancelRideMessage => 'Ви впевнені, що хочете скасувати свою поїздку?';

  @override
  String get cancelRideSuccess => 'Поїздку успішно скасовано';

  @override
  String get confirmAndCancelRide => 'Підтвердити ';

  @override
  String get selectPaymentMethod => 'Виберіть спосіб оплати';

  @override
  String get rideFeePaid => 'Плату за проїзд сплачено';

  @override
  String get rideFeeUnpaid => 'Плата за проїзд ще не сплачена';

  @override
  String get total => 'Всього';

  @override
  String get totalPrice => 'Загальна сума';

  @override
  String get addCustomCredit => 'Додати спеціальне редагування';

  @override
  String get serviceFee => 'Плата за обслуговування';

  @override
  String get serviceOptionFee => 'Плата за опцію обслуговування';

  @override
  String get couponDiscount => 'Купонна знижка';

  @override
  String get walletCreit => 'Кредит гаманця';

  @override
  String get custom => 'Custom';

  @override
  String get payment => 'Оплата';

  @override
  String get cashPayment => 'Готівковий платіж';

  @override
  String cashPaymentDescription(String amount) {
    return 'Ви підтверджуєте, що отримали $amount?';
  }

  @override
  String get cashPaymentReceived => 'Оплата готівкою отримана';

  @override
  String get confirmAndEndTrip => 'Підтвердити ';

  @override
  String get earnings => 'Заробіток';

  @override
  String get acceptOrder => 'Прийняти замовлення';

  @override
  String get canceled => 'Скасовано';

  @override
  String get unknown => 'Невідомий';

  @override
  String get commission => 'Комісія';

  @override
  String get selectProfileImage => 'Виберіть зображення профілю';

  @override
  String get chooseAvatarDescription => 'Або виберіть аватар зі списку нижче:';

  @override
  String get fullName => 'Повне ім\'я';

  @override
  String get favoriteDrivers => 'Улюблені водії';

  @override
  String get distanceTraveled => 'Пройдена відстань';

  @override
  String get rating => 'Рейтинг';

  @override
  String get map => 'Карта';

  @override
  String get income => 'Дохід';

  @override
  String get timeSpent => 'Витрачений час';

  @override
  String get daily => 'Щодня';

  @override
  String get monthly => 'Щомісяця';

  @override
  String get noRecordsFoundEarnings => 'Для цих фільтрів не знайдено жодного запису про поїздку';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Ще немає відгуків';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'У вас ще недостатньо відгуків для показу.';

  @override
  String get feedbacksSummary => 'Резюме відгуків';

  @override
  String get feedbacksGoodTitle => 'Чудова робота!';

  @override
  String get feedbacksGoodSubtitle => 'Ваші оцінки поки що хороші';

  @override
  String get feedbacksBadTitle => 'Середній';

  @override
  String get feedbacksBadSubtitle => 'Ви можете використовувати деякі покращення';

  @override
  String get feedbacksGoodPointsTitle => 'Кілька хороших моментів про вас:';

  @override
  String get feedbacksbadPointsTitle => 'Деякі моменти, які можна покращити:';

  @override
  String get feedbacksReviewsTitle => 'Кілька попередніх оглядів';

  @override
  String get payoutMethods => 'Методи виплат';

  @override
  String get notice => 'Примітка:';

  @override
  String get payoutNoticeTitle => 'Ви автоматично отримуватимете гроші від адміністратора двічі на тиждень.';

  @override
  String get addPayoutMethod => 'Додати спосіб виплати';

  @override
  String get navigate => 'Навігація';

  @override
  String get noPayoutMethods => 'Немає способів виплати';

  @override
  String get name => 'Ім\'я';

  @override
  String get nameHint => 'Введіть ім\'я';

  @override
  String get bankNameHint => 'Введіть назву банку';

  @override
  String get branchName => 'Назва гілки';

  @override
  String get branchNameHint => 'Введіть назву відділення';

  @override
  String get accountHolderName => 'Ім\'я власника рахунку';

  @override
  String get routingNumber => 'Номер маршруту';

  @override
  String get routingNumberHint => 'Введіть номер маршруту';

  @override
  String get accountNumber => 'Номер рахунку';

  @override
  String get accountNumberHint => 'Введіть номер рахунку';

  @override
  String get addressHint => 'Введіть адресу';

  @override
  String get dateOfBith => 'Дата народження';

  @override
  String get yearHint => 'рік';

  @override
  String get monthHint => 'місяць';

  @override
  String get dayHint => 'День';

  @override
  String get city => 'Місто';

  @override
  String get cityHint => 'Введіть місто';

  @override
  String get state => 'Держава';

  @override
  String get stateHint => 'Введіть стан';

  @override
  String get zipCode => 'ЗІП код';

  @override
  String get zipCodeHint => 'Введіть поштовий індекс';

  @override
  String get day => 'День';

  @override
  String get month => 'місяць';

  @override
  String get year => 'рік';

  @override
  String get noActivitiesYet => 'Поки немає активності.';

  @override
  String get headingToDestination => 'прямуючи до місця призначення';

  @override
  String get driverArrivedNotice => 'Водій чекає на вас';

  @override
  String get driverShouldAriveInNotice => 'Очікується, що водій прибуде';

  @override
  String get driverShouldHaveArrivedNotice => 'Водій має прибути найближчим часом';

  @override
  String get deleteAccount => 'Видалити аккаунт';

  @override
  String get deleteAccountNotice => 'Ви впевнені, що хочете видалити свій обліковий запис? Через 30 днів ваш обліковий запис буде остаточно видалено. Протягом цього часу ви можете відновити обліковий запис, увійшовши знову.';

  @override
  String get confirmAndDeleteAccount => 'Підтвердити ';

  @override
  String get accountDeleted => 'Обліковий запис видалено';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Я йду до $destination з $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Мого водія звуть $firstName $lastName, номер мобільного телефону $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' Моє ім\'я гонщика $firstName $lastName, номер мобільного $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Подорож почалася $startTime і я очікую, що подорож триватиме приблизно $duration хвилин';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Я очікую, що поїздка триватиме приблизно $duration хвилин після того, як я сяду в машину водія.';
  }

  @override
  String get sendSOSMessage => 'ВАЖЛИВО: використовуйте цю функцію лише в екстрених випадках. Ми зв\'яжемося з владою від вашого імені.';

  @override
  String get confirmAndSendSOS => 'Підтвердити ';

  @override
  String get sosSentSuccessfully => 'SOS надіслано успішно';

  @override
  String get topUpSuccess => 'Гаманець успішно поповнено';

  @override
  String get cancelNotAllowed => 'Скасування вже розпочатої поїздки неможливе.';

  @override
  String get error => 'Помилка';

  @override
  String get connectionError => 'Помилка з\'єднання';

  @override
  String get serverError => 'Помилка серверу';

  @override
  String get addNewLocation => 'Додати нове місце';

  @override
  String get twoWayTrip => 'Поїздка в обидві сторони';

  @override
  String get reportSubmitted => 'Звіт надіслано';

  @override
  String get reportSubmittedDescription => 'Ваш звіт успішно надіслано, ми його розглянемо та вживемо необхідних заходів.';

  @override
  String get cardNumber => 'Номер картки';

  @override
  String get cardNumberHint => 'Введіть номер картки';

  @override
  String get expiryDate => 'Термін придатності';

  @override
  String get expiryDateHint => 'ММ/РР';

  @override
  String get noFavoriteDrivers => 'Немає улюблених драйверів';

  @override
  String get noFavoriteDriversDescription => 'Ви можете позначити улюблених водіїв, оцінюючи їх після поїздки.';

  @override
  String get pickupLocationNotFound => 'Нам не вдалося визначити ваше поточне місцезнаходження за допомогою GPS як точки посадки. Введіть пункт отримання вручну.';

  @override
  String get dragToSelect => 'Перетягніть, щоб вибрати';

  @override
  String get skip => 'Пропустити';

  @override
  String get openSettings => 'Відкрийте налаштування';

  @override
  String get locationPermission => 'Дозвіл на місцезнаходження';

  @override
  String get locationPermissionDeniedForeverMessage => 'Дозвіл на місцезнаходження необхідний для отримання замовлень поблизу вас, а також для відстеження вашого місцезнаходження. Ви не можете отримувати замовлення без цього дозволу, і ми повинні стежити за вашим поточним місцезнаходженням. Ви можете змінити цей дозвіл у налаштуваннях телефону.';

  @override
  String get allow => 'Дозволити';

  @override
  String get driverOnlineTitle => 'Пошук поїздки';

  @override
  String get driverOfflineTitle => 'Підключіться до мережі, щоб почати отримувати запити';

  @override
  String get payInCash => 'Готівковий платіж';

  @override
  String get payInCashDescription => 'Будь ласка, продовжте оплату готівкою водієві. Водій підтвердить оплату після отримання.';

  @override
  String get addToFavoriteDrivers => 'Додайте до улюблених водіїв';

  @override
  String get slideToConfirmArrival => 'Проведіть пальцем, щоб підтвердити прибуття';

  @override
  String get slideToConfirmPickup => 'Проведіть пальцем, щоб підтвердити отримання';

  @override
  String get slideToConfirmDropoff => 'Проведіть пальцем, щоб підтвердити висадку';

  @override
  String get noticePickingUpRiderIn => 'Збір райдера через:';

  @override
  String get noticeRiderNotified => 'Гонщик отримав сповіщення, візьміть водія та розпочніть поїздку';
}
