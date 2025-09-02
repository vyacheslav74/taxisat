import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Korean (`ko`).
class SKo extends S {
  SKo([String locale = 'ko']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return '저작권 © $company, 모든 권리 보유.';
  }

  @override
  String get welcomeTitle => '앱에 오신 것을 환영합니다';

  @override
  String get today => '오늘';

  @override
  String get yesterday => '어제';

  @override
  String get settings => '설정';

  @override
  String get about => '에 대한';

  @override
  String get profileInfo => '프로필 정보';

  @override
  String get language => '언어';

  @override
  String get firstName => '이름';

  @override
  String get lastName => '성';

  @override
  String get mobileNumber => '휴대폰 번호';

  @override
  String get edit => '편집하다';

  @override
  String get enterCode => '코드를 입력';

  @override
  String get editProfile => '프로필 수정';

  @override
  String get bankTransfer => '은행 송금';

  @override
  String get gift => '선물';

  @override
  String get correction => '보정';

  @override
  String get inappPayment => '인앱 결제';

  @override
  String get orderFee => '주문 수수료';

  @override
  String get parkingFee => '주차 요금';

  @override
  String get cancellationFee => '취소 요금';

  @override
  String get withdraw => '철회하다';

  @override
  String get walletTransactions => '지갑 거래';

  @override
  String get addCard => '카드 추가';

  @override
  String get visa => '비자';

  @override
  String get mastercard => '마스터 카드';

