import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Chinese (`zh`).
class SZh extends S {
  SZh([String locale = 'zh']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return '版权所有©$company，保留所有权利。';
  }

  @override
  String get welcomeTitle => '欢迎使用该应用程序';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get settings => '设置';

  @override
  String get about => '关于';

  @override
  String get profileInfo => '个人资料';

  @override
  String get language => '语言';

  @override
  String get firstName => '名';

  @override
  String get lastName => '姓';

  @override
  String get mobileNumber => '手机号码';

  @override
  String get edit => '编辑';

  @override
  String get enterCode => '输入代码';

  @override
  String get editProfile => '编辑个人资料';

  @override
  String get bankTransfer => '银行转帐';

  @override
  String get gift => '礼物';

  @override
  String get correction => '更正';

  @override
  String get inappPayment => '应用内支付';

  @override
  String get orderFee => '订单费';

  @override
  String get parkingFee => '停车费';

  @override
  String get cancellationFee => '取消费用';

  @override
  String get withdraw => '提取';

  @override
  String get walletTransactions => '钱包交易';

  @override
  String get addCard => '添加卡';

  @override
  String get visa => '签证';

  @override
  String get mastercard => '万事达';

  @override
  String get addBalance => '添加余额';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString分钟',
      one: '$minutesString分钟',
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
      other: '$hoursString小时',
      one: '$hoursString小时',
      zero: 'Zero hours',
    );
    return '时长：$_temp0';
  }

  @override
  String get timePastDue => '逾期';

  @override
  String get justNow => '现在';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString米';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString公里';
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
  String get welcomeSubtitle => '专为您的舒适度而设计的出租车服务 与您最喜欢的司机一起旅行并选择您的乘车偏好';

  @override
  String get onboardingRewardTitle => '获得奖励！';

  @override
  String get onboardingRewardSubtitle => '通过推荐朋友、完成旅行等获得额外奖励...';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get searchForLanguage => '搜索语言';

  @override
  String get enterPhoneNumber => '输入电话号码';

  @override
  String get actionContinue => '继续';

  @override
  String get whereIsYourDestination => '你的目的地是哪里？';

  @override
  String get whereAreYouGoing => '你要去哪里？';

  @override
  String get selectDestinations => '你的路线';

  @override
  String get pickupPoint => '接送点';

  @override
  String get enterPickupPoint => '输入上车点';

  @override
  String get dropoffPoint => '下车点';

  @override
  String get enterDropoffPoint => '输入下车点';

  @override
  String get stopPoint => '停止点';

  @override
  String get enterStopPoint => '输入停止点';

  @override
  String get confirm => '确认';

  @override
  String get confirmDropoff => '确认还车';

  @override
  String get confirmPickup => '确认接机';

  @override
  String get enterAtLeast3Characters => '输入至少3个字符';

  @override
  String get noResults => '没有结果';

  @override
  String get bookNow => '现在预订';

  @override
  String get cash => '现金';

  @override
  String get online => '在线的';

  @override
  String get offline => '离线';

  @override
  String get onTrip => '旅途中';

  @override
  String get confirmPay => '确认 ';

  @override
  String get cancel => '取消';

  @override
  String get apply => '申请';

  @override
  String get enterCouponCode => '输入优惠券代码';

  @override
  String get reserveRide => '预约乘车';

  @override
  String get reserveRideMessage => '选择您希望预订行程的确切日期和时间';

  @override
  String get reserveRideMessageSuccess => '您的行程已成功预订。您可以在“预定行程”部分查看您预订的行程。';

  @override
  String get cancelReservation => '取消预订';

  @override
  String get confirmResrve => '确认 ';

  @override
  String get enterCouponDescription => '输入您的优惠券代码以应用于价格';

  @override
  String get enterCoupon => '输入优惠券';

  @override
  String get couponApplied => '已应用优惠券';

  @override
  String get couponAppliedDescription => '优惠券已应用于您的行程票价';

  @override
  String get done => '完毕！';

  @override
  String get ridePreferences => '乘车偏好';

  @override
  String get noWaitTime => '无需等待时间';

  @override
  String minutesRange(String minutes) {
    return '$minutes分钟';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds秒';
  }

  @override
  String get rideRequested => '请求乘车';

  @override
  String get searchingForAnOnlineDriver => '正在寻找在线驱动程序...';

  @override
  String get cancelRide => '取消行程';

  @override
  String get rideSafety => '乘坐安全';

  @override
  String get shareTripInformation => '分享行程信息';

  @override
  String get shareTripInformationDescription => '您可以与朋友分享您的旅行信息';

  @override
  String get sos => '求救';

  @override
  String get sosDescription => '让当局知道紧急情况';

  @override
  String get reportAnIssue => '报告问题';

  @override
  String get reportAnIssueMidTripDescription => '分享旅途中的安全问题';

  @override
  String get rideOptions => '乘车选择';

  @override
  String get goBackToRide => '回去骑车';

  @override
  String get waitTime => '等待时间';

  @override
  String get couponCode => '优惠券代码';

  @override
  String get giftCardCode => '礼品卡代码';

  @override
  String get nicePoints => '不错的积分';

  @override
  String get negativePoints => '负分';

  @override
  String get reviewCommentBoxHint => '添加评论...';

  @override
  String get howWasYourTrip => '你的旅途怎么样？';

  @override
  String oneStarReviewTitle(String name) {
    return '和 $name 一起度过了一次糟糕的旅行';
  }

  @override
  String twoStarReviewTitle(String name) {
    return '$name 的糟糕旅行';
  }

  @override
  String threeStarReviewTitle(String name) {
    return '平均行程$name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return '和$name一起旅行很愉快';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return '和$name一起度过很棒的旅行';
  }

  @override
  String get submitFeedback => '提交反馈';

  @override
  String get typeAMessage => '输入消息';

  @override
  String get findAnotherRide => '寻找另一趟车';

  @override
  String get next => '下一个';

  @override
  String get searchForDropoffLocation => '搜索下车地点';

  @override
  String get searchForPickupLocation => '搜索上车地点';

  @override
  String get placeConfirmDialogPlaceholder => '您的下车地点在哪里？';

  @override
  String get noAnnouncements => '没有公告';

  @override
  String get announcements => '公告';

  @override
  String reviewsCount(int count) {
    return '（$count 评论）';
  }

  @override
  String get tripDetails => '行程详情';

  @override
  String get rideDetails => '乘车详情';

  @override
  String get orderARide => '叫车';

  @override
  String get noRidesYet => '还没有骑行！';

  @override
  String get issueSubjectPlaceholder => '输入问题的主题';

  @override
  String get issueContentPlaceholder => '输入问题的描述';

  @override
  String get reportThisIssue => '报告此问题';

  @override
  String get fieldIsRequired => '字段为必填项';

  @override
  String get ok => '好的';

  @override
  String get favoriteLocations => '最喜欢的地点';

  @override
  String get favoriteLocationsSubtitle => '保存您最喜欢的位置以便于访问';

  @override
  String get createAFavoriteLocation => '创建最喜欢的位置';

  @override
  String get addressTitleLabel => '地址的标题';

  @override
  String get clickToSetLocation => '点击设置位置';

  @override
  String get whereIsYourNewFavoriteLocation => '您最喜欢的新地点在哪里？';

  @override
  String get locateFavoriteLocationDescription => '使用下面的搜索框或地图来固定确切位置';

  @override
  String get searchLocation => '搜索地点';

  @override
  String get saveChanges => '保存更改';

  @override
  String get rideHistory => '骑行历史';

  @override
  String get scheduledRides => '预定行程';

  @override
  String get keepTheOrder => '保留订单';

  @override
  String get cancelTheRide => '取消行程';

  @override
  String get walletBalance => '钱包余额';

  @override
  String get activities => '活动';

  @override
  String get pleaseEnterGiftCardCode => '请输入礼品卡代码';

  @override
  String get redeem => '赎回';

  @override
  String get enterGiftCardCode => '输入礼品卡代码';

  @override
  String get redeemGiftCard => '兑换礼品卡';

  @override
  String get redeemGiftCardDescription => '输入您的礼品卡代码进行兑换。';

  @override
  String get redeemSuccessTitle => '礼品卡已兑换！';

  @override
  String redeemSuccessDescription(String amount) {
    return '您已成功兑换$amount张礼品卡。';
  }

  @override
  String get addCredit => '添加信用';

  @override
  String get payNow => '现在付款';

  @override
  String get addCreditToWallet => '向钱包添加信用';

  @override
  String get pleaseSelectAmount => '请选择金额';

  @override
  String get enterAmount => '输入金额';

  @override
  String get selectAmount => '选择金额：';

  @override
  String get wallet => '钱包';

  @override
  String get totalRides => '总骑行次数';

  @override
  String get appSettings => '应用程序设置';

  @override
  String get mapSettings => '地图设置';

  @override
  String get lanugageSettings => '语言设置';

  @override
  String get paymentMethods => '支付方式';

  @override
  String get selectCards => '选择卡片';

  @override
  String get selectCardsDescription => '您可以选择要在发票上的付款方式列表中显示的卡号。';

  @override
  String get delete => '删除';

  @override
  String get nameOnCard => '卡片上的名字';

  @override
  String get profile => '轮廓';

  @override
  String get scheduledRide => '预定乘车';

  @override
  String get addPaymentMethod => '添加付款方式';

  @override
  String get addPaymentMethodDescription => '向您的帐户添加新的付款方式';

  @override
  String get saveCard => '保存卡';

  @override
  String get selectDialCode => '选择拨号代码';

  @override
  String get searchCountryName => '搜索国家名称';

  @override
  String get preferences => '优先：';

  @override
  String get onboardingDescription => '立即注册您的帐户并享受舒适的乘车体验';

  @override
  String get signInSignUp => '登录注册';

  @override
  String get enterOtp => '输入一次性密码';

  @override
  String get enterPassword => '输入密码';

  @override
  String get enterPasswordDescription => '请输入您的密码以继续';

  @override
  String get setPassword => '设置密码';

  @override
  String get password => '密码';

  @override
  String get passwordRuleDescription => '至少包括以下两项：';

  @override
  String get passwordRuleLength => '9 到 64 个字符之间';

  @override
  String get passwordRuleUpperCase => '大写字母';

  @override
  String get passwordRuleLowerCase => '小写字母';

  @override
  String get passwordRuleNumber => '数字';

  @override
  String get passwordRuleSpecialCharacter => '特殊字符';

  @override
  String get contactDetails => '联系方式';

  @override
  String get vehicleDetails => '车辆详情';

  @override
  String get payoutInformation => '支付信息';

  @override
  String get documents => '文件';

  @override
  String get accessDenied => '拒绝访问';

  @override
  String get success => '成功';

  @override
  String get skipForNow => '暂时跳过';

  @override
  String get sendOtpDescription => '验证码已发送至您的手机号码';

  @override
  String get resendOtp => '重新发送验证码';

  @override
  String get useOtpInstead => '使用 OTP 代替';

  @override
  String get home => '家';

  @override
  String get logout => '登出';

  @override
  String get driverLicenseNumber => '驾驶执照号码';

  @override
  String get email => '电子邮件';

  @override
  String get address => '地址';

  @override
  String get gender => '性别';

  @override
  String get genderMale => '男性';

  @override
  String get genderFemale => '女性';

  @override
  String get genderUnknown => '中性/未知';

  @override
  String get vehiclePlateNumber => '车牌号';

  @override
  String get vehicleColor => '车辆颜色';

  @override
  String get vehicleModelAndMake => '车辆型号';

  @override
  String get vehicleProductionYear => '车辆生产年份';

  @override
  String get bankName => '银行名';

  @override
  String get bankRoutingNumber => '银行路由号码';

  @override
  String get bankAccountNumber => '银行帐号';

  @override
  String get bankSwift => 'SWIFT代码';

  @override
  String get uploadImage => '上传图片';

  @override
  String get yourBalance => '您的余额';

  @override
  String get rideCancellation => '取消乘车';

  @override
  String get cancelRideMessage => '您确定要取消行程吗？';

  @override
  String get cancelRideSuccess => '行程已成功取消';

  @override
  String get confirmAndCancelRide => '确认';

  @override
  String get selectPaymentMethod => '选择付款方式';

  @override
  String get rideFeePaid => '乘车费已支付';

  @override
  String get rideFeeUnpaid => '乘车费尚未支付';

  @override
  String get total => '全部的';

  @override
  String get totalPrice => '总价';

  @override
  String get addCustomCredit => '添加自定义编辑';

  @override
  String get serviceFee => '服务费';

  @override
  String get serviceOptionFee => '服务选择费';

  @override
  String get couponDiscount => '优惠券折扣';

  @override
  String get walletCreit => '钱包信用';

  @override
  String get custom => '风俗';

  @override
  String get payment => '支付';

  @override
  String get cashPayment => '现金支付';

  @override
  String cashPaymentDescription(String amount) {
    return '您确认收到$amount吗？';
  }

  @override
  String get cashPaymentReceived => '收到现金付款';

  @override
  String get confirmAndEndTrip => '确认';

  @override
  String get earnings => '收益';

  @override
  String get acceptOrder => '接受订单';

  @override
  String get canceled => '取消';

  @override
  String get unknown => '未知';

  @override
  String get commission => '委员会';

  @override
  String get selectProfileImage => '选择个人资料图片';

  @override
  String get chooseAvatarDescription => '或者从下面的列表中选择一个头像：';

  @override
  String get fullName => '全名';

  @override
  String get favoriteDrivers => '最喜欢的车手';

  @override
  String get distanceTraveled => '行驶距离';

  @override
  String get rating => '评分';

  @override
  String get map => '地图';

  @override
  String get income => '收入';

  @override
  String get timeSpent => '所花费的时间';

  @override
  String get daily => '日常的';

  @override
  String get monthly => '每月';

  @override
  String get noRecordsFoundEarnings => '没有找到这些过滤器的行程记录';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'No feedbacks yet';

  @override
  String get feedbacksSummaryEmptyStateTitle => '您还没有足够的反馈可以显示。';

  @override
  String get feedbacksSummary => '反馈总结';

  @override
  String get feedbacksGoodTitle => '干得好！';

  @override
  String get feedbacksGoodSubtitle => '到目前为止您的评分看起来不错';

  @override
  String get feedbacksBadTitle => '平均的';

  @override
  String get feedbacksBadSubtitle => '您可以使用一些改进';

  @override
  String get feedbacksGoodPointsTitle => '关于你的一些优点：';

  @override
  String get feedbacksbadPointsTitle => '您可以改进的一些点：';

  @override
  String get feedbacksReviewsTitle => '一些早期的评论';

  @override
  String get payoutMethods => '支付方式';

  @override
  String get notice => '注意：';

  @override
  String get payoutNoticeTitle => '管理员每周将自动向您支付两次费用。';

  @override
  String get addPayoutMethod => '添加付款方式';

  @override
  String get navigate => '导航';

  @override
  String get noPayoutMethods => '没有付款方式';

  @override
  String get name => '姓名';

  @override
  String get nameHint => '输入名字';

  @override
  String get bankNameHint => '输入银行名称';

  @override
  String get branchName => '分店名称';

  @override
  String get branchNameHint => '输入分行名称';

  @override
  String get accountHolderName => '账户持有人姓名';

  @override
  String get routingNumber => '路由号码';

  @override
  String get routingNumberHint => '输入路由号码';

  @override
  String get accountNumber => '帐号';

  @override
  String get accountNumberHint => '输入帐号';

  @override
  String get addressHint => '输入地址';

  @override
  String get dateOfBith => '出生日期';

  @override
  String get yearHint => '年';

  @override
  String get monthHint => '月';

  @override
  String get dayHint => '天';

  @override
  String get city => '城市';

  @override
  String get cityHint => '输入城市';

  @override
  String get state => '状态';

  @override
  String get stateHint => '输入状态';

  @override
  String get zipCode => '邮政编码';

  @override
  String get zipCodeHint => '输入邮政编号';

  @override
  String get day => '天';

  @override
  String get month => '月';

  @override
  String get year => '年';

  @override
  String get noActivitiesYet => '还没有活动。';

  @override
  String get headingToDestination => '前往目的地';

  @override
  String get driverArrivedNotice => '司机正在等你';

  @override
  String get driverShouldAriveInNotice => '司机预计抵达';

  @override
  String get driverShouldHaveArrivedNotice => '司机现在应该随时到达';

  @override
  String get deleteAccount => '删除帐户';

  @override
  String get deleteAccountNotice => '您确定要删除您的帐户吗？ 30 天后，您的帐户将被永久删除。在此期间，您可以通过重新登录来恢复您的帐户。';

  @override
  String get confirmAndDeleteAccount => '确认';

  @override
  String get accountDeleted => '帐户已被删除';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return '我正在从 $pickup 到 $destination 的路上。';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return '我的司机姓名是$firstName$lastName，手机号码是$mobileNumber。';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return '我的骑手名字是$firstName$lastName，手机号码是$mobileNumber。';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return '行程于 $startTime 开始，预计行程大约需要 $duration 分钟';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return '我预计，一旦我上了司机的车，行程大约需要 $duration 分钟。';
  }

  @override
  String get sendSOSMessage => '重要提示：请仅在紧急情况下使用此功能。我们将代表您联系当局。';

  @override
  String get confirmAndSendSOS => '确认';

  @override
  String get sosSentSuccessfully => 'SOS 已成功发送';

  @override
  String get topUpSuccess => '钱包已充值成功';

  @override
  String get cancelNotAllowed => '您无法取消此行程';

  @override
  String get error => '错误';

  @override
  String get connectionError => '连接错误';

  @override
  String get serverError => '服务器错误';

  @override
  String get addNewLocation => '添加新位置';

  @override
  String get twoWayTrip => '两程行程';

  @override
  String get reportSubmitted => '报告已提交';

  @override
  String get reportSubmittedDescription => '您的报告已成功提交，我们将对其进行审核并采取必要的措施。';

  @override
  String get cardNumber => '卡号';

  @override
  String get cardNumberHint => '输入卡号';

  @override
  String get expiryDate => '到期日';

  @override
  String get expiryDateHint => '月/年';

  @override
  String get noFavoriteDrivers => '没有最喜欢的车手';

  @override
  String get noFavoriteDriversDescription => 'You can mark your preferred drivers as favorites when rating them after the trip.';

  @override
  String get pickupLocationNotFound => '我们无法使用 GPS 作为上车点来确定您当前的位置。请手动输入您的接送点。';

  @override
  String get dragToSelect => '拖动选择';

  @override
  String get skip => '跳过';

  @override
  String get openSettings => '打开设置';

  @override
  String get locationPermission => '位置许可';

  @override
  String get locationPermissionDeniedForeverMessage => '位置许可是接收您周围的订单以及骑手跟踪您的位置的必要条件。未经此许可，您无法接收订单，并且我们会留意您当前的位置。您可以在手机设置中更改此权限。';

  @override
  String get allow => '允许';

  @override
  String get driverOnlineTitle => '寻找乘车服务';

  @override
  String get driverOfflineTitle => '上网开始接收请求';

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

