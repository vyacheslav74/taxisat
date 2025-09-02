import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Thai (`th`).
class STh extends S {
  STh([String locale = 'th']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'ลิขสิทธิ์© $company สงวนลิขสิทธิ์';
  }

  @override
  String get welcomeTitle => 'ยินดีต้อนรับสู่แอป';

  @override
  String get today => 'วันนี้';

  @override
  String get yesterday => 'เมื่อวาน';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get profileInfo => 'ข้อมูลโปรไฟล์';

  @override
  String get language => 'ภาษา';

  @override
  String get firstName => 'ชื่อจริง';

  @override
  String get lastName => 'นามสกุล';

  @override
  String get mobileNumber => 'เบอร์มือถือ';

  @override
  String get edit => 'แก้ไข';

  @override
  String get enterCode => 'ใส่รหัส';

  @override
  String get editProfile => 'แก้ไขโปรไฟล์';

  @override
  String get bankTransfer => 'โอนเงินผ่านธนาคาร';

  @override
  String get gift => 'ของขวัญ';

  @override
  String get correction => 'การแก้ไข';

  @override
  String get inappPayment => 'การชำระเงินในแอป';

  @override
  String get orderFee => 'ค่าธรรมเนียมการสั่งซื้อ';

  @override
  String get parkingFee => 'ค่าจอดรถ';

  @override
  String get cancellationFee => 'ค่าธรรมเนียมการยกเลิก';

  @override
  String get withdraw => 'ถอน';

  @override
  String get walletTransactions => 'ธุรกรรมกระเป๋าเงิน';

  @override
  String get addCard => 'เพิ่มการ์ด';

  @override
  String get visa => 'วีซ่า';

  @override
  String get mastercard => 'มาสเตอร์การ์ด';

