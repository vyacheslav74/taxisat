import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Vietnamese (`vi`).
class SVi extends S {
  SVi([String locale = 'vi']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Bản quyền © $company, Mọi quyền được bảo lưu.';
  }

  @override
  String get welcomeTitle => 'Chào mừng bạn đến với ứng dụng';

  @override
  String get today => 'Hôm nay';

  @override
  String get yesterday => 'Hôm qua';

  @override
  String get settings => 'Cài đặt';

  @override
  String get about => 'Về';

  @override
  String get profileInfo => 'Thông tin hồ sơ';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get firstName => 'Tên đầu tiên';

  @override
  String get lastName => 'Họ';

  @override
  String get mobileNumber => 'Số điện thoại';

  @override
  String get edit => 'Biên tập';

  @override
  String get enterCode => 'Nhập mã';

  @override
  String get editProfile => 'Chỉnh sửa hồ sơ';

  @override
  String get bankTransfer => 'Chuyển khoản ngân hàng';

  @override
  String get gift => 'Quà';

  @override
  String get correction => 'Điều chỉnh';

  @override
  String get inappPayment => 'Thanh toán trong ứng dụng';

  @override
  String get orderFee => 'Phí đặt hàng';

  @override
  String get parkingFee => 'Phí gửi xe';

  @override
  String get cancellationFee => 'Phí hủy';

  @override
  String get withdraw => 'Rút';

  @override
  String get walletTransactions => 'Giao dịch ví';

  @override
  String get addCard => 'Thêm thẻ';

  @override
  String get visa => 'Hộ chiếu';

  @override
  String get mastercard => 'Mastercard';