/// The translations for Chinese, as used in China (`zh_CN`).
class SZhCn extends SZh {
  SZhCn(): super('zh_CN');

  @override
  String copyright_notice(Object company) {
    return '版权所有©$company，保留所有权利。';
  }

  @override
  String get welcomeTitle => '欢迎使用该应用程序';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get settings => '设置';

  @override
  String get about => '关于';

  @override
  String get profileInfo => '个人资料';

  @override
  String get language => '语言';

  @override
  String get firstName => '名';

  @override
  String get lastName => '姓';

  @override
  String get mobileNumber => '手机号码';

  @override
  String get edit => '编辑';

  @override
  String get enterCode => '输入代码';

  @override
  String get editProfile => '编辑个人资料';

  @override
  String get bankTransfer => '银行转帐';

  @override
  String get gift => '礼物';

  @override
  String get correction => '更正';

  @override
  String get inappPayment => '应用内支付';

  @override
  String get orderFee => '订单费';

  @override
  String get parkingFee => '停车费';

  @override
  String get cancellationFee => '取消费用';

  @override
  String get withdraw => '提取';

  @override
  String get walletTransactions => '钱包交易';

  @override
  String get addCard => '添加卡';

  @override
  String get visa => '签证';

  @override
  String get mastercard => '万事达';