  @override
  String get addBalance => 'เพิ่มความสมดุล';

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
      other: '$hoursString ชั่วโมง',
      one: '$hoursString ชั่วโมง',
      zero: 'Zero hours',
    );
    return 'ระยะเวลา: $_temp0';
  }

  @override
  String get timePastDue => 'เลยกำหนดชำระแล้ว';

  @override
  String get justNow => 'แค่ตอนนี้';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString ม';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceString กม';
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
  String get welcomeSubtitle => 'บริการแท็กซี่ที่ออกแบบมาเพื่อความสะดวกสบายของคุณ มีทริปพร้อมคนขับคนโปรดของคุณ และเลือกรูปแบบการเดินทางของคุณ';

  @override
  String get onboardingRewardTitle => 'รับรางวัล!';

  @override
  String get onboardingRewardSubtitle => 'รับโบนัสพิเศษจากการแนะนำเพื่อน การเดินทางให้สำเร็จ และอื่นๆ อีกมากมาย...';

  @override
  String get selectLanguage => 'เลือกภาษา';

  @override
  String get searchForLanguage => 'ค้นหาภาษา';

  @override
  String get enterPhoneNumber => 'ป้อนหมายเลขโทรศัพท์';

  @override
  String get actionContinue => 'ดำเนินการต่อ';

  @override
  String get whereIsYourDestination => 'จุดหมายปลายทางของคุณอยู่ที่ไหน?';

  @override
  String get whereAreYouGoing => 'คุณกำลังจะไปไหน';

  @override
  String get selectDestinations => 'เส้นทางของคุณ';

  @override
  String get pickupPoint => 'จุดรับของ';

  @override
  String get enterPickupPoint => 'เข้าสู่จุดรับ';

  @override
  String get dropoffPoint => 'จุดลงรถ';

  @override
  String get enterDropoffPoint => 'เข้าสู่จุดลงรถ';

  @override
  String get stopPoint => 'จุดหยุด';

  @override
  String get enterStopPoint => 'เข้าสู่จุดหยุด';

  @override
  String get confirm => 'ยืนยัน';

  @override
  String get confirmDropoff => 'ยืนยันการลงรถ';

  @override
  String get confirmPickup => 'ยืนยันการรับของ';

  @override
  String get enterAtLeast3Characters => 'ป้อนอย่างน้อย 3 ตัวอักษร';

  @override
  String get noResults => 'ไม่มีผลลัพธ์';

  @override
  String get bookNow => 'จองตอนนี้';

  @override
  String get cash => 'เงินสด';

  @override
  String get online => 'ออนไลน์';

  @override
  String get offline => 'ออฟไลน์';

  @override
  String get onTrip => 'ในการเดินทาง';

  @override
  String get confirmPay => 'ยืนยัน ';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get apply => 'นำมาใช้';

  @override
  String get enterCouponCode => 'ใส่รหัสคูปอง';

  @override
  String get reserveRide => 'จองขี่';

  @override
  String get reserveRideMessage => 'เลือกวันที่และเวลาที่คุณต้องการจองรถ';

  @override
  String get reserveRideMessageSuccess => 'การจองรถของคุณสำเร็จแล้ว คุณสามารถดูการเดินทางที่จองไว้ได้ในส่วน \"การเดินทางตามกำหนดการ\"';

  @override
  String get cancelReservation => 'ยกเลิกการจอง';

  @override
  String get confirmResrve => 'ยืนยัน ';

  @override
  String get enterCouponDescription => 'ใส่รหัสคูปองของคุณเพื่อใช้กับราคา';

  @override
  String get enterCoupon => 'ใส่คูปอง';

  @override
  String get couponApplied => 'ใช้คูปองแล้ว';

  @override
  String get couponAppliedDescription => 'มีการใช้คูปองกับค่าโดยสารของคุณแล้ว';

  @override
  String get done => 'เสร็จแล้ว!';

  @override
  String get ridePreferences => 'การตั้งค่าการขี่';

  @override
  String get noWaitTime => 'ไม่มีเวลารอ';

  @override
  String minutesRange(String minutes) {
    return '$minutes นาที';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds วินาที';
  }

  @override
  String get rideRequested => 'เรียกรถแล้ว';

  @override
  String get searchingForAnOnlineDriver => 'กำลังค้นหาไดรเวอร์ออนไลน์...';

  @override
  String get cancelRide => 'ยกเลิกการโดยสาร';

  @override
  String get rideSafety => 'ความปลอดภัยในการขับขี่';

  @override
  String get shareTripInformation => 'แบ่งปันข้อมูลการเดินทาง';

  @override
  String get shareTripInformationDescription => 'คุณสามารถแบ่งปันข้อมูลการเดินทางของคุณกับเพื่อนได้';

  @override
  String get sos => 'สัญญาณขอความช่วยเหลือ';

  @override
  String get sosDescription => 'แจ้งให้เจ้าหน้าที่ทราบถึงเหตุฉุกเฉิน';

  @override
  String get reportAnIssue => 'รายงานปัญหา';

  @override
  String get reportAnIssueMidTripDescription => 'แบ่งปันประเด็นด้านความปลอดภัยในการเดินทาง';

  @override
  String get rideOptions => 'ตัวเลือกการขับขี่';

  @override
  String get goBackToRide => 'กลับไปขี่ได้เลย';

  @override
  String get waitTime => 'รอเวลา';

  @override
  String get couponCode => 'รหัสคูปอง';

  @override
  String get giftCardCode => 'รหัสบัตรของขวัญ';

  @override
  String get nicePoints => 'จุดที่ดี';

  @override
  String get negativePoints => 'จุดลบ';

  @override
  String get reviewCommentBoxHint => 'เพิ่มความคิดเห็น...';

  @override
  String get howWasYourTrip => 'ไปเที่ยวเป็นอย่างไรบ้าง?';

  @override
  String oneStarReviewTitle(String name) {
    return 'ทริปแย่มากกับ $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'ทริปแย่ๆกับ$name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'ทริปเฉลี่ยด้วย $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'เที่ยวดีๆกับ$name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'สุดยอดทริปกับ$name';
  }

  @override
  String get submitFeedback => 'ส่งข้อเสนอแนะ';

  @override
  String get typeAMessage => 'พิมพ์ข้อความ';

  @override
  String get findAnotherRide => 'หารถอีกคัน';

  @override
  String get next => 'ต่อไป';

  @override
  String get searchForDropoffLocation => 'ค้นหาสถานที่ส่งของ';

  @override
  String get searchForPickupLocation => 'ค้นหาสถานที่รับรถ';

  @override
  String get placeConfirmDialogPlaceholder => 'สถานที่ส่งของคุณอยู่ที่ไหน?';

  @override
  String get noAnnouncements => 'ไม่มีประกาศ';

  @override
  String get announcements => 'ประกาศ';

  @override
  String reviewsCount(int count) {
    return '($count บทวิจารณ์)';
  }

  @override
  String get tripDetails => 'รายละเอียดการเดินทาง';

  @override
  String get rideDetails => 'รายละเอียดการขี่';

  @override
  String get orderARide => 'สั่งรถได้เลย';

  @override
  String get noRidesYet => 'ยังไม่มีการขี่!';

  @override
  String get issueSubjectPlaceholder => 'พิมพ์หัวเรื่องของปัญหา';

  @override
  String get issueContentPlaceholder => 'พิมพ์คำอธิบายของปัญหา';

  @override
  String get reportThisIssue => 'รายงานปัญหานี้';

  @override
  String get fieldIsRequired => 'ต้องระบุข้อมูล';

  @override
  String get ok => 'ตกลง';

  @override
  String get favoriteLocations => 'สถานที่โปรด';

  @override
  String get favoriteLocationsSubtitle => 'บันทึกตำแหน่งที่คุณชื่นชอบเพื่อให้เข้าถึงได้ง่ายขึ้น';

  @override
  String get createAFavoriteLocation => 'สร้างสถานที่โปรด';

  @override
  String get addressTitleLabel => 'ชื่อที่อยู่';

  @override
  String get clickToSetLocation => 'คลิกเพื่อกำหนดตำแหน่ง';

  @override
  String get whereIsYourNewFavoriteLocation => 'สถานที่โปรดแห่งใหม่ของคุณคือที่ไหน?';

  @override
  String get locateFavoriteLocationDescription => 'ใช้ช่องค้นหาด้านล่างหรือแผนที่เพื่อปักหมุดตำแหน่งที่แน่นอน';

  @override
  String get searchLocation => 'ค้นหาตำแหน่ง';

  @override
  String get saveChanges => 'บันทึกการเปลี่ยนแปลง';

  @override
  String get rideHistory => 'ประวัติการขี่';

  @override
  String get scheduledRides => 'กำหนดการเดินทาง';

  @override
  String get keepTheOrder => 'เก็บออเดอร์ไว้.';

  @override
  String get cancelTheRide => 'ยกเลิกการโดยสาร';

  @override
  String get walletBalance => 'ยอดคงเหลือในกระเป๋าสตางค์';

  @override
  String get activities => 'กิจกรรม';

  @override
  String get pleaseEnterGiftCardCode => 'กรุณากรอกรหัสบัตรของขวัญ';

  @override
  String get redeem => 'ไถ่ถอน';

  @override
  String get enterGiftCardCode => 'ป้อนรหัสบัตรของขวัญ';

  @override
  String get redeemGiftCard => 'แลกบัตรของขวัญ';

  @override
  String get redeemGiftCardDescription => 'ป้อนรหัสบัตรของขวัญของคุณเพื่อแลก';

  @override
  String get redeemSuccessTitle => 'แลกบัตรของขวัญแล้ว!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'คุณแลกบัตรของขวัญ $amount สำเร็จแล้ว';
  }

  @override
  String get addCredit => 'เพิ่มเครดิต';

  @override
  String get payNow => 'จ่ายตอนนี้';

  @override
  String get addCreditToWallet => 'เพิ่มเครดิตในกระเป๋าเงิน';

  @override
  String get pleaseSelectAmount => 'กรุณาเลือกจำนวนเงิน';

  @override
  String get enterAmount => 'ใส่จำนวนเงิน';

  @override
  String get selectAmount => 'เลือกจำนวนเงิน:';

  @override
  String get wallet => 'กระเป๋าสตางค์';

  @override
  String get totalRides => 'ขี่ทั้งหมด';

  @override
  String get appSettings => 'การตั้งค่าแอพ';

  @override
  String get mapSettings => 'การตั้งค่าแผนที่';

  @override
  String get lanugageSettings => 'การตั้งค่าภาษา';

  @override
  String get paymentMethods => 'วิธีการชำระเงิน';

  @override
  String get selectCards => 'เลือกการ์ด';

  @override
  String get selectCardsDescription => 'คุณสามารถเลือกหมายเลขบัตรที่คุณต้องการให้แสดงในรายการวิธีการชำระเงินในใบแจ้งหนี้';

  @override
  String get delete => 'ลบ';

  @override
  String get nameOnCard => 'ชื่อบนบัตร';

  @override
  String get profile => 'ประวัติโดยย่อ';

  @override
  String get scheduledRide => 'กำหนดการเดินทาง';

  @override
  String get addPaymentMethod => 'เพิ่มวิธีการชำระเงิน';

  @override
  String get addPaymentMethodDescription => 'เพิ่มวิธีการชำระเงินใหม่ให้กับบัญชีของคุณ';

  @override
  String get saveCard => 'บันทึกการ์ด';

  @override
  String get selectDialCode => 'เลือกรหัสการโทร';

  @override
  String get searchCountryName => 'ค้นหาชื่อประเทศ';

  @override
  String get preferences => 'การตั้งค่า:';

  @override
  String get onboardingDescription => 'อีกไม่กี่นาทีจากการลงทะเบียนบัญชีของคุณและเพลิดเพลินกับการเดินทางที่สะดวกสบาย';

  @override
  String get signInSignUp => 'เข้าสู่ระบบ / ลงทะเบียน';

  @override
  String get enterOtp => 'กรอกรหัส OTP';

  @override
  String get enterPassword => 'ใส่รหัสผ่าน';

  @override
  String get enterPasswordDescription => 'กรุณากรอกรหัสผ่านเพื่อดำเนินการต่อ';

  @override
  String get setPassword => 'ตั้งรหัสผ่าน';

  @override
  String get password => 'รหัสผ่าน';

  @override
  String get passwordRuleDescription => 'รวมอย่างน้อยสองสิ่งต่อไปนี้:';

  @override
  String get passwordRuleLength => 'ระหว่าง 9 ถึง 64 อักขระ';

  @override
  String get passwordRuleUpperCase => 'ตัวอักษรตัวพิมพ์ใหญ่';

  @override
  String get passwordRuleLowerCase => 'ตัวอักษรตัวพิมพ์เล็ก';

  @override
  String get passwordRuleNumber => 'ตัวเลข';

  @override
  String get passwordRuleSpecialCharacter => 'อักขระพิเศษ';

  @override
  String get contactDetails => 'รายละเอียดการติดต่อ';

  @override
  String get vehicleDetails => 'รายละเอียดยานพาหนะ';

  @override
  String get payoutInformation => 'ข้อมูลการจ่ายเงิน';

  @override
  String get documents => 'เอกสาร';

  @override
  String get accessDenied => 'ปฏิเสธการเข้าใช้';

  @override
  String get success => 'ความสำเร็จ';

  @override
  String get skipForNow => 'ข้ามไปก่อน';

  @override
  String get sendOtpDescription => 'รหัสยืนยันได้ถูกส่งไปยังหมายเลขโทรศัพท์ของคุณแล้ว';

  @override
  String get resendOtp => 'ส่งรหัสอีกครั้ง';

  @override
  String get useOtpInstead => 'ใช้ OTP แทน';

  @override
  String get home => 'บ้าน';

  @override
  String get logout => 'ออกจากระบบ';

  @override
  String get driverLicenseNumber => 'หมายเลขใบขับขี่';

  @override
  String get email => 'อีเมล';

  @override
  String get address => 'ที่อยู่';

  @override
  String get gender => 'เพศ';

  @override
  String get genderMale => 'ชาย';

  @override
  String get genderFemale => 'หญิง';

  @override
  String get genderUnknown => 'เป็นกลาง / ไม่ทราบ';

  @override
  String get vehiclePlateNumber => 'หมายเลขทะเบียนรถ';

  @override
  String get vehicleColor => 'สีรถ';

  @override
  String get vehicleModelAndMake => 'รุ่นรถ ';

  @override
  String get vehicleProductionYear => 'ปีที่ผลิตรถยนต์';

  @override
  String get bankName => 'ชื่อธนาคาร';

  @override
  String get bankRoutingNumber => 'หมายเลขเส้นทางธนาคาร';

  @override
  String get bankAccountNumber => 'หมายเลขบัญชีธนาคาร';

  @override
  String get bankSwift => 'รหัสสวิฟท์';

  @override
  String get uploadImage => 'อัพโหลดรูปภาพ';

  @override
  String get yourBalance => 'ยอดคงเหลือของคุณ';

  @override
  String get rideCancellation => 'การยกเลิกการเดินทาง';

  @override
  String get cancelRideMessage => 'คุณแน่ใจหรือไม่ว่าต้องการยกเลิกการโดยสาร';

  @override
  String get cancelRideSuccess => 'ยกเลิกการโดยสารเรียบร้อยแล้ว';

  @override
  String get confirmAndCancelRide => 'ยืนยัน ';

  @override
  String get selectPaymentMethod => 'เลือกวิธีการชำระเงิน';

  @override
  String get rideFeePaid => 'ชำระค่าขี่เรียบร้อยแล้ว';

  @override
  String get rideFeeUnpaid => 'ยังไม่ได้ชำระค่าธรรมเนียมการโดยสาร';

  @override
  String get total => 'ทั้งหมด';

  @override
  String get totalPrice => 'ราคารวม';

  @override
  String get addCustomCredit => 'เพิ่มการแก้ไขที่กำหนดเอง';

  @override
  String get serviceFee => 'ค่าบริการ';

  @override
  String get serviceOptionFee => 'ค่าธรรมเนียมตัวเลือกบริการ';

  @override
  String get couponDiscount => 'คูปองส่วนลด';

  @override
  String get walletCreit => 'เครดิตกระเป๋าเงิน';

  @override
  String get custom => 'กำหนดเอง';

  @override
  String get payment => 'การชำระเงิน';

  @override
  String get cashPayment => 'จ่ายเงินสด';

  @override
  String cashPaymentDescription(String amount) {
    return 'คุณยืนยันว่าคุณได้รับ $amount หรือไม่?';
  }

  @override
  String get cashPaymentReceived => 'ได้รับการชำระเงินสดแล้ว';

  @override
  String get confirmAndEndTrip => 'ยืนยัน ';

  @override
  String get earnings => 'รายได้';

  @override
  String get acceptOrder => 'ยอมรับคำสั่งซื้อ';

  @override
  String get canceled => 'ยกเลิก';

  @override
  String get unknown => 'ไม่ทราบ';

  @override
  String get commission => 'คณะกรรมการ';

  @override
  String get selectProfileImage => 'เลือกรูปโปรไฟล์';

  @override
  String get chooseAvatarDescription => 'หรือเลือกอวตารจากรายการด้านล่าง:';

  @override
  String get fullName => 'ชื่อเต็ม';

  @override
  String get favoriteDrivers => 'ไดรเวอร์ที่ชื่นชอบ';

  @override
  String get distanceTraveled => 'ระยะทางที่เดินทาง';

  @override
  String get rating => 'เรตติ้ง';

  @override
  String get map => 'แผนที่';

  @override
  String get income => 'รายได้';

  @override
  String get timeSpent => 'ใช้เวลา';

  @override
  String get daily => 'รายวัน';

  @override
  String get monthly => 'รายเดือน';

  @override
  String get noRecordsFoundEarnings => 'ไม่พบบันทึกการเดินทางสำหรับตัวกรองเหล่านี้';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'ยังไม่มีการตอบรับ';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'คุณยังไม่มีความคิดเห็นเพียงพอที่จะแสดง';

  @override
  String get feedbacksSummary => 'สรุปการตอบกลับ';

  @override
  String get feedbacksGoodTitle => 'งานเลิศ!';

  @override
  String get feedbacksGoodSubtitle => 'คะแนนของคุณดูดีจนถึงตอนนี้';

  @override
  String get feedbacksBadTitle => 'เฉลี่ย';

  @override
  String get feedbacksBadSubtitle => 'คุณสามารถใช้การปรับปรุงบางอย่างได้';

  @override
  String get feedbacksGoodPointsTitle => 'ข้อดีบางประการเกี่ยวกับคุณ:';

  @override
  String get feedbacksbadPointsTitle => 'บางจุดที่คุณสามารถปรับปรุงได้:';

  @override
  String get feedbacksReviewsTitle => 'รีวิวก่อนหน้านี้บางส่วน';

  @override
  String get payoutMethods => 'วิธีการจ่ายเงิน';

  @override
  String get notice => 'สังเกต:';

  @override
  String get payoutNoticeTitle => 'คุณจะได้รับเงินโดยอัตโนมัติจากผู้ดูแลระบบสัปดาห์ละสองครั้ง';

  @override
  String get addPayoutMethod => 'เพิ่มวิธีการจ่ายเงิน';

  @override
  String get navigate => 'นำทาง';

  @override
  String get noPayoutMethods => 'ไม่มีวิธีการจ่ายเงิน';

  @override
  String get name => 'ชื่อ';

  @override
  String get nameHint => 'ใส่ชื่อ';

  @override
  String get bankNameHint => 'กรอกชื่อธนาคาร';

  @override
  String get branchName => 'ชื่อสาขา';

  @override
  String get branchNameHint => 'ป้อนชื่อสาขา';

  @override
  String get accountHolderName => 'ชื่อเจ้าของบัญชี';

  @override
  String get routingNumber => 'เส้นทางหมายเลข';

  @override
  String get routingNumberHint => 'ป้อนหมายเลขเส้นทาง';

  @override
  String get accountNumber => 'หมายเลขบัญชี';

  @override
  String get accountNumberHint => 'ใส่หมายเลขบัญชี';

  @override
  String get addressHint => 'กรอกที่อยู่';

  @override
  String get dateOfBith => 'วันเกิด';

  @override
  String get yearHint => 'ปี';

  @override
  String get monthHint => 'เดือน';

  @override
  String get dayHint => 'วัน';

  @override
  String get city => 'เมือง';

  @override
  String get cityHint => 'เข้าเมือง';

  @override
  String get state => 'สถานะ';

  @override
  String get stateHint => 'เข้ารัฐ';

  @override
  String get zipCode => 'รหัสไปรษณีย์';

  @override
  String get zipCodeHint => 'กรอกรหัสไปรษณีย์';

  @override
  String get day => 'วัน';

  @override
  String get month => 'เดือน';

  @override
  String get year => 'ปี';

  @override
  String get noActivitiesYet => 'ยังไม่มีกิจกรรมใดๆ';

  @override
  String get headingToDestination => 'มุ่งหน้าไปยังจุดหมายปลายทาง';

  @override
  String get driverArrivedNotice => 'คนขับกำลังรอคุณอยู่';

  @override
  String get driverShouldAriveInNotice => 'คาดว่าคนขับจะมาถึงแล้ว';

  @override
  String get driverShouldHaveArrivedNotice => 'คนขับควรจะมาถึงในเวลาใดก็ได้ตอนนี้';

  @override
  String get deleteAccount => 'ลบบัญชี';

  @override
  String get deleteAccountNotice => 'คุณแน่ใจหรือไม่ว่าต้องการลบบัญชีของคุณ? หลังจาก 30 วัน บัญชีของคุณจะถูกลบอย่างถาวร ในระหว่างนี้ คุณสามารถกู้คืนบัญชีของคุณได้โดยการลงชื่อเข้าใช้อีกครั้ง';

  @override
  String get confirmAndDeleteAccount => 'ยืนยัน ';

  @override
  String get accountDeleted => 'บัญชีถูกลบแล้ว';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'ฉันกำลังเดินทางไป $destination จาก $pickup';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' ชื่อคนขับของฉันคือ $firstName$lastName เบอร์มือถือคือ $mobileNumber';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' ผู้ขับขี่ที่ชื่อผมคือ $firstName$lastName เบอร์มือถือคือ $mobileNumber';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' การเดินทางเริ่มต้นวันที่ $startTime และคาดว่าการเดินทางจะใช้เวลาประมาณ $duration นาที';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' คาดว่าการเดินทางจะใช้เวลาประมาณ $duration นาที เมื่อลงรถคนขับแล้ว';
  }

  @override
  String get sendSOSMessage => 'สิ่งสำคัญ: โปรดใช้คุณสมบัตินี้ในกรณีฉุกเฉินเท่านั้น เราจะติดต่อเจ้าหน้าที่ในนามของคุณ';

  @override
  String get confirmAndSendSOS => 'ยืนยัน ';

  @override
  String get sosSentSuccessfully => 'ส่ง SOS สำเร็จแล้ว';

  @override
  String get topUpSuccess => 'เติมเงิน Wallet สำเร็จแล้ว';

  @override
  String get cancelNotAllowed => 'ไม่สามารถยกเลิกการเดินทางที่เริ่มต้นแล้วได้';

  @override
  String get error => 'ข้อผิดพลาด';

  @override
  String get connectionError => 'การเชื่อมต่อล้มเหลว';

  @override
  String get serverError => 'เซิร์ฟเวอร์ผิดพลาด';

  @override
  String get addNewLocation => 'เพิ่มสถานที่ใหม่';

  @override
  String get twoWayTrip => 'การเดินทางสองทาง';

  @override
  String get reportSubmitted => 'ส่งรายงานแล้ว';

  @override
  String get reportSubmittedDescription => 'ส่งรายงานของคุณเรียบร้อยแล้ว เราจะตรวจสอบและดำเนินการตามที่จำเป็น';

  @override
  String get cardNumber => 'หมายเลขบัตร';

  @override
  String get cardNumberHint => 'กรอกหมายเลขบัตร';

  @override
  String get expiryDate => 'วันหมดอายุ';

  @override
  String get expiryDateHint => 'ดด/ปป';

  @override
  String get noFavoriteDrivers => 'ไม่มีไดรเวอร์ที่ชื่นชอบ';

  @override
  String get noFavoriteDriversDescription => 'คุณสามารถทำเครื่องหมายผู้ขับขี่ที่คุณต้องการให้เป็นรายการโปรดได้เมื่อให้คะแนนพวกเขาหลังการเดินทาง';

  @override
  String get pickupLocationNotFound => 'เราไม่สามารถระบุตำแหน่งปัจจุบันของคุณโดยใช้ GPS เป็นจุดรับได้ กรุณากรอกจุดรับด้วยตนเอง';

  @override
  String get dragToSelect => 'ลากเพื่อเลือก';

  @override
  String get skip => 'ข้าม';

  @override
  String get openSettings => 'เปิดการตั้งค่า';

  @override
  String get locationPermission => 'การอนุญาตสถานที่';

  @override
  String get locationPermissionDeniedForeverMessage => 'การอนุญาตตำแหน่งเป็นข้อกำหนดในการรับคำสั่งซื้อรอบตัวคุณและเพื่อให้ผู้ขับขี่ติดตามตำแหน่งของคุณ คุณไม่สามารถรับคำสั่งซื้อได้หากไม่ได้รับอนุญาตนี้ และเราจะระวังตำแหน่งปัจจุบันของคุณ คุณสามารถเปลี่ยนการอนุญาตนี้ได้ในการตั้งค่าโทรศัพท์ของคุณ';

  @override
  String get allow => 'อนุญาต';

  @override
  String get driverOnlineTitle => 'กำลังค้นหารถ';

  @override
  String get driverOfflineTitle => 'ออนไลน์เพื่อเริ่มรับคำขอ';

  @override
  String get payInCash => 'จ่ายเงินสด';

  @override
  String get payInCashDescription => 'กรุณาดำเนินการชำระเงินสดให้กับพนักงานขับรถ พนักงานขับรถจะยืนยันการชำระเงินเมื่อได้รับเงินแล้ว';

  @override
  String get addToFavoriteDrivers => 'เพิ่มไปยังไดรเวอร์ที่ชื่นชอบ';

  @override
  String get slideToConfirmArrival => 'เลื่อนเพื่อยืนยันการมาถึง';

  @override
  String get slideToConfirmPickup => 'เลื่อนเพื่อยืนยันการรับสินค้า';

  @override
  String get slideToConfirmDropoff => 'เลื่อนเพื่อยืนยันการไปส่ง';

  @override
  String get noticePickingUpRiderIn => 'การรับผู้โดยสารใน:';

  @override
  String get noticeRiderNotified => 'ผู้ขับขี่ได้รับแจ้งแล้ว ให้รับผู้ขับขี่และเริ่มการเดินทาง';
}
