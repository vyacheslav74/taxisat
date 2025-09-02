import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Russian (`ru`).
class SRu extends S {
  SRu([String locale = 'ru']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Copyright © $company, Все права защищены.';
  }

  @override
  String get welcomeTitle => 'Добро пожаловать в приложение';

  @override
  String get today => 'Сегодня';

  @override
  String get yesterday => 'Вчера';

  @override
  String get settings => 'Настройки';

  @override
  String get about => 'О нас';

  @override
  String get profileInfo => 'Информация профиля';

  @override
  String get language => 'Язык';

  @override
  String get firstName => 'Имя';

  @override
  String get lastName => 'Фамилия';

  @override
  String get mobileNumber => 'Номер мобильного телефона';

  @override
  String get edit => 'Редактировать';

  @override
  String get enterCode => 'Введите код';

  @override
  String get editProfile => 'Редактировать профиль';

  @override
  String get bankTransfer => 'Банковский перевод';

  @override
  String get gift => 'Подарок';

  @override
  String get correction => 'Коррекция';

  @override
  String get inappPayment => 'Оплата в приложении';

  @override
  String get orderFee => 'Стоимость заказа';

  @override
  String get parkingFee => 'Плата за парковку';

  @override
  String get cancellationFee => 'Комиссия при отмене';

  @override
  String get withdraw => 'Отзывать';

  @override
  String get walletTransactions => 'Операции с кошельком';

  @override
  String get addCard => 'Добавить карту';

  @override
  String get visa => 'Виза';

  @override
  String get mastercard => 'Мастеркард';