  @override
  String get addBalance => '添加余额';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString分钟',
      one: '$minutesString分钟',
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
      other: '$hoursString小时',
      one: '$hoursString小时',
      zero: 'Zero hours',
    );
    return '时长：$_temp0';
  }

  @override
  String get timePastDue => '逾期';

  @override
  String get justNow => '现在';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString米';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString公里';
  }

  @override
  String get welcomeSubtitle => '专为您的舒适度而设计的出租车服务 与您最喜欢的司机一起旅行并选择您的乘车偏好';

  @override
  String get onboardingRewardTitle => '获得奖励！';

  @override
  String get onboardingRewardSubtitle => '通过推荐朋友、完成旅行等获得额外奖励...';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get searchForLanguage => '搜索语言';

  @override
  String get enterPhoneNumber => '输入电话号码';

  @override
  String get actionContinue => '继续';

  @override
  String get whereIsYourDestination => '你的目的地是哪里？';

  @override
  String get whereAreYouGoing => '你要去哪里？';

  @override
  String get selectDestinations => '你的路线';

  @override
  String get pickupPoint => '接送点';

  @override
  String get enterPickupPoint => '输入上车点';

  @override
  String get dropoffPoint => '下车点';

  @override
  String get enterDropoffPoint => '输入下车点';

  @override
  String get stopPoint => '停止点';

  @override
  String get enterStopPoint => '输入停止点';

  @override
  String get confirm => '确认';

  @override
  String get confirmDropoff => '确认还车';

  @override
  String get confirmPickup => '确认接机';

  @override
  String get enterAtLeast3Characters => '输入至少3个字符';

  @override
  String get noResults => '没有结果';

  @override
  String get bookNow => '现在预订';

  @override
  String get cash => '现金';

  @override
  String get online => '在线的';

  @override
  String get offline => '离线';

  @override
  String get onTrip => '旅途中';

  @override
  String get confirmPay => '确认 ';

  @override
  String get cancel => '取消';

  @override
  String get apply => '申请';

  @override
  String get enterCouponCode => '输入优惠券代码';

  @override
  String get reserveRide => '预约乘车';

  @override
  String get reserveRideMessage => '选择您希望预订行程的确切日期和时间';

  @override
  String get reserveRideMessageSuccess => '您的行程已成功预订。您可以在“预定行程”部分查看您预订的行程。';

  @override
  String get cancelReservation => '取消预订';

  @override
  String get confirmResrve => '确认 ';

  @override
  String get enterCouponDescription => '输入您的优惠券代码以应用于价格';

  @override
  String get enterCoupon => '输入优惠券';

  @override
  String get couponApplied => '已应用优惠券';

  @override
  String get couponAppliedDescription => '优惠券已应用于您的行程票价';

  @override
  String get done => '完毕！';

  @override
  String get ridePreferences => '乘车偏好';

  @override
  String get noWaitTime => '无需等待时间';

  @override
  String minutesRange(String minutes) {
    return '$minutes分钟';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds秒';
  }

  @override
  String get rideRequested => '请求乘车';

  @override
  String get searchingForAnOnlineDriver => '正在寻找在线驱动程序...';

  @override
  String get cancelRide => '取消行程';

  @override
  String get rideSafety => '乘坐安全';

  @override
  String get shareTripInformation => '分享行程信息';

  @override
  String get shareTripInformationDescription => '您可以与朋友分享您的旅行信息';

  @override
  String get sos => '求救';

  @override
  String get sosDescription => '让当局知道紧急情况';

  @override
  String get reportAnIssue => '报告问题';

  @override
  String get reportAnIssueMidTripDescription => '分享旅途中的安全问题';

  @override
  String get rideOptions => '乘车选择';

  @override
  String get goBackToRide => '回去骑车';

  @override
  String get waitTime => '等待时间';

  @override
  String get couponCode => '优惠券代码';

  @override
  String get giftCardCode => '礼品卡代码';

  @override
  String get nicePoints => '不错的积分';

  @override
  String get negativePoints => '负分';

  @override
  String get reviewCommentBoxHint => '添加评论...';

  @override
  String get howWasYourTrip => '你的旅途怎么样？';

  @override
  String oneStarReviewTitle(String name) {
    return '和 $name 一起度过了一次糟糕的旅行';
  }

  @override
  String twoStarReviewTitle(String name) {
    return '$name 的糟糕旅行';
  }

  @override
  String threeStarReviewTitle(String name) {
    return '平均行程$name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return '和$name一起旅行很愉快';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return '和$name一起度过很棒的旅行';
  }

  @override
  String get submitFeedback => '提交反馈';

  @override
  String get typeAMessage => '输入消息';

  @override
  String get findAnotherRide => '寻找另一趟车';

  @override
  String get next => '下一个';

  @override
  String get searchForDropoffLocation => '搜索下车地点';

  @override
  String get searchForPickupLocation => '搜索上车地点';

  @override
  String get placeConfirmDialogPlaceholder => '您的下车地点在哪里？';

  @override
  String get noAnnouncements => '没有公告';

  @override
  String get announcements => '公告';

  @override
  String reviewsCount(int count) {
    return '（$count 评论）';
  }

  @override
  String get tripDetails => '行程详情';

  @override
  String get rideDetails => '乘车详情';

  @override
  String get orderARide => '叫车';

  @override
  String get noRidesYet => '还没有骑行！';

  @override
  String get issueSubjectPlaceholder => '输入问题的主题';

  @override
  String get issueContentPlaceholder => '输入问题的描述';

  @override
  String get reportThisIssue => '报告此问题';

  @override
  String get fieldIsRequired => '字段为必填项';

  @override
  String get ok => '好的';

  @override
  String get favoriteLocations => '最喜欢的地点';

  @override
  String get favoriteLocationsSubtitle => '保存您最喜欢的位置以便于访问';

  @override
  String get createAFavoriteLocation => '创建最喜欢的位置';

  @override
  String get addressTitleLabel => '地址的标题';

  @override
  String get clickToSetLocation => '点击设置位置';

  @override
  String get whereIsYourNewFavoriteLocation => '您最喜欢的新地点在哪里？';

  @override
  String get locateFavoriteLocationDescription => '使用下面的搜索框或地图来固定确切位置';

  @override
  String get searchLocation => '搜索地点';

  @override
  String get saveChanges => '保存更改';

  @override
  String get rideHistory => '骑行历史';

  @override
  String get scheduledRides => '预定行程';

  @override
  String get keepTheOrder => '保留订单';

  @override
  String get cancelTheRide => '取消行程';

  @override
  String get walletBalance => '钱包余额';

  @override
  String get activities => '活动';

  @override
  String get pleaseEnterGiftCardCode => '请输入礼品卡代码';

  @override
  String get redeem => '赎回';

  @override
  String get enterGiftCardCode => '输入礼品卡代码';

  @override
  String get redeemGiftCard => '兑换礼品卡';

  @override
  String get redeemGiftCardDescription => '输入您的礼品卡代码进行兑换。';

  @override
  String get redeemSuccessTitle => '礼品卡已兑换！';

  @override
  String redeemSuccessDescription(String amount) {
    return '您已成功兑换$amount张礼品卡。';
  }

  @override
  String get addCredit => '添加信用';

  @override
  String get payNow => '现在付款';

  @override
  String get addCreditToWallet => '向钱包添加信用';

  @override
  String get pleaseSelectAmount => '请选择金额';

  @override
  String get enterAmount => '输入金额';

  @override
  String get selectAmount => '选择金额：';

  @override
  String get wallet => '钱包';

  @override
  String get totalRides => '总骑行次数';

  @override
  String get appSettings => '应用程序设置';

  @override
  String get mapSettings => '地图设置';

  @override
  String get lanugageSettings => '语言设置';

  @override
  String get paymentMethods => '支付方式';

  @override
  String get selectCards => '选择卡片';

  @override
  String get selectCardsDescription => '您可以选择要在发票上的付款方式列表中显示的卡号。';

  @override
  String get delete => '删除';

  @override
  String get nameOnCard => '卡片上的名字';

  @override
  String get profile => '轮廓';

  @override
  String get scheduledRide => '预定乘车';

  @override
  String get addPaymentMethod => '添加付款方式';

  @override
  String get addPaymentMethodDescription => '向您的帐户添加新的付款方式';

  @override
  String get saveCard => '保存卡';

  @override
  String get selectDialCode => '选择拨号代码';

  @override
  String get searchCountryName => '搜索国家名称';

  @override
  String get preferences => '优先：';

  @override
  String get onboardingDescription => '立即注册您的帐户并享受舒适的乘车体验';

  @override
  String get signInSignUp => '登录注册';

  @override
  String get enterOtp => '输入一次性密码';

  @override
  String get enterPassword => '输入密码';

  @override
  String get enterPasswordDescription => '请输入您的密码以继续';

  @override
  String get setPassword => '设置密码';

  @override
  String get password => '密码';

  @override
  String get passwordRuleDescription => '至少包括以下两项：';

  @override
  String get passwordRuleLength => '9 到 64 个字符之间';

  @override
  String get passwordRuleUpperCase => '大写字母';

  @override
  String get passwordRuleLowerCase => '小写字母';

  @override
  String get passwordRuleNumber => '数字';

  @override
  String get passwordRuleSpecialCharacter => '特殊字符';

  @override
  String get contactDetails => '联系方式';

  @override
  String get vehicleDetails => '车辆详情';

  @override
  String get payoutInformation => '支付信息';

  @override
  String get documents => '文件';

  @override
  String get accessDenied => '拒绝访问';

  @override
  String get success => '成功';

  @override
  String get skipForNow => '暂时跳过';

  @override
  String get sendOtpDescription => '验证码已发送至您的手机号码';

  @override
  String get resendOtp => '重新发送验证码';

  @override
  String get useOtpInstead => '使用 OTP 代替';

  @override
  String get home => '家';

  @override
  String get logout => '登出';

  @override
  String get driverLicenseNumber => '驾驶执照号码';

  @override
  String get email => '电子邮件';

  @override
  String get address => '地址';

  @override
  String get gender => '性别';

  @override
  String get genderMale => '男性';

  @override
  String get genderFemale => '女性';

  @override
  String get genderUnknown => '中性/未知';

  @override
  String get vehiclePlateNumber => '车牌号';

  @override
  String get vehicleColor => '车辆颜色';

  @override
  String get vehicleModelAndMake => '车辆型号';

  @override
  String get vehicleProductionYear => '车辆生产年份';

  @override
  String get bankName => '银行名';

  @override
  String get bankRoutingNumber => '银行路由号码';

  @override
  String get bankAccountNumber => '银行帐号';

  @override
  String get bankSwift => 'SWIFT代码';

  @override
  String get uploadImage => '上传图片';

  @override
  String get yourBalance => '您的余额';

  @override
  String get rideCancellation => '取消乘车';

  @override
  String get cancelRideMessage => '您确定要取消行程吗？';

  @override
  String get cancelRideSuccess => '行程已成功取消';

  @override
  String get confirmAndCancelRide => '确认';

  @override
  String get selectPaymentMethod => '选择付款方式';

  @override
  String get rideFeePaid => '乘车费已支付';

  @override
  String get rideFeeUnpaid => '乘车费尚未支付';

  @override
  String get total => '全部的';

  @override
  String get totalPrice => '总价';

  @override
  String get addCustomCredit => '添加自定义编辑';

  @override
  String get serviceFee => '服务费';

  @override
  String get serviceOptionFee => '服务选择费';

  @override
  String get couponDiscount => '优惠券折扣';

  @override
  String get walletCreit => '钱包信用';

  @override
  String get custom => '风俗';

  @override
  String get payment => '支付';

  @override
  String get cashPayment => '现金支付';

  @override
  String cashPaymentDescription(String amount) {
    return '您确认收到$amount吗？';
  }

  @override
  String get cashPaymentReceived => '收到现金付款';

  @override
  String get confirmAndEndTrip => '确认';

  @override
  String get earnings => '收益';

  @override
  String get acceptOrder => '接受订单';

  @override
  String get canceled => '取消';

  @override
  String get unknown => '未知';

  @override
  String get commission => '委员会';

  @override
  String get selectProfileImage => '选择个人资料图片';

  @override
  String get chooseAvatarDescription => '或者从下面的列表中选择一个头像：';

  @override
  String get fullName => '全名';

  @override
  String get favoriteDrivers => '最喜欢的车手';

  @override
  String get distanceTraveled => '行驶距离';

  @override
  String get rating => '评分';

  @override
  String get map => '地图';

  @override
  String get income => '收入';

  @override
  String get timeSpent => '所花费的时间';

  @override
  String get daily => '日常的';

  @override
  String get monthly => '每月';

  @override
  String get noRecordsFoundEarnings => '没有找到这些过滤器的行程记录';

  @override
  String get feedbacksSummaryEmptyStateHeading => '还没有反馈';

  @override
  String get feedbacksSummaryEmptyStateTitle => '您还没有足够的反馈可以显示。';

  @override
  String get feedbacksSummary => '反馈总结';

  @override
  String get feedbacksGoodTitle => '干得好！';

  @override
  String get feedbacksGoodSubtitle => '到目前为止您的评分看起来不错';

  @override
  String get feedbacksBadTitle => '平均的';

  @override
  String get feedbacksBadSubtitle => '您可以使用一些改进';

  @override
  String get feedbacksGoodPointsTitle => '关于你的一些优点：';

  @override
  String get feedbacksbadPointsTitle => '您可以改进的一些点：';

  @override
  String get feedbacksReviewsTitle => '一些早期的评论';

  @override
  String get payoutMethods => '支付方式';

  @override
  String get notice => '注意：';

  @override
  String get payoutNoticeTitle => '管理员每周将自动向您支付两次费用。';

  @override
  String get addPayoutMethod => '添加付款方式';

  @override
  String get navigate => '导航';

  @override
  String get noPayoutMethods => '没有付款方式';

  @override
  String get name => '姓名';

  @override
  String get nameHint => '输入名字';

  @override
  String get bankNameHint => '输入银行名称';

  @override
  String get branchName => '分店名称';

  @override
  String get branchNameHint => '输入分行名称';

  @override
  String get accountHolderName => '账户持有人姓名';

  @override
  String get routingNumber => '路由号码';

  @override
  String get routingNumberHint => '输入路由号码';

  @override
  String get accountNumber => '帐号';

  @override
  String get accountNumberHint => '输入帐号';

  @override
  String get addressHint => '输入地址';

  @override
  String get dateOfBith => '出生日期';

  @override
  String get yearHint => '年';

  @override
  String get monthHint => '月';

  @override
  String get dayHint => '天';

  @override
  String get city => '城市';

  @override
  String get cityHint => '输入城市';

  @override
  String get state => '状态';

  @override
  String get stateHint => '输入状态';

  @override
  String get zipCode => '邮政编码';

  @override
  String get zipCodeHint => '输入邮政编号';

  @override
  String get day => '天';

  @override
  String get month => '月';

  @override
  String get year => '年';

  @override
  String get noActivitiesYet => '还没有活动。';

  @override
  String get headingToDestination => '前往目的地';

  @override
  String get driverArrivedNotice => '司机正在等你';

  @override
  String get driverShouldAriveInNotice => '司机预计抵达';

  @override
  String get driverShouldHaveArrivedNotice => '司机现在应该随时到达';

  @override
  String get deleteAccount => '删除帐户';

  @override
  String get deleteAccountNotice => '您确定要删除您的帐户吗？ 30 天后，您的帐户将被永久删除。在此期间，您可以通过重新登录来恢复您的帐户。';

  @override
  String get confirmAndDeleteAccount => '确认';

  @override
  String get accountDeleted => '帐户已被删除';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return '我正在从 $pickup 到 $destination 的路上。';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return '我的司机姓名是$firstName$lastName，手机号码是$mobileNumber。';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return '我的骑手名字是$firstName$lastName，手机号码是$mobileNumber。';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return '行程于 $startTime 开始，预计行程大约需要 $duration 分钟';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return '我预计，一旦我上了司机的车，行程大约需要 $duration 分钟。';
  }

  @override
  String get sendSOSMessage => '重要提示：请仅在紧急情况下使用此功能。我们将代表您联系当局。';

  @override
  String get confirmAndSendSOS => '确认';

  @override
  String get sosSentSuccessfully => 'SOS 已成功发送';

  @override
  String get topUpSuccess => '钱包已充值成功';

  @override
  String get cancelNotAllowed => '无法取消已开始的行程。';

  @override
  String get error => '错误';

  @override
  String get connectionError => '连接错误';

  @override
  String get serverError => '服务器错误';

  @override
  String get addNewLocation => '添加新位置';

  @override
  String get twoWayTrip => '两程行程';

  @override
  String get reportSubmitted => '报告已提交';

  @override
  String get reportSubmittedDescription => '您的报告已成功提交，我们将对其进行审核并采取必要的措施。';

  @override
  String get cardNumber => '卡号';

  @override
  String get cardNumberHint => '输入卡号';

  @override
  String get expiryDate => '到期日';

  @override
  String get expiryDateHint => '月/年';

  @override
  String get noFavoriteDrivers => '没有最喜欢的车手';

  @override
  String get noFavoriteDriversDescription => '您可以在行程结束后对您喜欢的司机进行评分时将其标记为最爱。';

  @override
  String get pickupLocationNotFound => '我们无法使用 GPS 作为上车点来确定您当前的位置。请手动输入您的接送点。';

  @override
  String get dragToSelect => '拖动选择';

  @override
  String get skip => '跳过';

  @override
  String get openSettings => '打开设置';

  @override
  String get locationPermission => '位置许可';

  @override
  String get locationPermissionDeniedForeverMessage => '位置许可是接收您周围的订单以及骑手跟踪您的位置的必要条件。未经此许可，您无法接收订单，并且我们会留意您当前的位置。您可以在手机设置中更改此权限。';

  @override
  String get allow => '允许';

  @override
  String get driverOnlineTitle => '寻找乘车服务';

  @override
  String get driverOfflineTitle => '上网开始接收请求';

  @override
  String get payInCash => '现金支付';

  @override
  String get payInCashDescription => '请向司机支付现金。司机收到付款后将确认付款。';

  @override
  String get addToFavoriteDrivers => '添加到最喜爱的驱动程序';

  @override
  String get slideToConfirmArrival => '滑动确认到达';

  @override
  String get slideToConfirmPickup => '滑动确认取货';

  @override
  String get slideToConfirmDropoff => '滑动以确认还车';

  @override
  String get noticePickingUpRiderIn => '在以下地点接载乘客：';

  @override
  String get noticeRiderNotified => '乘客已收到通知，接载乘客并开始骑行';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class SZhTw extends SZh {
  SZhTw(): super('zh_TW');

  @override
  String copyright_notice(Object company) {
    return '版權所有©$company，保留所有權利。';
  }

  @override
  String get welcomeTitle => '歡迎使用該應用程式';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String get settings => '設定';

  @override
  String get about => '關於';

  @override
  String get profileInfo => '個人資料';

  @override
  String get language => '語言';

  @override
  String get firstName => '名';

  @override
  String get lastName => '姓';

  @override
  String get mobileNumber => '手機號碼';

  @override
  String get edit => '編輯';

  @override
  String get enterCode => '輸入代碼';

  @override
  String get editProfile => '編輯個人資料';

  @override
  String get bankTransfer => '銀行轉帳';

  @override
  String get gift => '禮物';

  @override
  String get correction => '更正';

  @override
  String get inappPayment => '應用程式內支付';

  @override
  String get orderFee => '訂單費';

  @override
  String get parkingFee => '停車費';

  @override
  String get cancellationFee => '取消費用';

  @override
  String get withdraw => '提取';

  @override
  String get walletTransactions => '錢包交易';

  @override
  String get addCard => '添加卡';

  @override
  String get visa => '簽證';

  @override
  String get mastercard => '萬事達';

  @override
  String get addBalance => '添加餘額';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString分鐘',
      one: '$minutesString分鐘',
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
      other: '$hoursString小時',
      one: '$hoursString小時',
      zero: 'Zero hours',
    );
    return '長度：$_temp0';
  }

  @override
  String get timePastDue => '逾期';

  @override
  String get justNow => '現在';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString米';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString公里';
  }

  @override
  String get welcomeSubtitle => '專為您的舒適度而設計的計程車服務 與您最喜歡的司機一起旅行並選擇您的乘車偏好';

  @override
  String get onboardingRewardTitle => '獲得獎勵！';

  @override
  String get onboardingRewardSubtitle => '透過推薦朋友、完成旅行等獲得額外獎勵...';

  @override
  String get selectLanguage => '選擇語言';

  @override
  String get searchForLanguage => '搜尋語言';

  @override
  String get enterPhoneNumber => '輸入電話號碼';

  @override
  String get actionContinue => '繼續';

  @override
  String get whereIsYourDestination => '你的目的地是哪裡？';

  @override
  String get whereAreYouGoing => '你要去哪裡？';

  @override
  String get selectDestinations => '你的路線';

  @override
  String get pickupPoint => '接送點';

  @override
  String get enterPickupPoint => '輸入上車點';

  @override
  String get dropoffPoint => '下車點';

  @override
  String get enterDropoffPoint => '輸入下車點';

  @override
  String get stopPoint => '停止點';

  @override
  String get enterStopPoint => '輸入停止點';

  @override
  String get confirm => '確認';

  @override
  String get confirmDropoff => '確認還車';

  @override
  String get confirmPickup => '確認接機';

  @override
  String get enterAtLeast3Characters => '輸入至少3個字符';

  @override
  String get noResults => '沒有結果';

  @override
  String get bookNow => '現在預訂';

  @override
  String get cash => '現金';

  @override
  String get online => '在線的';

  @override
  String get offline => '離線';

  @override
  String get onTrip => '旅途中';

  @override
  String get confirmPay => '確認';

  @override
  String get cancel => '取消';

  @override
  String get apply => '申請';

  @override
  String get enterCouponCode => '輸入優惠券代碼';

  @override
  String get reserveRide => '預約乘車';

  @override
  String get reserveRideMessage => '選擇您希望預訂行程的確切日期和時間';

  @override
  String get reserveRideMessageSuccess => '您的行程已成功預訂。您可以在「預定行程」部分查看您預訂的行程。';

  @override
  String get cancelReservation => '取消預訂';

  @override
  String get confirmResrve => '確認';

  @override
  String get enterCouponDescription => '輸入您的優惠券代碼以應用於價格';

  @override
  String get enterCoupon => '輸入優惠券';

  @override
  String get couponApplied => '已應用優惠券';

  @override
  String get couponAppliedDescription => '優惠券已應用於您的行程票價';

  @override
  String get done => '完畢！';

  @override
  String get ridePreferences => '乘車偏好';

  @override
  String get noWaitTime => '無需等待時間';

  @override
  String minutesRange(String minutes) {
    return '$minutes分鐘';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds秒';
  }

  @override
  String get rideRequested => '請求乘車';

  @override
  String get searchingForAnOnlineDriver => '正在尋找線上驅動程式...';

  @override
  String get cancelRide => '取消行程';

  @override
  String get rideSafety => '搭乘安全';

  @override
  String get shareTripInformation => '分享行程資訊';

  @override
  String get shareTripInformationDescription => '您可以與朋友分享您的旅遊訊息';

  @override
  String get sos => '求救';

  @override
  String get sosDescription => '讓當局知道緊急狀況';

  @override
  String get reportAnIssue => '報告問題';

  @override
  String get reportAnIssueMidTripDescription => '分享旅途中的安全問題';

  @override
  String get rideOptions => '乘車選擇';

  @override
  String get goBackToRide => '回去騎車';

  @override
  String get waitTime => '等待時間';

  @override
  String get couponCode => '優惠券代碼';

  @override
  String get giftCardCode => '禮品卡代碼';

  @override
  String get nicePoints => '不錯的點';

  @override
  String get negativePoints => '負分';

  @override
  String get reviewCommentBoxHint => '新增評論...';

  @override
  String get howWasYourTrip => '你的旅途怎麼樣？';

  @override
  String oneStarReviewTitle(String name) {
    return '和 $name 一起度過了一次糟糕的旅行';
  }

  @override
  String twoStarReviewTitle(String name) {
    return '$name 的糟糕旅行';
  }

  @override
  String threeStarReviewTitle(String name) {
    return '平均行程$name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return '和$name一起旅行很愉快';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return '和$name一起度過很棒的旅行';
  }

  @override
  String get submitFeedback => '提交回饋';

  @override
  String get typeAMessage => '輸入訊息';

  @override
  String get findAnotherRide => '找另一趟車';

  @override
  String get next => '下一個';

  @override
  String get searchForDropoffLocation => '搜尋下車地點';

  @override
  String get searchForPickupLocation => '搜尋上車地點';

  @override
  String get placeConfirmDialogPlaceholder => '您的下車地點在哪裡？';

  @override
  String get noAnnouncements => '沒有公告';

  @override
  String get announcements => '公告';

  @override
  String reviewsCount(int count) {
    return '（$count 評論）';
  }

  @override
  String get tripDetails => '行程詳情';

  @override
  String get rideDetails => '乘車詳情';

  @override
  String get orderARide => '叫車';

  @override
  String get noRidesYet => '還沒有騎車！';

  @override
  String get issueSubjectPlaceholder => '輸入問題的主題';

  @override
  String get issueContentPlaceholder => '輸入問題的描述';

  @override
  String get reportThisIssue => '報告此問題';

  @override
  String get fieldIsRequired => '欄位為必填項';

  @override
  String get ok => '好的';

  @override
  String get favoriteLocations => '最喜歡的地點';

  @override
  String get favoriteLocationsSubtitle => '保存您最喜歡的位置以便於訪問';

  @override
  String get createAFavoriteLocation => '創造最喜歡的位置';

  @override
  String get addressTitleLabel => '地址的標題';

  @override
  String get clickToSetLocation => '點擊設定位置';

  @override
  String get whereIsYourNewFavoriteLocation => '您最喜歡的新地點在哪裡？';

  @override
  String get locateFavoriteLocationDescription => '使用下面的搜尋框或地圖來固定確切位置';

  @override
  String get searchLocation => '搜尋地點';

  @override
  String get saveChanges => '儲存變更';

  @override
  String get rideHistory => '騎行歷史';

  @override
  String get scheduledRides => '預定行程';

  @override
  String get keepTheOrder => '保留訂單';

  @override
  String get cancelTheRide => '取消行程';

  @override
  String get walletBalance => '錢包餘額';

  @override
  String get activities => '活動';

  @override
  String get pleaseEnterGiftCardCode => '請輸入禮品卡代碼';

  @override
  String get redeem => '贖回';

  @override
  String get enterGiftCardCode => '輸入禮品卡代碼';

  @override
  String get redeemGiftCard => '兌換禮品卡';

  @override
  String get redeemGiftCardDescription => '輸入您的禮品卡代碼進行兌換。';

  @override
  String get redeemSuccessTitle => '禮品卡已兌換！';

  @override
  String redeemSuccessDescription(String amount) {
    return '您已成功兌換$amount張禮品卡。';
  }

  @override
  String get addCredit => '添加信用';

  @override
  String get payNow => '現在付款';

  @override
  String get addCreditToWallet => '向錢包添加信用';

  @override
  String get pleaseSelectAmount => '請選擇金額';

  @override
  String get enterAmount => '輸入金額';

  @override
  String get selectAmount => '選擇金額：';

  @override
  String get wallet => '錢包';

  @override
  String get totalRides => '總騎乘次數';

  @override
  String get appSettings => '應用程式設定';

  @override
  String get mapSettings => '地圖設定';

  @override
  String get lanugageSettings => '語言設定';

  @override
  String get paymentMethods => '支付方式';

  @override
  String get selectCards => '選擇卡片';

  @override
  String get selectCardsDescription => '您可以選擇要在發票上的付款方式清單中顯示的卡號。';

  @override
  String get delete => '刪除';

  @override
  String get nameOnCard => '卡片上的名字';

  @override
  String get profile => '輪廓';

  @override
  String get scheduledRide => '預定乘車';

  @override
  String get addPaymentMethod => '新增付款方式';

  @override
  String get addPaymentMethodDescription => '在您的帳戶中新增新的付款方式';

  @override
  String get saveCard => '儲存卡';

  @override
  String get selectDialCode => '選擇撥號代碼';

  @override
  String get searchCountryName => '搜尋國家名稱';

  @override
  String get preferences => '優先：';

  @override
  String get onboardingDescription => '立即註冊您的帳戶並享受舒適的乘車體驗';

  @override
  String get signInSignUp => '登入註冊';

  @override
  String get enterOtp => '輸入一次性密碼';

  @override
  String get enterPassword => '輸入密碼';

  @override
  String get enterPasswordDescription => '請輸入您的密碼以繼續';

  @override
  String get setPassword => '設定密碼';

  @override
  String get password => '密碼';

  @override
  String get passwordRuleDescription => '至少包括以下兩項：';

  @override
  String get passwordRuleLength => '9 到 64 個字元之間';

  @override
  String get passwordRuleUpperCase => '大寫字母';

  @override
  String get passwordRuleLowerCase => '小寫字母';

  @override
  String get passwordRuleNumber => '數位';

  @override
  String get passwordRuleSpecialCharacter => '特殊字元';

  @override
  String get contactDetails => '聯絡方式';

  @override
  String get vehicleDetails => '車輛詳情';

  @override
  String get payoutInformation => '支付訊息';

  @override
  String get documents => '文件';

  @override
  String get accessDenied => '拒絕訪問';

  @override
  String get success => '成功';

  @override
  String get skipForNow => '暫時跳過';

  @override
  String get sendOtpDescription => '驗證碼已發送至您的手機號碼';

  @override
  String get resendOtp => '重新發送驗證碼';

  @override
  String get useOtpInstead => '使用 OTP 代替';

  @override
  String get home => '家';

  @override
  String get logout => '登出';

  @override
  String get driverLicenseNumber => '駕駛執照號碼';

  @override
  String get email => '電子郵件';

  @override
  String get address => '地址';

  @override
  String get gender => '性別';

  @override
  String get genderMale => '男性';

  @override
  String get genderFemale => '女性';

  @override
  String get genderUnknown => '中性/未知';

  @override
  String get vehiclePlateNumber => '車牌號碼';

  @override
  String get vehicleColor => '車輛顏色';

  @override
  String get vehicleModelAndMake => '車輛型號 ';

  @override
  String get vehicleProductionYear => '車輛生產年份';

  @override
  String get bankName => '銀行名';

  @override
  String get bankRoutingNumber => '銀行路由號碼';

  @override
  String get bankAccountNumber => '銀行帳號';

  @override
  String get bankSwift => 'SWIFT代碼';

  @override
  String get uploadImage => '上傳圖片';

  @override
  String get yourBalance => '您的餘額';

  @override
  String get rideCancellation => '取消乘車';

  @override
  String get cancelRideMessage => '您確定要取消行程嗎？';

  @override
  String get cancelRideSuccess => '行程已成功取消';

  @override
  String get confirmAndCancelRide => '確認 ';

  @override
  String get selectPaymentMethod => '選擇付款方式';

  @override
  String get rideFeePaid => '乘車費已支付';

  @override
  String get rideFeeUnpaid => '乘車費尚未支付';

  @override
  String get total => '全部的';

  @override
  String get totalPrice => '總價';

  @override
  String get addCustomCredit => '新增自訂編輯';

  @override
  String get serviceFee => '服務費';

  @override
  String get serviceOptionFee => '服務選擇費';

  @override
  String get couponDiscount => '優惠券折扣';

  @override
  String get walletCreit => '錢包信用';

  @override
  String get custom => '風俗';

  @override
  String get payment => '支付';

  @override
  String get cashPayment => '現金支付';

  @override
  String cashPaymentDescription(String amount) {
    return '您確認收到$amount嗎？';
  }

  @override
  String get cashPaymentReceived => '收到現金付款';

  @override
  String get confirmAndEndTrip => '確認';

  @override
  String get earnings => '效益';

  @override
  String get acceptOrder => '接受訂單';

  @override
  String get canceled => '取消';

  @override
  String get unknown => '未知';

  @override
  String get commission => '委員會';

  @override
  String get selectProfileImage => '選擇個人資料圖片';

  @override
  String get chooseAvatarDescription => '或從下面的清單中選擇一個頭像：';

  @override
  String get fullName => '全名';

  @override
  String get favoriteDrivers => '最喜歡的車手';

  @override
  String get distanceTraveled => '行駛距離';

  @override
  String get rating => '評分';

  @override
  String get map => '地圖';

  @override
  String get income => '收入';

  @override
  String get timeSpent => '所花費的時間';

  @override
  String get daily => '日常的';

  @override
  String get monthly => '每月';

  @override
  String get noRecordsFoundEarnings => '沒有找到這些過濾器的行程記錄';

  @override
  String get feedbacksSummaryEmptyStateHeading => '還沒有回饋';

  @override
  String get feedbacksSummaryEmptyStateTitle => '您還沒有足夠的回饋可以顯示。';

  @override
  String get feedbacksSummary => '回饋總結';

  @override
  String get feedbacksGoodTitle => '幹得好！';

  @override
  String get feedbacksGoodSubtitle => '到目前為止您的評分看起來不錯';

  @override
  String get feedbacksBadTitle => '平均的';

  @override
  String get feedbacksBadSubtitle => '您可以使用一些改進';

  @override
  String get feedbacksGoodPointsTitle => '關於你的一些優點：';

  @override
  String get feedbacksbadPointsTitle => '您可以改進的一些點：';

  @override
  String get feedbacksReviewsTitle => '一些早期的評論';

  @override
  String get payoutMethods => '支付方式';

  @override
  String get notice => '注意：';

  @override
  String get payoutNoticeTitle => '管理員每週將自動向您支付兩次費用。';

  @override
  String get addPayoutMethod => '新增付款方式';

  @override
  String get navigate => '導航';

  @override
  String get noPayoutMethods => '沒有付款方式';

  @override
  String get name => '姓名';

  @override
  String get nameHint => '輸入名字';

  @override
  String get bankNameHint => '輸入銀行名稱';

  @override
  String get branchName => '分店名稱';

  @override
  String get branchNameHint => '輸入分行名稱';

  @override
  String get accountHolderName => '帳戶持有人姓名';

  @override
  String get routingNumber => '路由號碼';

  @override
  String get routingNumberHint => '輸入路由號碼';

  @override
  String get accountNumber => '帳號';

  @override
  String get accountNumberHint => '輸入帳號';

  @override
  String get addressHint => '輸入地址';

  @override
  String get dateOfBith => '出生日期';

  @override
  String get yearHint => '年';

  @override
  String get monthHint => '月';

  @override
  String get dayHint => '天';

  @override
  String get city => '城市';

  @override
  String get cityHint => '輸入城市';

  @override
  String get state => '狀態';

  @override
  String get stateHint => '輸入狀態';

  @override
  String get zipCode => '郵遞區號';

  @override
  String get zipCodeHint => '輸入郵政編號';

  @override
  String get day => '天';

  @override
  String get month => '月';

  @override
  String get year => '年';

  @override
  String get noActivitiesYet => '還沒有活動。';

  @override
  String get headingToDestination => '前往目的地';

  @override
  String get driverArrivedNotice => '司機在等你';

  @override
  String get driverShouldAriveInNotice => '司機預計抵達';

  @override
  String get driverShouldHaveArrivedNotice => '司機現在應該隨時到達';

  @override
  String get deleteAccount => '刪除帳戶';

  @override
  String get deleteAccountNotice => '您確定要刪除您的帳戶嗎？ 30 天后，您的帳戶將永久刪除。在此期間，您可以透過重新登入來恢復您的帳戶。';

  @override
  String get confirmAndDeleteAccount => '確認 ';

  @override
  String get accountDeleted => '帳戶已被刪除';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return '我正在從 $pickup 到 $destination 的路上。';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' 我的司機姓名是$firstName$lastName，手機號碼是$mobileNumber。';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' 我的騎士名字是$firstName$lastName，手機號碼是$mobileNumber。';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' 行程於 $startTime 開始，預計行程約需 $duration 分鐘';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' 我預計，一旦我上了司機的車，行程大約需要 $duration 分鐘。';
  }

  @override
  String get sendSOSMessage => '重要提示：請僅在緊急情況下使用此功能。我們將代表您聯繫當局。';

  @override
  String get confirmAndSendSOS => '確認';

  @override
  String get sosSentSuccessfully => 'SOS 已成功發送';

  @override
  String get topUpSuccess => '錢包已儲值成功';

  @override
  String get cancelNotAllowed => '無法取消已開始的行程。';

  @override
  String get error => '錯誤';

  @override
  String get connectionError => '連線錯誤';

  @override
  String get serverError => '伺服器錯誤';

  @override
  String get addNewLocation => '新增位置';

  @override
  String get twoWayTrip => '兩程行程';

  @override
  String get reportSubmitted => '報告已提交';

  @override
  String get reportSubmittedDescription => '您的報告已成功提交，我們將對其進行審核並採取必要的措施。';

  @override
  String get cardNumber => '卡號';

  @override
  String get cardNumberHint => '輸入卡號';

  @override
  String get expiryDate => '到期日';

  @override
  String get expiryDateHint => '月/年';

  @override
  String get noFavoriteDrivers => '沒有最喜歡的車手';

  @override
  String get noFavoriteDriversDescription => '您可以在行程結束後對您喜歡的司機進行評分時將其標記為最愛。';

  @override
  String get pickupLocationNotFound => '我們無法使用 GPS 作為上車點來確定您目前的位置。請手動輸入您的接送點。';

  @override
  String get dragToSelect => '拖曳選擇';

  @override
  String get skip => '跳過';

  @override
  String get openSettings => '開啟設定';

  @override
  String get locationPermission => '位置許可';

  @override
  String get locationPermissionDeniedForeverMessage => '位置許可是接收您周圍的訂單以及騎士追蹤您的位置的必要條件。未經此許可，您無法接收訂單，我們會留意您目前的位置。您可以在手機設定中變更此權限。';

  @override
  String get allow => '允許';

  @override
  String get driverOnlineTitle => '尋找乘車服務';

  @override
  String get driverOfflineTitle => '上網開始接收請求';

  @override
  String get payInCash => '現金支付';

  @override
  String get payInCashDescription => '請向司機支付現金。司機收到付款後將確認付款。';

  @override
  String get addToFavoriteDrivers => '添加到最喜歡的驅動程式';

  @override
  String get slideToConfirmArrival => '滑動確認到達';

  @override
  String get slideToConfirmPickup => '滑動確認取貨';

  @override
  String get slideToConfirmDropoff => '滑動以確認還車';

  @override
  String get noticePickingUpRiderIn => '在以下地點接載乘客：';

  @override
  String get noticeRiderNotified => '乘客已收到通知，接載乘客並開始騎行';
}