  @override
  String get addBalance => 'Thêm số dư';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Phút',
      one: '$minutesString Phút',
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
      other: '$hoursString Giờ',
      one: '$hoursString Giờ',
      zero: 'Zero hours',
    );
    return 'Thời lượng: $_temp0';
  }

  @override
  String get timePastDue => 'Quá hạn';

  @override
  String get justNow => 'Ngay bây giờ';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString phút';
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
  String get welcomeSubtitle => 'Dịch vụ taxi được thiết kế để mang lại sự thoải mái cho bạn có Chuyến đi với tài xế yêu thích của bạn và chọn tùy chọn đi xe của bạn';

  @override
  String get onboardingRewardTitle => 'Nhận khen thưởng!';

  @override
  String get onboardingRewardSubtitle => 'Nhận thêm tiền thưởng khi giới thiệu bạn bè, hoàn thành chuyến đi và nhiều hơn thế nữa...';

  @override
  String get selectLanguage => 'Chọn ngôn ngữ';

  @override
  String get searchForLanguage => 'Tìm kiếm ngôn ngữ';

  @override
  String get enterPhoneNumber => 'Nhập số điện thoại';

  @override
  String get actionContinue => 'Tiếp tục';

  @override
  String get whereIsYourDestination => 'Điểm đến của bạn là ở đâu?';

  @override
  String get whereAreYouGoing => 'Bạn đi đâu?';

  @override
  String get selectDestinations => 'Tuyến đường của bạn';

  @override
  String get pickupPoint => 'Điểm đón';

  @override
  String get enterPickupPoint => 'Nhập điểm đón';

  @override
  String get dropoffPoint => 'Điểm trả khách';

  @override
  String get enterDropoffPoint => 'Nhập điểm trả khách';

  @override
  String get stopPoint => 'Điểm dừng';

  @override
  String get enterStopPoint => 'Nhập điểm dừng';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get confirmDropoff => 'Xác nhận trả khách';

  @override
  String get confirmPickup => 'Xác nhận đón';

  @override
  String get enterAtLeast3Characters => 'Nhập ít nhất 3 ký tự';

  @override
  String get noResults => 'Ko có kết quả';

  @override
  String get bookNow => 'Đặt bây giờ';

  @override
  String get cash => 'Tiền mặt';

  @override
  String get online => 'Trực tuyến';

  @override
  String get offline => 'Ngoại tuyến';

  @override
  String get onTrip => 'trong chuyến đi';

  @override
  String get confirmPay => 'Xác nhận';

  @override
  String get cancel => 'Hủy bỏ';

  @override
  String get apply => 'Áp dụng';

  @override
  String get enterCouponCode => 'Nhập mã phiếu giảm giá';

  @override
  String get reserveRide => 'Đặt chuyến đi';

  @override
  String get reserveRideMessage => 'Chọn ngày và giờ chính xác mà bạn muốn đặt chỗ cho chuyến đi của mình';

  @override
  String get reserveRideMessageSuccess => 'Chuyến đi của bạn đã được đặt thành công. Bạn có thể xem các chuyến đi đã đặt trước của mình trong phần \'Các chuyến đi đã lên lịch\'.';

  @override
  String get cancelReservation => 'Hủy đặt phòng';

  @override
  String get confirmResrve => 'Xác nhận';

  @override
  String get enterCouponDescription => 'Chèn mã phiếu giảm giá của bạn để được áp dụng trên giá';

  @override
  String get enterCoupon => 'Nhập phiếu giảm giá';

  @override
  String get couponApplied => 'Đã áp dụng phiếu giảm giá';

  @override
  String get couponAppliedDescription => 'Phiếu giảm giá đã được áp dụng cho giá vé chuyến đi của bạn';

  @override
  String get done => 'Xong!';

  @override
  String get ridePreferences => 'Tùy chọn đi xe';

  @override
  String get noWaitTime => 'Không có thời gian chờ đợi';

  @override
  String minutesRange(String minutes) {
    return '$minutes phút';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds giây';
  }

  @override
  String get rideRequested => 'Yêu cầu đi xe';

  @override
  String get searchingForAnOnlineDriver => 'Tìm kiếm trình điều khiển trực tuyến...';

  @override
  String get cancelRide => 'Hủy chuyến đi';

  @override
  String get rideSafety => 'An toàn khi đi xe';

  @override
  String get shareTripInformation => 'Chia sẻ thông tin chuyến đi';

  @override
  String get shareTripInformationDescription => 'Bạn có thể chia sẻ thông tin chuyến đi của mình với bạn bè';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Thông báo cho cơ quan chức năng về trường hợp khẩn cấp';

  @override
  String get reportAnIssue => 'Báo cáo một vấn đề';

  @override
  String get reportAnIssueMidTripDescription => 'Chia sẻ vấn đề an toàn trong chuyến đi';

  @override
  String get rideOptions => 'Tùy chọn đi xe';

  @override
  String get goBackToRide => 'Quay trở lại để đi xe';

  @override
  String get waitTime => 'Thời gian chờ đợi';

  @override
  String get couponCode => 'Mã giảm giá';

  @override
  String get giftCardCode => 'Mã thẻ quà tặng';

  @override
  String get nicePoints => 'Điểm đẹp';

  @override
  String get negativePoints => 'Điểm tiêu cực';

  @override
  String get reviewCommentBoxHint => 'Thêm một bình luận...';

  @override
  String get howWasYourTrip => 'Chuyến đi của bạn như thế nào?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Chuyến đi khủng khiếp với $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Chuyến đi tồi tệ với $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Chuyến đi trung bình với $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Chuyến đi vui vẻ với $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Chuyến đi tuyệt vời với $name';
  }

  @override
  String get submitFeedback => 'Gửi phản hồi';

  @override
  String get typeAMessage => 'Gõ một tin nhắn';

  @override
  String get findAnotherRide => 'Tìm chuyến xe khác';

  @override
  String get next => 'Kế tiếp';

  @override
  String get searchForDropoffLocation => 'Tìm kiếm địa điểm trả khách';

  @override
  String get searchForPickupLocation => 'Tìm kiếm địa điểm đón';

  @override
  String get placeConfirmDialogPlaceholder => 'Địa điểm trả khách của bạn ở đâu?';

  @override
  String get noAnnouncements => 'Không có thông báo';

  @override
  String get announcements => 'Thông báo';

  @override
  String reviewsCount(int count) {
    return '($count đánh giá)';
  }

  @override
  String get tripDetails => 'Chi tiết chuyến đi';

  @override
  String get rideDetails => 'Chi tiết chuyến đi';

  @override
  String get orderARide => 'Đặt một chuyến đi';

  @override
  String get noRidesYet => 'Chưa có chuyến đi nào!';

  @override
  String get issueSubjectPlaceholder => 'Nhập chủ đề của vấn đề';

  @override
  String get issueContentPlaceholder => 'Nhập mô tả vấn đề';

  @override
  String get reportThisIssue => 'Báo cáo vấn đề này';

  @override
  String get fieldIsRequired => 'Lĩnh vực được yêu cầu';

  @override
  String get ok => 'ĐƯỢC RỒI';

  @override
  String get favoriteLocations => 'Địa điểm yêu thích';

  @override
  String get favoriteLocationsSubtitle => 'Lưu các vị trí yêu thích của bạn để truy cập dễ dàng hơn';

  @override
  String get createAFavoriteLocation => 'Tạo địa điểm yêu thích';

  @override
  String get addressTitleLabel => 'Tiêu đề địa chỉ';

  @override
  String get clickToSetLocation => 'Bấm để đặt vị trí';

  @override
  String get whereIsYourNewFavoriteLocation => 'Địa điểm yêu thích mới của bạn là ở đâu?';

  @override
  String get locateFavoriteLocationDescription => 'Sử dụng hộp tìm kiếm bên dưới hoặc bản đồ để ghim vị trí chính xác';

  @override
  String get searchLocation => 'Tìm kiếm vị trí';

  @override
  String get saveChanges => 'Lưu thay đổi';

  @override
  String get rideHistory => 'Lịch sử đi xe';

  @override
  String get scheduledRides => 'Chuyến đi theo lịch trình';

  @override
  String get keepTheOrder => 'Giữ trật tự';

  @override
  String get cancelTheRide => 'Hủy chuyến đi';

  @override
  String get walletBalance => 'Số dư trên ví';

  @override
  String get activities => 'Các hoạt động';

  @override
  String get pleaseEnterGiftCardCode => 'Vui lòng nhập mã thẻ quà tặng';

  @override
  String get redeem => 'Chuộc lại';

  @override
  String get enterGiftCardCode => 'Nhập mã thẻ quà tặng';

  @override
  String get redeemGiftCard => 'Đổi thẻ quà tặng';

  @override
  String get redeemGiftCardDescription => 'Nhập mã thẻ quà tặng của bạn để đổi quà.';

  @override
  String get redeemSuccessTitle => 'Đã đổi thẻ quà tặng!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Bạn đã đổi thành công $amount thẻ quà tặng.';
  }

  @override
  String get addCredit => 'Thêm tín dụng';

  @override
  String get payNow => 'Thanh toán ngay';

  @override
  String get addCreditToWallet => 'Thêm tín dụng vào ví';

  @override
  String get pleaseSelectAmount => 'Vui lòng chọn số tiền';

  @override
  String get enterAmount => 'Nhập số tiền';

  @override
  String get selectAmount => 'Chọn số tiền:';

  @override
  String get wallet => 'Cái ví';

  @override
  String get totalRides => 'Tổng số chuyến đi';

  @override
  String get appSettings => 'Cài đặt ứng dụng';

  @override
  String get mapSettings => 'Cài đặt bản đồ';

  @override
  String get lanugageSettings => 'Cài đặt ngôn ngữ';

  @override
  String get paymentMethods => 'Phương thức thanh toán';

  @override
  String get selectCards => 'Chọn thẻ';

  @override
  String get selectCardsDescription => 'Bạn có thể chọn số thẻ bạn muốn hiển thị trong danh sách phương thức thanh toán trên hóa đơn.';

  @override
  String get delete => 'Xóa bỏ';

  @override
  String get nameOnCard => 'tên trên thẻ';

  @override
  String get profile => 'Hồ sơ';

  @override
  String get scheduledRide => 'Chuyến đi theo lịch trình';

  @override
  String get addPaymentMethod => 'Thêm phương thức thanh toán';

  @override
  String get addPaymentMethodDescription => 'Thêm phương thức thanh toán mới vào tài khoản của bạn';

  @override
  String get saveCard => 'Thẻ tiết kiệm';

  @override
  String get selectDialCode => 'Chọn mã quay số';

  @override
  String get searchCountryName => 'Tìm kiếm tên quốc gia';

  @override
  String get preferences => 'Sở thích:';

  @override
  String get onboardingDescription => 'Chỉ còn vài phút nữa là bạn có thể đăng ký tài khoản và tận hưởng những chuyến đi thoải mái';

  @override
  String get signInSignUp => 'Đăng nhập Đăng ký';

  @override
  String get enterOtp => 'Nhập OTP';

  @override
  String get enterPassword => 'Nhập mật khẩu';

  @override
  String get enterPasswordDescription => 'Vui lòng nhập mật khẩu của bạn để tiếp tục';

  @override
  String get setPassword => 'Đặt mật khẩu';

  @override
  String get password => 'Mật khẩu';

  @override
  String get passwordRuleDescription => 'Bao gồm ít nhất hai trong số những điều sau đây:';

  @override
  String get passwordRuleLength => 'Từ 9 đến 64 ký tự';

  @override
  String get passwordRuleUpperCase => 'Chữ in hoa';

  @override
  String get passwordRuleLowerCase => 'Chữ viết thường';

  @override
  String get passwordRuleNumber => 'số';

  @override
  String get passwordRuleSpecialCharacter => 'Ký tự đặc biệt';

  @override
  String get contactDetails => 'Chi tiết liên hệ';

  @override
  String get vehicleDetails => 'Chi tiết về xe';

  @override
  String get payoutInformation => 'Thông tin thanh toán';

  @override
  String get documents => 'Các tài liệu';

  @override
  String get accessDenied => 'Truy cập bị từ chối';

  @override
  String get success => 'Thành công';

  @override
  String get skipForNow => 'Bỏ qua bây giờ';

  @override
  String get sendOtpDescription => 'Mã xác minh đã được gửi đến số điện thoại của bạn';

  @override
  String get resendOtp => 'Mã gửi lại';

  @override
  String get useOtpInstead => 'Thay vào đó hãy sử dụng OTP';

  @override
  String get home => 'Trang chủ';

  @override
  String get logout => 'Đăng xuất';

  @override
  String get driverLicenseNumber => 'Số giấy phép lái xe';

  @override
  String get email => 'E-mail';

  @override
  String get address => 'Địa chỉ';

  @override
  String get gender => 'Giới tính';

  @override
  String get genderMale => 'Nam giới';

  @override
  String get genderFemale => 'Nữ giới';

  @override
  String get genderUnknown => 'Trung lập / Không xác định';

  @override
  String get vehiclePlateNumber => 'Biển số xe';

  @override
  String get vehicleColor => 'Màu xe';

  @override
  String get vehicleModelAndMake => 'Mô hình xe ';

  @override
  String get vehicleProductionYear => 'Năm sản xuất xe';

  @override
  String get bankName => 'Tên ngân hàng';

  @override
  String get bankRoutingNumber => 'Số định tuyến ngân hàng';

  @override
  String get bankAccountNumber => 'Số tài khoản ngân hàng';

  @override
  String get bankSwift => 'Mã SWIFT';

  @override
  String get uploadImage => 'Tải hình ảnh lên';

  @override
  String get yourBalance => 'Số dư của bạn';

  @override
  String get rideCancellation => 'Hủy chuyến đi';

  @override
  String get cancelRideMessage => 'Bạn có chắc chắn muốn hủy chuyến đi của mình không?';

  @override
  String get cancelRideSuccess => 'Chuyến đi đã được hủy thành công';

  @override
  String get confirmAndCancelRide => 'Xác nhận ';

  @override
  String get selectPaymentMethod => 'Chọn phương thức thanh toán';

  @override
  String get rideFeePaid => 'Phí đi xe đã được thanh toán';

  @override
  String get rideFeeUnpaid => 'Phí đi xe vẫn chưa được thanh toán';

  @override
  String get total => 'Tổng cộng';

  @override
  String get totalPrice => 'Tổng giá';

  @override
  String get addCustomCredit => 'Thêm chỉnh sửa tùy chỉnh';

  @override
  String get serviceFee => 'Phí dịch vụ';

  @override
  String get serviceOptionFee => 'Phí lựa chọn dịch vụ';

  @override
  String get couponDiscount => 'Phiếu giảm giá';

  @override
  String get walletCreit => 'Tín dụng Ví';

  @override
  String get custom => 'Phong tục';

  @override
  String get payment => 'Sự chi trả';

  @override
  String get cashPayment => 'Thanh toán bằng tiền mặt';

  @override
  String cashPaymentDescription(String amount) {
    return 'Bạn có xác nhận rằng bạn đã nhận được $amount không?';
  }

  @override
  String get cashPaymentReceived => 'Đã nhận được thanh toán tiền mặt';

  @override
  String get confirmAndEndTrip => 'Xác nhận ';

  @override
  String get earnings => 'Thu nhập';

  @override
  String get acceptOrder => 'Chấp nhận đơn hàng';

  @override
  String get canceled => 'Đã hủy';

  @override
  String get unknown => 'không xác định';

  @override
  String get commission => 'Nhiệm vụ';

  @override
  String get selectProfileImage => 'Chọn hình ảnh hồ sơ';

  @override
  String get chooseAvatarDescription => 'Hoặc chọn một hình đại diện từ danh sách dưới đây:';

  @override
  String get fullName => 'Họ và tên';

  @override
  String get favoriteDrivers => 'Trình điều khiển yêu thích';

  @override
  String get distanceTraveled => 'Khoảng cách đi du lịch';

  @override
  String get rating => 'Xếp hạng';

  @override
  String get map => 'Bản đồ';

  @override
  String get income => 'Thu nhập';

  @override
  String get timeSpent => 'Thời gian dành';

  @override
  String get daily => 'Hằng ngày';

  @override
  String get monthly => 'hàng tháng';

  @override
  String get noRecordsFoundEarnings => 'Không tìm thấy bản ghi chuyến đi cho các bộ lọc này';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Chưa có phản hồi nào';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Bạn chưa có đủ phản hồi để hiển thị.';

  @override
  String get feedbacksSummary => 'Tóm tắt phản hồi';

  @override
  String get feedbacksGoodTitle => 'Công việc xuất sắc!';

  @override
  String get feedbacksGoodSubtitle => 'Xếp hạng của bạn cho đến nay có vẻ tốt';

  @override
  String get feedbacksBadTitle => 'Trung bình';

  @override
  String get feedbacksBadSubtitle => 'Bạn có thể sử dụng một số cải tiến';

  @override
  String get feedbacksGoodPointsTitle => 'Một số điểm tốt về bạn:';

  @override
  String get feedbacksbadPointsTitle => 'Một số điểm bạn có thể cải thiện:';

  @override
  String get feedbacksReviewsTitle => 'Một số đánh giá trước đó';

  @override
  String get payoutMethods => 'Phương thức thanh toán';

  @override
  String get notice => 'Để ý:';

  @override
  String get payoutNoticeTitle => 'Bạn sẽ tự động được quản trị viên thanh toán hai lần một tuần.';

  @override
  String get addPayoutMethod => 'Thêm phương thức thanh toán';

  @override
  String get navigate => 'Điều hướng';

  @override
  String get noPayoutMethods => 'Không có phương thức thanh toán';

  @override
  String get name => 'Tên';

  @override
  String get nameHint => 'Nhập tên';

  @override
  String get bankNameHint => 'Nhập tên ngân hàng';

  @override
  String get branchName => 'Tên chi nhánh';

  @override
  String get branchNameHint => 'Nhập tên chi nhánh';

  @override
  String get accountHolderName => 'Tên Chủ Tài khoản';

  @override
  String get routingNumber => 'Số định tuyến';

  @override
  String get routingNumberHint => 'Nhập số định tuyến';

  @override
  String get accountNumber => 'Số tài khoản';

  @override
  String get accountNumberHint => 'Nhập số tài khoản';

  @override
  String get addressHint => 'Nhập địa chỉ';

  @override
  String get dateOfBith => 'Ngày sinh';

  @override
  String get yearHint => 'Năm';

  @override
  String get monthHint => 'Tháng';

  @override
  String get dayHint => 'Ngày';

  @override
  String get city => 'Thành phố';

  @override
  String get cityHint => 'Nhập vào thành phố';

  @override
  String get state => 'Tình trạng';

  @override
  String get stateHint => 'Nhập quốc gia';

  @override
  String get zipCode => 'Mã Bưu Chính';

  @override
  String get zipCodeHint => 'Nhập mã zip';

  @override
  String get day => 'Ngày';

  @override
  String get month => 'Tháng';

  @override
  String get year => 'Năm';

  @override
  String get noActivitiesYet => 'Chưa có hoạt động nào';

  @override
  String get headingToDestination => 'hướng tới đích';

  @override
  String get driverArrivedNotice => 'Tài xế đang đợi bạn';

  @override
  String get driverShouldAriveInNotice => 'Tài xế dự kiến sẽ đến';

  @override
  String get driverShouldHaveArrivedNotice => 'Tài xế sẽ đến bất cứ lúc nào';

  @override
  String get deleteAccount => 'Xóa tài khoản';

  @override
  String get deleteAccountNotice => 'Bạn có chắc rằng bạn muốn xóa tài khoản của bạn? Sau 30 ngày, tài khoản của bạn sẽ bị xóa vĩnh viễn. Trong thời gian này, bạn có thể khôi phục tài khoản của mình bằng cách đăng nhập lại.';

  @override
  String get confirmAndDeleteAccount => 'Xác nhận ';

  @override
  String get accountDeleted => 'Tài khoản đã bị xóa';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Tôi đang trên đường đến $destination từ $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Tên tài xế của tôi là $firstName $lastName, số di động là $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return 'Người lái xe tên mình là $firstName $lastName, số di động là $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Chuyến đi đã bắt đầu vào $startTime và tôi dự kiến chuyến đi sẽ mất khoảng $duration phút';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Tôi dự kiến chuyến đi sẽ mất khoảng $duration phút sau khi tôi lên xe của tài xế.';
  }

  @override
  String get sendSOSMessage => 'QUAN TRỌNG: Vui lòng chỉ sử dụng tính năng này trong trường hợp khẩn cấp. Chúng tôi sẽ liên hệ với cơ quan chức năng thay mặt bạn.';

  @override
  String get confirmAndSendSOS => 'Xác nhận';

  @override
  String get sosSentSuccessfully => 'SOS đã được gửi thành công';

  @override
  String get topUpSuccess => 'Ví đã được nạp tiền thành công';

  @override
  String get cancelNotAllowed => 'Không thể hủy chuyến đi đã bắt đầu.';

  @override
  String get error => 'Lỗi';

  @override
  String get connectionError => 'Lỗi kết nối';

  @override
  String get serverError => 'Lỗi máy chủ';

  @override
  String get addNewLocation => 'Thêm vị trí mới';

  @override
  String get twoWayTrip => 'Chuyến đi hai chiều';

  @override
  String get reportSubmitted => 'Báo cáo đã gửi';

  @override
  String get reportSubmittedDescription => 'Báo cáo của bạn đã được gửi thành công, chúng tôi sẽ xem xét báo cáo và thực hiện các hành động cần thiết.';

  @override
  String get cardNumber => 'Số thẻ';

  @override
  String get cardNumberHint => 'Nhập số thẻ';

  @override
  String get expiryDate => 'Ngày hết hạn';

  @override
  String get expiryDateHint => 'tháng/năm';

  @override
  String get noFavoriteDrivers => 'Không có trình điều khiển yêu thích';

  @override
  String get noFavoriteDriversDescription => 'Bạn có thể đánh dấu các tài xế ưa thích của mình là người yêu thích khi xếp hạng họ sau chuyến đi.';

  @override
  String get pickupLocationNotFound => 'Chúng tôi không thể xác định vị trí hiện tại của bạn bằng GPS làm điểm đón. Vui lòng nhập điểm đón của bạn theo cách thủ công.';

  @override
  String get dragToSelect => 'Kéo để chọn';

  @override
  String get skip => 'Nhảy';

  @override
  String get openSettings => 'Mở cài đặt';

  @override
  String get locationPermission => 'Quyền vị trí';

  @override
  String get locationPermissionDeniedForeverMessage => 'Quyền vị trí là một yêu cầu để nhận đơn đặt hàng xung quanh bạn và cũng để người lái theo dõi vị trí của bạn. Bạn không thể nhận đơn đặt hàng mà không có sự cho phép này và chúng tôi hãy cẩn thận với vị trí hiện tại của bạn. Bạn có thể thay đổi quyền này trong cài đặt điện thoại của mình.';

  @override
  String get allow => 'Cho phép';

  @override
  String get driverOnlineTitle => 'Đang tìm kiếm chuyến đi';

  @override
  String get driverOfflineTitle => 'Hãy trực tuyến để bắt đầu nhận yêu cầu';

  @override
  String get payInCash => 'Thanh toán bằng tiền mặt';

  @override
  String get payInCashDescription => 'Vui lòng tiếp tục thanh toán tiền mặt cho tài xế. Tài xế sẽ xác nhận thanh toán sau khi nhận được.';

  @override
  String get addToFavoriteDrivers => 'Thêm vào trình điều khiển yêu thích';

  @override
  String get slideToConfirmArrival => 'Trượt để xác nhận đến';

  @override
  String get slideToConfirmPickup => 'Trượt để xác nhận nhận hàng';

  @override
  String get slideToConfirmDropoff => 'Trượt để xác nhận trả khách';

  @override
  String get noticePickingUpRiderIn => 'Đón người lái vào:';

  @override
  String get noticeRiderNotified => 'Rider đã được thông báo, Đón người lái và bắt đầu chuyến đi';
}