  @override
  String get addBalance => 'Добавить баланс';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString минут',
      one: '$minutesString минута',
      zero: '0 минут',
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
      other: '$hoursString часов',
      one: '$hoursString часов',
      zero: 'Zero hours',
    );
    return 'Продолжительность: $_temp0';
  }

  @override
  String get timePastDue => 'Просроченный';

  @override
  String get justNow => 'Прямо сейчас';

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
  String get welcomeSubtitle => 'Служба такси, созданная для вашего комфорта, предлагает поездки с вашими любимыми водителями и выбор предпочтений в поездке.';

  @override
  String get onboardingRewardTitle => 'Получите вознаграждение!';

  @override
  String get onboardingRewardSubtitle => 'Получайте дополнительные бонусы за приглашение друга, совершение поездок и многое другое...';

  @override
  String get selectLanguage => 'Выберите язык';

  @override
  String get searchForLanguage => 'Поиск языка';

  @override
  String get enterPhoneNumber => 'Введите номер телефона';

  @override
  String get actionContinue => 'Продолжать';

  @override
  String get whereIsYourDestination => 'Где ваш пункт назначения?';

  @override
  String get whereAreYouGoing => 'Куда ты идешь?';

  @override
  String get selectDestinations => 'Ваш маршрут';

  @override
  String get pickupPoint => 'Место сбора';

  @override
  String get enterPickupPoint => 'Введите пункт получения';

  @override
  String get dropoffPoint => 'Пункт высадки';

  @override
  String get enterDropoffPoint => 'Введите точку высадки';

  @override
  String get stopPoint => 'Точка остановки';

  @override
  String get enterStopPoint => 'Введите точку остановки';

  @override
  String get confirm => 'Подтверждать';

  @override
  String get confirmDropoff => 'Подтвердить высадку';

  @override
  String get confirmPickup => 'Подтвердить получение';

  @override
  String get enterAtLeast3Characters => 'Введите не менее 3 символов';

  @override
  String get noResults => 'Без результатов';

  @override
  String get bookNow => 'Забронируйте сейчас';

  @override
  String get cash => 'Наличные или перевод';

  @override
  String get online => 'В сети';

  @override
  String get offline => 'Не в сети';

  @override
  String get onTrip => 'В поездке';

  @override
  String get confirmPay => 'Подтверждать ';

  @override
  String get cancel => 'Отмена';

  @override
  String get apply => 'Применять';

  @override
  String get enterCouponCode => 'Введите код купона';

  @override
  String get reserveRide => 'Резервная поездка';

  @override
  String get reserveRideMessage => 'Выберите точную дату и время, когда вы хотите зарезервировать поездку.';

  @override
  String get reserveRideMessageSuccess => 'Ваша поездка успешно зарезервирована. Вы можете просмотреть зарезервированные поездки в разделе «Запланированные поездки».';

  @override
  String get cancelReservation => 'Отмена бронирования';

  @override
  String get confirmResrve => 'Подтверждать';

  @override
  String get enterCouponDescription => 'Введите код купона, который будет применяться к ценам.';

  @override
  String get enterCoupon => 'Введите купон';

  @override
  String get couponApplied => 'Купон применен';

  @override
  String get couponAppliedDescription => 'Купон был применен к стоимости вашей поездки.';

  @override
  String get done => 'Сделанный!';

  @override
  String get ridePreferences => 'Настройки поездки';

  @override
  String get noWaitTime => 'Нет времени ожидания';

  @override
  String minutesRange(String minutes) {
    return '$minutes минут';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds секунд';
  }

  @override
  String get rideRequested => 'Запрошена поездка';

  @override
  String get searchingForAnOnlineDriver => 'Ищу драйвер онлайн...';

  @override
  String get cancelRide => 'Отменить поездку';

  @override
  String get rideSafety => 'Безопасность езды';

  @override
  String get shareTripInformation => 'Поделитесь информацией о поездке';

  @override
  String get shareTripInformationDescription => 'Вы можете поделиться информацией о поездке с другом';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Сообщите властям о чрезвычайной ситуации';

  @override
  String get reportAnIssue => 'Сообщить о проблеме';

  @override
  String get reportAnIssueMidTripDescription => 'Расскажите о проблеме безопасности в поездке';

  @override
  String get rideOptions => 'Варианты поездок';

  @override
  String get goBackToRide => 'Вернись кататься';

  @override
  String get waitTime => 'Время ожидания';

  @override
  String get couponCode => 'Код купона';

  @override
  String get giftCardCode => 'Код подарочной карты';

  @override
  String get nicePoints => 'Хорошие моменты';

  @override
  String get negativePoints => 'Отрицательные моменты';

  @override
  String get reviewCommentBoxHint => 'Добавить комментарий...';

  @override
  String get howWasYourTrip => 'Как поездка?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Ужасная поездка с $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Плохое путешествие с $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Средняя поездка с $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Удачной поездки с $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Потрясающее путешествие с $name';
  }

  @override
  String get submitFeedback => 'Отправить отзыв';

  @override
  String get typeAMessage => 'Введите сообщение';

  @override
  String get findAnotherRide => 'Найти другую поездку';

  @override
  String get next => 'Следующий';

  @override
  String get searchForDropoffLocation => 'Найдите место высадки';

  @override
  String get searchForPickupLocation => 'Поиск места получения';

  @override
  String get placeConfirmDialogPlaceholder => 'Где ваше место высадки?';

  @override
  String get noAnnouncements => 'Нет объявлений';

  @override
  String get announcements => 'Объявления';

  @override
  String reviewsCount(int count) {
    return '($count отзывов)';
  }

  @override
  String get tripDetails => 'Детали поездки';

  @override
  String get rideDetails => 'Подробности поездки';

  @override
  String get orderARide => 'Заказать поездку';

  @override
  String get noRidesYet => 'Пока нет поездок!';

  @override
  String get issueSubjectPlaceholder => 'Введите тему проблемы';

  @override
  String get issueContentPlaceholder => 'Введите описание проблемы';

  @override
  String get reportThisIssue => 'Сообщить об этой проблеме';

  @override
  String get fieldIsRequired => 'Поле, обязательное для заполнения';

  @override
  String get ok => 'ХОРОШО';

  @override
  String get favoriteLocations => 'Любимые места';

  @override
  String get favoriteLocationsSubtitle => 'Сохраните свои любимые места для более удобного доступа.';

  @override
  String get createAFavoriteLocation => 'Создайте любимое место';

  @override
  String get addressTitleLabel => 'Название адреса';

  @override
  String get clickToSetLocation => 'Нажмите, чтобы указать местоположение';

  @override
  String get whereIsYourNewFavoriteLocation => 'Где ваше новое любимое место?';

  @override
  String get locateFavoriteLocationDescription => 'Используйте поле поиска ниже или карту, чтобы указать точное местоположение.';

  @override
  String get searchLocation => 'Поиск местоположения';

  @override
  String get saveChanges => 'Сохранить изменения';

  @override
  String get rideHistory => 'История поездок';

  @override
  String get scheduledRides => 'Запланированные поездки';

  @override
  String get keepTheOrder => 'Держите порядок';

  @override
  String get cancelTheRide => 'Отменить поездку';

  @override
  String get walletBalance => 'Баланс кошелька';

  @override
  String get activities => 'Деятельность';

  @override
  String get pleaseEnterGiftCardCode => 'Пожалуйста, введите код подарочной карты';

  @override
  String get redeem => 'Выкупать';

  @override
  String get enterGiftCardCode => 'Введите код подарочной карты';

  @override
  String get redeemGiftCard => 'Погасить подарочную карту';

  @override
  String get redeemGiftCardDescription => 'Введите код подарочной карты, чтобы активировать ее.';

  @override
  String get redeemSuccessTitle => 'Подарочная карта активирована!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Вы успешно активировали подарочную карту $amount.';
  }

  @override
  String get addCredit => 'Добавить кредит';

  @override
  String get payNow => 'Заплатить сейчас';

  @override
  String get addCreditToWallet => 'Добавить кредит в кошелек';

  @override
  String get pleaseSelectAmount => 'Пожалуйста, выберите сумму';

  @override
  String get enterAmount => 'Введите сумму';

  @override
  String get selectAmount => 'Выберите сумму:';

  @override
  String get wallet => 'Кошелек';

  @override
  String get totalRides => 'Всего поездок';

  @override
  String get appSettings => 'Настройки приложения';

  @override
  String get mapSettings => 'Настройки карты';

  @override
  String get lanugageSettings => 'Настройки языка';

  @override
  String get paymentMethods => 'Способы оплаты';

  @override
  String get selectCards => 'Выберите карты';

  @override
  String get selectCardsDescription => 'Вы можете выбрать номера карт, которые будут отображаться в списке способов оплаты в счетах.';

  @override
  String get delete => 'Удалить';

  @override
  String get nameOnCard => 'Имя';

  @override
  String get profile => 'Профиль';

  @override
  String get scheduledRide => 'Запланированная поездка';

  @override
  String get addPaymentMethod => 'Добавить способ оплаты';

  @override
  String get addPaymentMethodDescription => 'Добавьте новый способ оплаты в свой аккаунт';

  @override
  String get saveCard => 'Сохранить карту';

  @override
  String get selectDialCode => 'Выберите код набора';

  @override
  String get searchCountryName => 'Поиск по названию страны';

  @override
  String get preferences => 'Предпочтения:';

  @override
  String get onboardingDescription => 'Всего несколько мгновений отделяют вас от регистрации аккаунта.';

  @override
  String get signInSignUp => 'Войти Зарегистрироваться';

  @override
  String get enterOtp => 'Введите одноразовый пароль';

  @override
  String get enterPassword => 'Введите пароль';

  @override
  String get enterPasswordDescription => 'Пожалуйста, введите Ваш пароль чтобы продолжить';

  @override
  String get setPassword => 'Установка пароля';

  @override
  String get password => 'Пароль';

  @override
  String get passwordRuleDescription => 'Включите как минимум два из следующих пунктов:';

  @override
  String get passwordRuleLength => 'От 5 до 64 символов';

  @override
  String get passwordRuleUpperCase => 'Заглавные латинские буквы';

  @override
  String get passwordRuleLowerCase => 'Строчные латинские буквы';

  @override
  String get passwordRuleNumber => 'Числа';

  @override
  String get passwordRuleSpecialCharacter => 'Специальные символы';

  @override
  String get contactDetails => 'Контактная информация';

  @override
  String get vehicleDetails => 'Детали автомобиля';

  @override
  String get payoutInformation => 'Информация о выплате';

  @override
  String get documents => 'Документы';

  @override
  String get accessDenied => 'Доступ запрещен';

  @override
  String get success => 'Успех';

  @override
  String get skipForNow => 'Пропустить сейчас';

  @override
  String get sendOtpDescription => 'На ваш номер телефона был отправлен код подтверждения';

  @override
  String get resendOtp => 'Отправить код еще раз';

  @override
  String get useOtpInstead => 'Вместо этого используйте OTP';

  @override
  String get home => 'Дом';

  @override
  String get logout => 'Выйти';

  @override
  String get driverLicenseNumber => 'Номер водительского удостоверения';

  @override
  String get email => 'Электронная почта';

  @override
  String get address => 'Адрес';

  @override
  String get gender => 'Пол';

  @override
  String get genderMale => 'Мужской';

  @override
  String get genderFemale => 'Женский';

  @override
  String get genderUnknown => '';

  @override
  String get vehiclePlateNumber => 'Номерной знак транспортного средства';

  @override
  String get vehicleColor => 'Цвет автомобиля';

  @override
  String get vehicleModelAndMake => 'Модель автомобиля';

  @override
  String get vehicleProductionYear => 'Год выпуска автомобиля';

  @override
  String get bankName => 'Название банка';

  @override
  String get bankRoutingNumber => 'Маршрутный номер банка';

  @override
  String get bankAccountNumber => 'Номер банковского счета';

  @override
  String get bankSwift => 'СВИФТ-код';

  @override
  String get uploadImage => 'Загрузить изображение';

  @override
  String get yourBalance => 'Ваш баланс';

  @override
  String get rideCancellation => 'Отмена поездки';

  @override
  String get cancelRideMessage => 'Вы уверены, что хотите отменить поездку?';

  @override
  String get cancelRideSuccess => 'Поездка успешно отменена';

  @override
  String get confirmAndCancelRide => 'Подтверждать';

  @override
  String get selectPaymentMethod => 'Выберите метод оплаты';

  @override
  String get rideFeePaid => 'Стоимость поездки оплачена';

  @override
  String get rideFeeUnpaid => 'Плата за поездку еще не оплачена';

  @override
  String get total => 'Общий';

  @override
  String get totalPrice => 'Итоговая цена';

  @override
  String get addCustomCredit => 'Добавить пользовательское редактирование';

  @override
  String get serviceFee => 'Плата за обслуживание';

  @override
  String get serviceOptionFee => 'Плата за опцию услуги';

  @override
  String get couponDiscount => 'Купон Скидка';

  @override
  String get walletCreit => 'Кредит на кошелек';

  @override
  String get custom => 'Обычай';

  @override
  String get payment => 'Оплата';

  @override
  String get cashPayment => 'Наличный расчет';

  @override
  String cashPaymentDescription(String amount) {
    return 'Вы подтверждаете, что получили $amount?';
  }

  @override
  String get cashPaymentReceived => 'Оплата наличными получена';

  @override
  String get confirmAndEndTrip => 'Подтверждать';

  @override
  String get earnings => 'Заработок';

  @override
  String get acceptOrder => 'Принять заказ';

  @override
  String get canceled => 'Отменено';

  @override
  String get unknown => 'Неизвестный';

  @override
  String get commission => 'Комиссия';

  @override
  String get selectProfileImage => 'Выберите изображение профиля';

  @override
  String get chooseAvatarDescription => 'Или выберите аватар из списка ниже:';

  @override
  String get fullName => 'Полное имя';

  @override
  String get favoriteDrivers => 'Любимые водители';

  @override
  String get distanceTraveled => 'Пройденный путь';

  @override
  String get rating => 'Рейтинг';

  @override
  String get map => 'карта';

  @override
  String get income => 'Доход';

  @override
  String get timeSpent => 'Время потрачено';

  @override
  String get daily => 'Ежедневно';

  @override
  String get monthly => 'Ежемесячно';

  @override
  String get noRecordsFoundEarnings => 'Для этих фильтров не найдено записей о поездках';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Пока нет отзывов';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'У вас еще недостаточно отзывов для показа.';

  @override
  String get feedbacksSummary => 'Сводка отзывов';

  @override
  String get feedbacksGoodTitle => 'Отличная работа!';

  @override
  String get feedbacksGoodSubtitle => 'Ваши рейтинги пока выглядят хорошо';

  @override
  String get feedbacksBadTitle => 'Средний';

  @override
  String get feedbacksBadSubtitle => 'Вы можете использовать некоторые улучшения';

  @override
  String get feedbacksGoodPointsTitle => 'Несколько хороших слов о вас:';

  @override
  String get feedbacksbadPointsTitle => 'Некоторые моменты, которые вы можете улучшить:';

  @override
  String get feedbacksReviewsTitle => 'Некоторые ранние обзоры';

  @override
  String get payoutMethods => 'Способы выплаты';

  @override
  String get notice => 'Уведомление:';

  @override
  String get payoutNoticeTitle => 'Администратор будет автоматически платить вам два раза в неделю.';

  @override
  String get addPayoutMethod => 'Добавить метод выплаты';

  @override
  String get navigate => 'Навигация';

  @override
  String get noPayoutMethods => 'Нет способов выплаты';

  @override
  String get name => 'Имя';

  @override
  String get nameHint => 'Введите имя';

  @override
  String get bankNameHint => 'Введите название банка';

  @override
  String get branchName => 'Название филиала';

  @override
  String get branchNameHint => 'Введите название филиала';

  @override
  String get accountHolderName => 'Имя владельца счета';

  @override
  String get routingNumber => 'Сколько оставить на балансе? ';

  @override
  String get routingNumberHint => 'Сумма';

  @override
  String get accountNumber => 'Номер телефона СБП';

  @override
  String get accountNumberHint => 'Введите номер телефона СБП';

  @override
  String get addressHint => 'Введите адрес';

  @override
  String get dateOfBith => 'Дата рождения';

  @override
  String get yearHint => 'Год';

  @override
  String get monthHint => 'Месяц';

  @override
  String get dayHint => 'День';

  @override
  String get city => 'Город';

  @override
  String get cityHint => 'Введите город';

  @override
  String get state => 'Состояние';

  @override
  String get stateHint => 'Введите штат';

  @override
  String get zipCode => 'Почтовый индекс';

  @override
  String get zipCodeHint => 'Введите почтовый индекс';

  @override
  String get day => 'День';

  @override
  String get month => 'Месяц';

  @override
  String get year => 'Год';

  @override
  String get noActivitiesYet => 'Пока нет мероприятий.';

  @override
  String get headingToDestination => 'направляемся к месту назначения';

  @override
  String get driverArrivedNotice => 'Водитель ждет вас';

  @override
  String get driverShouldAriveInNotice => 'Ожидается, что водитель прибудет в';

  @override
  String get driverShouldHaveArrivedNotice => 'Водитель должен приехать в любой момент';

  @override
  String get deleteAccount => 'Удалить аккаунт';

  @override
  String get deleteAccountNotice => 'Вы уверены, что хотите удалить свою учетную запись? Через 30 дней ваша учетная запись будет удалена навсегда. В течение этого времени вы можете восстановить свою учетную запись, войдя в систему еще раз.';

  @override
  String get confirmAndDeleteAccount => 'Подтверждать';

  @override
  String get accountDeleted => 'Аккаунт удален';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Я еду в $destination из $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return 'Имя моего водителя $firstName $lastName, номер мобильного телефона $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return 'Имя гонщика со мной $firstName $lastName, номер мобильного телефона $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return 'Поездка началась $startTime, и я ожидаю, что поездка займет примерно $duration минуты.';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'Я ожидаю, что поездка займет примерно $duration минут, как только я сяду в машину водителя.';
  }

  @override
  String get sendSOSMessage => 'ВАЖНО: Используйте эту функцию только в случае крайней необходимости. Мы свяжемся с властями от вашего имени.';

  @override
  String get confirmAndSendSOS => 'Подтверждать';

  @override
  String get sosSentSuccessfully => 'SOS отправлен успешно';

  @override
  String get topUpSuccess => 'Кошелек успешно пополнен';

  @override
  String get cancelNotAllowed => 'Отмена уже начавшейся поездки невозможна.';

  @override
  String get error => 'Ошибка';

  @override
  String get connectionError => 'Ошибка подключения';

  @override
  String get serverError => 'Ошибка сервера';

  @override
  String get addNewLocation => 'Добавить новое местоположение';

  @override
  String get twoWayTrip => 'Поездка в обе стороны';

  @override
  String get reportSubmitted => 'Отчет отправлен';

  @override
  String get reportSubmittedDescription => 'Ваш отчет успешно отправлен, мы рассмотрим его и предпримем необходимые действия.';

  @override
  String get cardNumber => 'Номер карты';

  @override
  String get cardNumberHint => 'Введите номер карты';

  @override
  String get expiryDate => 'Дата истечения срока действия';

  @override
  String get expiryDateHint => 'ММ/ГГ';

  @override
  String get noFavoriteDrivers => 'Нет любимых водителей';

  @override
  String get noFavoriteDriversDescription => 'Вы можете пометить предпочитаемых водителей как избранных, оценивая их после поездки.';

  @override
  String get pickupLocationNotFound => 'Нам не удалось определить ваше текущее местоположение, используя GPS в качестве точки посадки. Пожалуйста, введите пункт выдачи вручную.';

  @override
  String get dragToSelect => 'Перетащите, чтобы выбрать';

  @override
  String get skip => 'Пропускать';

  @override
  String get openSettings => 'Открыть настройки';

  @override
  String get locationPermission => 'Разрешение на местоположение';

  @override
  String get locationPermissionDeniedForeverMessage => 'Разрешение на определение местоположения требуется для получения заказов вокруг вас, а также для того, чтобы водитель мог отслеживать ваше местоположение. Вы не можете получать заказы без этого разрешения, и мы обращаем внимание на ваше текущее местоположение. Вы можете изменить это разрешение в настройках телефона.';

  @override
  String get allow => 'Позволять';

  @override
  String get driverOnlineTitle => 'В поисках поездки';

  @override
  String get driverOfflineTitle => 'Подключитесь к Интернету, чтобы начать получать запросы';

  @override
  String get payInCash => 'Наличный расчет';

  @override
  String get payInCashDescription => 'Пожалуйста, продолжите оплату наличными водителю. Водитель подтвердит оплату после получения.';

  @override
  String get addToFavoriteDrivers => 'Добавить в избранные драйверы';

  @override
  String get slideToConfirmArrival => 'Слайд для подтверждения прибытия';

  @override
  String get slideToConfirmPickup => 'Слайд для подтверждения получения';

  @override
  String get slideToConfirmDropoff => 'Слайд, чтобы подтвердить высадку';

  @override
  String get noticePickingUpRiderIn => 'Забираем гонщика через:';

  @override
  String get noticeRiderNotified => 'Водитель получил уведомление. Возьмите его и начните поездку.';
}