  @override
  String get addBalance => '잔액 추가';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString분',
      one: '$minutesString분',
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
      other: '$hoursString 시간',
      one: '$hoursString 시간',
      zero: 'Zero hours',
    );
    return '기간: $_temp0';
  }

  @override
  String get timePastDue => '연체';

  @override
  String get justNow => '방금';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString 남';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '${distanceString}km';
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
  String get welcomeSubtitle => '귀하의 편안함을 위해 설계된 택시 서비스는 귀하가 좋아하는 운전자와 함께 여행하고 선호하는 차량 서비스를 선택합니다';

  @override
  String get onboardingRewardTitle => '보상을 받다!';

  @override
  String get onboardingRewardSubtitle => '친구 추천, 여행 완료 등을 통해 추가 보너스를 받으세요...';

  @override
  String get selectLanguage => '언어 선택';

  @override
  String get searchForLanguage => '언어 검색';

  @override
  String get enterPhoneNumber => '전화번호 입력';

  @override
  String get actionContinue => '계속하다';

  @override
  String get whereIsYourDestination => '목적지는 어디입니까?';

  @override
  String get whereAreYouGoing => '어디 가세요?';

  @override
  String get selectDestinations => '귀하의 경로';

  @override
  String get pickupPoint => '픽업 지점';

  @override
  String get enterPickupPoint => '픽업 장소를 입력하세요';

  @override
  String get dropoffPoint => '하차 지점';

  @override
  String get enterDropoffPoint => '하차 지점 입력';

  @override
  String get stopPoint => '정지 지점';

  @override
  String get enterStopPoint => '중지 지점을 입력하세요.';

  @override
  String get confirm => '확인하다';

  @override
  String get confirmDropoff => '하차 확인';

  @override
  String get confirmPickup => '픽업 확인';

  @override
  String get enterAtLeast3Characters => '3자 이상 입력하세요.';

  @override
  String get noResults => '결과 없음';

  @override
  String get bookNow => '지금 예약';

  @override
  String get cash => '현금';

  @override
  String get online => '온라인';

  @override
  String get offline => '오프라인';

  @override
  String get onTrip => '여행 중';

  @override
  String get confirmPay => '확인하다';

  @override
  String get cancel => '취소';

  @override
  String get apply => '적용하다';

  @override
  String get enterCouponCode => '쿠폰 코드를 입력하세요';

  @override
  String get reserveRide => '탑승 예약';

  @override
  String get reserveRideMessage => '차량을 예약하려는 정확한 날짜와 시간을 선택하세요.';

  @override
  String get reserveRideMessageSuccess => '차량 예약이 성공적으로 완료되었습니다. \'예정된 탑승\' 섹션에서 예약된 탑승을 확인할 수 있습니다.';

  @override
  String get cancelReservation => '예약 취소';

  @override
  String get confirmResrve => '확인하다';

  @override
  String get enterCouponDescription => '가격에 적용할 쿠폰 코드를 입력하세요.';

  @override
  String get enterCoupon => '쿠폰 입력';

  @override
  String get couponApplied => '쿠폰이 적용되었습니다';

  @override
  String get couponAppliedDescription => '탑승 요금에 쿠폰이 적용되었습니다.';

  @override
  String get done => '완료!';

  @override
  String get ridePreferences => '탑승 환경 설정';

  @override
  String get noWaitTime => '대기 시간 없음';

  @override
  String minutesRange(String minutes) {
    return '$minutes 분';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds 초';
  }

  @override
  String get rideRequested => '탑승 요청됨';

  @override
  String get searchingForAnOnlineDriver => '온라인 드라이버 검색 중...';

  @override
  String get cancelRide => '탑승 취소';

  @override
  String get rideSafety => '탑승 안전';

  @override
  String get shareTripInformation => '여행정보 공유';

  @override
  String get shareTripInformationDescription => '여행 정보를 친구와 공유할 수 있습니다';

  @override
  String get sos => '위급 신호';

  @override
  String get sosDescription => '당국에 긴급 상황을 알립니다.';

  @override
  String get reportAnIssue => '문제 신고';

  @override
  String get reportAnIssueMidTripDescription => '여행 중 안전 문제 공유';

  @override
  String get rideOptions => '탑승 옵션';

  @override
  String get goBackToRide => '다시 타고 가세요';

  @override
  String get waitTime => '기다리는 시간';

  @override
  String get couponCode => '쿠폰 코드';

  @override
  String get giftCardCode => '기프트 카드 코드';

  @override
  String get nicePoints => '좋은 점';

  @override
  String get negativePoints => '부정적인 점';

  @override
  String get reviewCommentBoxHint => '의견을 추가하다...';

  @override
  String get howWasYourTrip => '여행은 어땠나요?';

  @override
  String oneStarReviewTitle(String name) {
    return '$name와 함께하는 끔찍한 여행';
  }

  @override
  String twoStarReviewTitle(String name) {
    return '$name와의 나쁜 여행';
  }

  @override
  String threeStarReviewTitle(String name) {
    return '$name와의 평균 여행';
  }

  @override
  String fourStarReviewTitle(String name) {
    return '$name와 함께하는 즐거운 여행';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return '$name와 함께하는 멋진 여행';
  }

  @override
  String get submitFeedback => '피드백 제출';

  @override
  String get typeAMessage => '메시지를 입력하세요';

  @override
  String get findAnotherRide => '다른 차량 찾기';

  @override
  String get next => '다음';

  @override
  String get searchForDropoffLocation => '하차 장소 검색';

  @override
  String get searchForPickupLocation => '픽업 장소 검색';

  @override
  String get placeConfirmDialogPlaceholder => '하차 장소는 어디인가요?';

  @override
  String get noAnnouncements => '공지 없음';

  @override
  String get announcements => '공지사항';

  @override
  String reviewsCount(int count) {
    return '($count 리뷰)';
  }

  @override
  String get tripDetails => '여행 세부정보';

  @override
  String get rideDetails => '탑승 세부정보';

  @override
  String get orderARide => '차량 서비스를 주문하세요';

  @override
  String get noRidesYet => '아직 차량 서비스가 없습니다!';

  @override
  String get issueSubjectPlaceholder => '문제의 제목을 입력하세요';

  @override
  String get issueContentPlaceholder => '문제에 대한 설명을 입력하세요.';

  @override
  String get reportThisIssue => '이 문제 신고';

  @override
  String get fieldIsRequired => '필드는 필수입니다';

  @override
  String get ok => '좋아요';

  @override
  String get favoriteLocations => '즐겨찾는 위치';

  @override
  String get favoriteLocationsSubtitle => '더 쉽게 액세스할 수 있도록 즐겨찾는 위치를 저장하세요.';

  @override
  String get createAFavoriteLocation => '즐겨찾는 위치 만들기';

  @override
  String get addressTitleLabel => '주소 제목';

  @override
  String get clickToSetLocation => '위치를 설정하려면 클릭하세요.';

  @override
  String get whereIsYourNewFavoriteLocation => '당신이 새롭게 좋아하는 장소는 어디인가요?';

  @override
  String get locateFavoriteLocationDescription => '정확한 위치를 고정하려면 아래 검색창이나 지도를 사용하세요.';

  @override
  String get searchLocation => '위치 검색';

  @override
  String get saveChanges => '변경 사항을 저장하다';

  @override
  String get rideHistory => '라이딩 이력';

  @override
  String get scheduledRides => '예정된 탑승';

  @override
  String get keepTheOrder => '순서를 유지하세요';

  @override
  String get cancelTheRide => '탑승 취소';

  @override
  String get walletBalance => '지갑 잔액';

  @override
  String get activities => '활동';

  @override
  String get pleaseEnterGiftCardCode => '기프트 카드 코드를 입력하세요.';

  @override
  String get redeem => '상환하다';

  @override
  String get enterGiftCardCode => '기프트 카드 코드 입력';

  @override
  String get redeemGiftCard => '기프트 카드 사용';

  @override
  String get redeemGiftCardDescription => '기프트 카드 코드를 입력하여 사용하세요.';

  @override
  String get redeemSuccessTitle => '기프트 카드가 사용되었습니다!';

  @override
  String redeemSuccessDescription(String amount) {
    return '$amount 기프트카드를 성공적으로 사용하셨습니다.';
  }

  @override
  String get addCredit => '크레딧 추가';

  @override
  String get payNow => '지금 지불하세요';

  @override
  String get addCreditToWallet => '지갑에 크레딧 추가';

  @override
  String get pleaseSelectAmount => '금액을 선택해주세요';

  @override
  String get enterAmount => '금액을 입력하세요';

  @override
  String get selectAmount => '금액 선택:';

  @override
  String get wallet => '지갑';

  @override
  String get totalRides => '총 탑승 횟수';

  @override
  String get appSettings => '앱 설정';

  @override
  String get mapSettings => '지도 설정';

  @override
  String get lanugageSettings => '언어 설정';

  @override
  String get paymentMethods => '결제 방법';

  @override
  String get selectCards => '카드 선택';

  @override
  String get selectCardsDescription => '청구서의 결제 방법 목록에 표시하려는 카드 번호를 선택할 수 있습니다.';

  @override
  String get delete => '삭제';

  @override
  String get nameOnCard => '카드 이름';

  @override
  String get profile => '프로필';

  @override
  String get scheduledRide => '예정된 탑승';

  @override
  String get addPaymentMethod => '결제 수단 추가';

  @override
  String get addPaymentMethodDescription => '계정에 새 결제 수단을 추가하세요.';

  @override
  String get saveCard => '카드 저장';

  @override
  String get selectDialCode => '다이얼 코드 선택';

  @override
  String get searchCountryName => '국가 이름 검색';

  @override
  String get preferences => '환경설정:';

  @override
  String get onboardingDescription => '잠시 후 계정을 등록하고 편안한 라이딩을 즐기세요';

  @override
  String get signInSignUp => '로그인 가입';

  @override
  String get enterOtp => 'OTP 입력';

  @override
  String get enterPassword => '암호를 입력';

  @override
  String get enterPasswordDescription => '계속하려면 비밀번호를 입력하세요';

  @override
  String get setPassword => '암호를 설정하세요';

  @override
  String get password => '비밀번호';

  @override
  String get passwordRuleDescription => '다음 중 최소한 두 가지를 포함하십시오.';

  @override
  String get passwordRuleLength => '9~64자 사이';

  @override
  String get passwordRuleUpperCase => '대문자';

  @override
  String get passwordRuleLowerCase => '소문자';

  @override
  String get passwordRuleNumber => '숫자';

  @override
  String get passwordRuleSpecialCharacter => '특수 문자';

  @override
  String get contactDetails => '연락처 정보';

  @override
  String get vehicleDetails => '차량 세부정보';

  @override
  String get payoutInformation => '지급 정보';

  @override
  String get documents => '서류';

  @override
  String get accessDenied => '접근 불가';

  @override
  String get success => '성공';

  @override
  String get skipForNow => '일단은 스킵';

  @override
  String get sendOtpDescription => '귀하의 전화번호로 인증번호가 발송되었습니다.';

  @override
  String get resendOtp => '코드 재전송';

  @override
  String get useOtpInstead => '대신 OTP를 사용하세요';

  @override
  String get home => '집';

  @override
  String get logout => '로그 아웃';

  @override
  String get driverLicenseNumber => '운전면허증 번호';

  @override
  String get email => '이메일';

  @override
  String get address => '주소';

  @override
  String get gender => '성별';

  @override
  String get genderMale => '남성';

  @override
  String get genderFemale => '여성';

  @override
  String get genderUnknown => '중립 / 알 수 없음';

  @override
  String get vehiclePlateNumber => '차량번호';

  @override
  String get vehicleColor => '차량 색상';

  @override
  String get vehicleModelAndMake => '차량 모델 ';

  @override
  String get vehicleProductionYear => '차량 생산 연도';

  @override
  String get bankName => '은행 이름';

  @override
  String get bankRoutingNumber => '은행 라우팅 번호';

  @override
  String get bankAccountNumber => '은행 계좌 번호';

  @override
  String get bankSwift => '스위프트 코드';

  @override
  String get uploadImage => '이미지 업로드';

  @override
  String get yourBalance => '귀하의 잔액';

  @override
  String get rideCancellation => '탑승 취소';

  @override
  String get cancelRideMessage => '정말로 차량 서비스를 취소하시겠습니까?';

  @override
  String get cancelRideSuccess => '차량 서비스가 성공적으로 취소되었습니다';

  @override
  String get confirmAndCancelRide => '확인하다 ';

  @override
  String get selectPaymentMethod => '결제 수단 선택';

  @override
  String get rideFeePaid => '탑승 요금이 지불되었습니다.';

  @override
  String get rideFeeUnpaid => '차량 요금이 아직 지불되지 않았습니다.';

  @override
  String get total => '총';

  @override
  String get totalPrice => '총 가격';

  @override
  String get addCustomCredit => '맞춤 편집 추가';

  @override
  String get serviceFee => '서비스 요금';

  @override
  String get serviceOptionFee => '서비스 옵션 수수료';

  @override
  String get couponDiscount => '쿠폰할인';

  @override
  String get walletCreit => '월렛 크레딧';

  @override
  String get custom => '관습';

  @override
  String get payment => '지불';

  @override
  String get cashPayment => '현금 결제';

  @override
  String cashPaymentDescription(String amount) {
    return '$amount 수신 확인하셨나요?';
  }

  @override
  String get cashPaymentReceived => '현금결제 접수됨';

  @override
  String get confirmAndEndTrip => '확인하다';

  @override
  String get earnings => '수입';

  @override
  String get acceptOrder => '주문 수락';

  @override
  String get canceled => '취소 된';

  @override
  String get unknown => '알려지지 않은';

  @override
  String get commission => '수수료';

  @override
  String get selectProfileImage => '프로필 이미지 선택';

  @override
  String get chooseAvatarDescription => '또는 아래 목록에서 아바타를 선택하세요.';

  @override
  String get fullName => '이름';

  @override
  String get favoriteDrivers => '좋아하는 드라이버';

  @override
  String get distanceTraveled => '이동 거리';

  @override
  String get rating => '평가';

  @override
  String get map => '지도';

  @override
  String get income => '소득';

  @override
  String get timeSpent => '소요 시간';

  @override
  String get daily => '일일';

  @override
  String get monthly => '월간 간행물';

  @override
  String get noRecordsFoundEarnings => '이 필터에 대한 여행 기록을 찾을 수 없습니다.';

  @override
  String get feedbacksSummaryEmptyStateHeading => '아직 피드백이 없습니다';

  @override
  String get feedbacksSummaryEmptyStateTitle => '아직 표시할 피드백이 충분하지 않습니다.';

  @override
  String get feedbacksSummary => '피드백 요약';

  @override
  String get feedbacksGoodTitle => '훌륭해요!';

  @override
  String get feedbacksGoodSubtitle => '현재까지 평가가 좋아 보입니다.';

  @override
  String get feedbacksBadTitle => '평균';

  @override
  String get feedbacksBadSubtitle => '몇 가지 개선 사항을 사용할 수 있습니다';

  @override
  String get feedbacksGoodPointsTitle => '당신의 좋은 점:';

  @override
  String get feedbacksbadPointsTitle => '개선할 수 있는 몇 가지 사항은 다음과 같습니다.';

  @override
  String get feedbacksReviewsTitle => '일부 이전 리뷰';

  @override
  String get payoutMethods => '지급 방법';

  @override
  String get notice => '알아채다:';

  @override
  String get payoutNoticeTitle => '일주일에 두 번씩 관리자가 자동으로 지급해 드립니다.';

  @override
  String get addPayoutMethod => '대금 수령 방법 추가';

  @override
  String get navigate => '탐색';

  @override
  String get noPayoutMethods => '지불 방법 없음';

  @override
  String get name => '이름';

  @override
  String get nameHint => '이름을 입력하시오';

  @override
  String get bankNameHint => '은행명을 입력하세요';

  @override
  String get branchName => '지점명';

  @override
  String get branchNameHint => '지점명을 입력하세요';

  @override
  String get accountHolderName => '계좌 소유자 이름';

  @override
  String get routingNumber => '라우팅 번호';

  @override
  String get routingNumberHint => '라우팅 번호를 입력하세요';

  @override
  String get accountNumber => '계좌 번호';

  @override
  String get accountNumberHint => '계좌번호를 입력하세요';

  @override
  String get addressHint => '주소를 입력하세요';

  @override
  String get dateOfBith => '생일';

  @override
  String get yearHint => '년도';

  @override
  String get monthHint => '월';

  @override
  String get dayHint => '낮';

  @override
  String get city => '도시';

  @override
  String get cityHint => '도시를 입력하세요';

  @override
  String get state => '상태';

  @override
  String get stateHint => '상태 입력';

  @override
  String get zipCode => '우편 번호';

  @override
  String get zipCodeHint => '우편 번호를 입력하세요';

  @override
  String get day => '낮';

  @override
  String get month => '월';

  @override
  String get year => '년도';

  @override
  String get noActivitiesYet => '아직 활동이 없습니다.';

  @override
  String get headingToDestination => '목적지를 향해';

  @override
  String get driverArrivedNotice => '운전기사가 당신을 기다리고 있습니다';

  @override
  String get driverShouldAriveInNotice => '운전기사가 다음 장소에 도착할 예정입니다.';

  @override
  String get driverShouldHaveArrivedNotice => '지금 당장 운전기사가 도착할 거예요';

  @override
  String get deleteAccount => '계정 삭제';

  @override
  String get deleteAccountNotice => '정말로 계정을 삭제하시겠습니까? 30일 후에는 귀하의 계정이 영구적으로 삭제됩니다. 이 기간 동안 다시 로그인하여 계정을 복원할 수 있습니다.';

  @override
  String get confirmAndDeleteAccount => '확인하다 ';

  @override
  String get accountDeleted => '계정이 삭제되었습니다';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return '$pickup에서 $destination로 가는 중이에요.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' 내 운전자 이름은 $firstName $lastName이고, 휴대폰 번호는 $mobileNumber입니다.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' 저와 함께 오신 라이더 이름은 $firstName $lastName, 휴대폰 번호는 $mobileNumber 입니다.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' $startTime에 여행이 시작되었으며 약 $duration분 정도 소요될 것으로 예상됩니다.';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' 운전기사의 차에 타면 약 $duration분 정도 소요될 것으로 예상됩니다.';
  }

  @override
  String get sendSOSMessage => '중요: 이 기능은 긴급 상황에만 사용하세요. 귀하를 대신하여 당국에 연락하겠습니다.';

  @override
  String get confirmAndSendSOS => '확인하다 ';

  @override
  String get sosSentSuccessfully => 'SOS가 성공적으로 전송되었습니다';

  @override
  String get topUpSuccess => '지갑이 성공적으로 충전되었습니다';

  @override
  String get cancelNotAllowed => '이미 시작된 라이딩은 취소할 수 없습니다.';

  @override
  String get error => '오류';

  @override
  String get connectionError => '연결 오류';

  @override
  String get serverError => '서버 오류';

  @override
  String get addNewLocation => '새 위치 추가';

  @override
  String get twoWayTrip => '양방향 여행';

  @override
  String get reportSubmitted => '보고서가 제출되었습니다.';

  @override
  String get reportSubmittedDescription => '귀하의 신고가 성공적으로 제출되었습니다. 저희는 이를 검토하고 필요한 조치를 취하겠습니다.';

  @override
  String get cardNumber => '카드 번호';

  @override
  String get cardNumberHint => '카드번호 입력';

  @override
  String get expiryDate => '만료일';

  @override
  String get expiryDateHint => '월/년';

  @override
  String get noFavoriteDrivers => '즐겨찾는 드라이버가 없습니다.';

  @override
  String get noFavoriteDriversDescription => '여행 후 선호하는 운전자를 평가할 때 즐겨찾기로 표시할 수 있습니다.';

  @override
  String get pickupLocationNotFound => 'GPS를 픽업 지점으로 사용하여 현재 위치를 확인할 수 없습니다. 픽업 장소를 수동으로 입력해주세요.';

  @override
  String get dragToSelect => '드래그하여 선택';

  @override
  String get skip => '건너뛰다';

  @override
  String get openSettings => '설정 열기';

  @override
  String get locationPermission => '위치 권한';

  @override
  String get locationPermissionDeniedForeverMessage => '위치 권한은 주변에서 주문을 받고 라이더가 위치를 추적하는 데 필요합니다. 이 허가 없이는 주문을 받을 수 없으며 당사는 귀하의 현재 위치를 감시하고 있습니다. 휴대폰 설정에서 이 권한을 변경할 수 있습니다.';

  @override
  String get allow => '허용하다';

  @override
  String get driverOnlineTitle => '차량 검색 중';

  @override
  String get driverOfflineTitle => '요청을 받으려면 온라인에 접속하세요.';

  @override
  String get payInCash => '현금 결제';

  @override
  String get payInCashDescription => '운전기사에게 현금결제를 진행해주세요. 운전기사는 결제가 완료되면 확인합니다.';

  @override
  String get addToFavoriteDrivers => '즐겨찾는 드라이버에 추가';

  @override
  String get slideToConfirmArrival => '슬라이드하여 도착 확인';

  @override
  String get slideToConfirmPickup => '슬라이드하여 픽업 확인';

  @override
  String get slideToConfirmDropoff => '슬라이드하여 하차 확인';

  @override
  String get noticePickingUpRiderIn => '승객 픽업 장소:';

  @override
  String get noticeRiderNotified => '라이더에게 알림이 전달되었습니다. 라이더를 픽업하고 라이드를 시작하세요.';
}
