import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Turkish (`tr`).
class STr extends S {
  STr([String locale = 'tr']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Telif hakkı © $company, Tüm hakları saklıdır.';
  }

  @override
  String get welcomeTitle => 'Uygulamaya hoş geldiniz';

  @override
  String get today => 'Bugün';

  @override
  String get yesterday => 'Dün';

  @override
  String get settings => 'Ayarlar';

  @override
  String get about => 'Hakkında';

  @override
  String get profileInfo => 'Profil bilgisi';

  @override
  String get language => 'Dil';

  @override
  String get firstName => 'İlk adı';

  @override
  String get lastName => 'Soy isim';

  @override
  String get mobileNumber => 'Cep numarası';

  @override
  String get edit => 'Düzenlemek';

  @override
  String get enterCode => 'Kodu girin';

  @override
  String get editProfile => 'Profili Düzenle';

  @override
  String get bankTransfer => 'Banka transferi';

  @override
  String get gift => 'Hediye';

  @override
  String get correction => 'Düzeltme';

  @override
  String get inappPayment => 'Uygulama içi ödeme';

  @override
  String get orderFee => 'Sipariş ücreti';

  @override
  String get parkingFee => 'Otopark ücreti';

  @override
  String get cancellationFee => 'İptal ücreti';

  @override
  String get withdraw => 'Geri çekilmek';

  @override
  String get walletTransactions => 'Cüzdan işlemleri';

  @override
  String get addCard => 'Kart ekle';

  @override
  String get visa => 'Vize';

  @override
  String get mastercard => 'MasterCard';

  @override
  String get addBalance => 'Bakiye ekle';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Dakika',
      one: '$minutesString Dakika',
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
      other: '$hoursString Saat',
      one: '$hoursString Saat',
      zero: 'Zero hours',
    );
    return 'Süre: $_temp0';
  }

  @override
  String get timePastDue => 'Vadesi geçmiş';

  @override
  String get justNow => 'Şu anda';

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
  String get welcomeSubtitle => 'Konforunuz için tasarlanan taksi hizmeti, favori sürücülerinizle yolculuk yapın ve yolculuk tercihlerinizi seçin';

  @override
  String get onboardingRewardTitle => 'Ödüllendirmek!';

  @override
  String get onboardingRewardSubtitle => 'Bir arkadaşınıza tavsiyede bulunarak, gezileri tamamlayarak ve çok daha fazlasını yaparak ekstra bonuslar kazanın...';

  @override
  String get selectLanguage => 'Dil Seçin';

  @override
  String get searchForLanguage => 'Dil ara';

  @override
  String get enterPhoneNumber => 'Telefon Numarasını Girin';

  @override
  String get actionContinue => 'Devam etmek';

  @override
  String get whereIsYourDestination => 'Hedefiniz nerede?';

  @override
  String get whereAreYouGoing => 'Nereye gidiyorsun?';

  @override
  String get selectDestinations => 'Rotanız';

  @override
  String get pickupPoint => 'Alma noktası';

  @override
  String get enterPickupPoint => 'Toplama noktasını girin';

  @override
  String get dropoffPoint => 'Bırakma noktası';

  @override
  String get enterDropoffPoint => 'Bırakma noktasını girin';

  @override
  String get stopPoint => 'Durma noktası';

  @override
  String get enterStopPoint => 'Durma noktasını girin';

  @override
  String get confirm => 'Onaylamak';

  @override
  String get confirmDropoff => 'Bırakmayı onayla';

  @override
  String get confirmPickup => 'Teslim almayı onayla';

  @override
  String get enterAtLeast3Characters => 'En az 3 karakter girin';

  @override
  String get noResults => 'Sonuç yok';

  @override
  String get bookNow => 'Şimdi Rezervasyon Yapın';

  @override
  String get cash => 'Peşin';

  @override
  String get online => 'Çevrimiçi';

  @override
  String get offline => 'Çevrimdışı';

  @override
  String get onTrip => 'Seyahatte';

  @override
  String get confirmPay => 'Onaylamak ';

  @override
  String get cancel => 'İptal etmek';

  @override
  String get apply => 'Uygula';

  @override
  String get enterCouponCode => 'Kupon kodunu girin';

  @override
  String get reserveRide => 'Rezervasyon yolculuğu';

  @override
  String get reserveRideMessage => 'Yolculuğunuzun rezerve edilmesini istediğiniz tam tarih ve saati seçin';

  @override
  String get reserveRideMessageSuccess => 'Yolculuğunuz başarıyla rezerve edildi. Rezerve edilmiş sürüşlerinizi \'Planlı sürüşler\' bölümünde görüntüleyebilirsiniz.';

  @override
  String get cancelReservation => 'Rezervasyon iptali';

  @override
  String get confirmResrve => 'Onaylamak ';

  @override
  String get enterCouponDescription => 'Fiyatlara uygulanacak kupon kodunuzu girin';

  @override
  String get enterCoupon => 'Kuponu girin';

  @override
  String get couponApplied => 'Kupon uygulandı';

  @override
  String get couponAppliedDescription => 'Kupon yolculuk ücretinize uygulandı';

  @override
  String get done => 'Tamamlamak!';

  @override
  String get ridePreferences => 'Yolculuk Tercihleri';

  @override
  String get noWaitTime => 'Bekleme süresi yok';

  @override
  String minutesRange(String minutes) {
    return '$minutes dakika';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds saniye';
  }

  @override
  String get rideRequested => 'Yolculuk istendi';

  @override
  String get searchingForAnOnlineDriver => 'Çevrimiçi bir sürücü aranıyor...';

  @override
  String get cancelRide => 'Sürüşü iptal et';

  @override
  String get rideSafety => 'Sürüş Güvenliği';

  @override
  String get shareTripInformation => 'Yolculuk bilgilerini paylaşın';

  @override
  String get shareTripInformationDescription => 'Seyahat bilgilerinizi bir arkadaşınızla paylaşabilirsiniz';

  @override
  String get sos => 's.o.s.';

  @override
  String get sosDescription => 'Acil bir durumu yetkililere bildirin';

  @override
  String get reportAnIssue => 'Bir sorunu bildirin';

  @override
  String get reportAnIssueMidTripDescription => 'Seyahat sırasında bir güvenlik sorununu paylaşın';

  @override
  String get rideOptions => 'Sürüş seçenekleri';

  @override
  String get goBackToRide => 'Sürüşe geri dön';

  @override
  String get waitTime => 'Bekleme zamanı';

  @override
  String get couponCode => 'Kupon Kodu';

  @override
  String get giftCardCode => 'Hediye kartı kodu';

  @override
  String get nicePoints => 'Güzel noktalar';

  @override
  String get negativePoints => 'Olumsuz Noktalar';

  @override
  String get reviewCommentBoxHint => 'Yorum ekle...';

  @override
  String get howWasYourTrip => 'Yolculuğunuz nasıldı?';

  @override
  String oneStarReviewTitle(String name) {
    return '$name ile korkunç yolculuk';
  }

  @override
  String twoStarReviewTitle(String name) {
    return '$name ile kötü yolculuk';
  }

  @override
  String threeStarReviewTitle(String name) {
    return '$name ile ortalama yolculuk';
  }

  @override
  String fourStarReviewTitle(String name) {
    return '$name ile iyi yolculuklar';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return '$name ile harika yolculuk';
  }

  @override
  String get submitFeedback => 'Geri bildirim gönder';

  @override
  String get typeAMessage => 'Bir mesaj yazın';

  @override
  String get findAnotherRide => 'Başka bir araç bul';

  @override
  String get next => 'Sonraki';

  @override
  String get searchForDropoffLocation => 'Bırakma konumunu arayın';

  @override
  String get searchForPickupLocation => 'Teslim alma konumunu arayın';

  @override
  String get placeConfirmDialogPlaceholder => 'Bırakma yeriniz nerede?';

  @override
  String get noAnnouncements => 'Duyuru yok';

  @override
  String get announcements => 'Duyurular';

  @override
  String reviewsCount(int count) {
    return '($count değerlendirmeler)';
  }

  @override
  String get tripDetails => 'Seyahat ayrıntıları';

  @override
  String get rideDetails => 'Sürüş ayrıntıları';

  @override
  String get orderARide => 'Yolculuk siparişi ver';

  @override
  String get noRidesYet => 'Henüz yolculuk yok!';

  @override
  String get issueSubjectPlaceholder => 'Sorunun konusunu yazın';

  @override
  String get issueContentPlaceholder => 'Sorunun açıklamasını yazın';

  @override
  String get reportThisIssue => 'Bu sorunu bildirin';

  @override
  String get fieldIsRequired => 'Alan gereklidir';

  @override
  String get ok => 'TAMAM';

  @override
  String get favoriteLocations => 'Favori yerler';

  @override
  String get favoriteLocationsSubtitle => 'Daha kolay erişim için favori konumlarınızı kaydedin';

  @override
  String get createAFavoriteLocation => 'Favori bir konum oluşturun';

  @override
  String get addressTitleLabel => 'Adresin başlığı';

  @override
  String get clickToSetLocation => 'Konumu ayarlamak için tıklayın';

  @override
  String get whereIsYourNewFavoriteLocation => 'Yeni favori mekanınız neresi?';

  @override
  String get locateFavoriteLocationDescription => 'Tam konumu sabitlemek için aşağıdaki arama kutusunu veya haritayı kullanın';

  @override
  String get searchLocation => 'Konum ara';

  @override
  String get saveChanges => 'Değişiklikleri Kaydet';

  @override
  String get rideHistory => 'Yolculuk Geçmişi';

  @override
  String get scheduledRides => 'Planlanmış yolculuklar';

  @override
  String get keepTheOrder => 'Siparişi sakla';

  @override
  String get cancelTheRide => 'Sürüşü iptal et';

  @override
  String get walletBalance => 'Cüzdan bakiyesi';

  @override
  String get activities => 'Faaliyetler';

  @override
  String get pleaseEnterGiftCardCode => 'Lütfen hediye kartı kodunu girin';

  @override
  String get redeem => 'Tazmin etmek';

  @override
  String get enterGiftCardCode => 'Hediye kartı kodunu girin';

  @override
  String get redeemGiftCard => 'Hediye Kartını Kullan';

  @override
  String get redeemGiftCardDescription => 'Kullanmak için hediye kartı kodunuzu girin.';

  @override
  String get redeemSuccessTitle => 'Hediye Kartı Kullanıldı!';

  @override
  String redeemSuccessDescription(String amount) {
    return '$amount hediye kartını başarıyla kullandınız.';
  }

  @override
  String get addCredit => 'Kredi ekle';

  @override
  String get payNow => 'Şimdi öde';

  @override
  String get addCreditToWallet => 'Cüzdana kredi ekleyin';

  @override
  String get pleaseSelectAmount => 'Lütfen tutarı seçin';

  @override
  String get enterAmount => 'Miktarı girin';

  @override
  String get selectAmount => 'Tutar seçin:';

  @override
  String get wallet => 'Cüzdan';

  @override
  String get totalRides => 'Toplam sürüş';

  @override
  String get appSettings => 'Uygulama ayarları';

  @override
  String get mapSettings => 'Harita Ayarları';

  @override
  String get lanugageSettings => 'Dil Ayarları';

  @override
  String get paymentMethods => 'Ödeme metodları';

  @override
  String get selectCards => 'Kartları seçin';

  @override
  String get selectCardsDescription => 'Faturalarda ödeme yöntemleri listesinde görünmesini istediğiniz kart numaralarını seçebilirsiniz.';

  @override
  String get delete => 'Silmek';

  @override
  String get nameOnCard => 'Karttaki isim';

  @override
  String get profile => 'Profil';

  @override
  String get scheduledRide => 'Tarifeli yolculuk';

  @override
  String get addPaymentMethod => 'Ödeme yöntemi ekle';

  @override
  String get addPaymentMethodDescription => 'Hesabınıza yeni bir ödeme yöntemi ekleyin';

  @override
  String get saveCard => 'Kartı kaydet';

  @override
  String get selectDialCode => 'Arama kodunu seçin';

  @override
  String get searchCountryName => 'Ülke adını ara';

  @override
  String get preferences => 'Tercihler:';

  @override
  String get onboardingDescription => 'Hesabınızı kaydetmenize ve konforlu yolculukların keyfini çıkarmanıza birkaç dakika kaldı';

  @override
  String get signInSignUp => 'Giriş yap Kayıt Ol';

  @override
  String get enterOtp => 'OTP\'yi girin';

  @override
  String get enterPassword => 'Parolanı Gir';

  @override
  String get enterPasswordDescription => 'Devam etmek için lütfen şifrenizi girin';

  @override
  String get setPassword => 'Şifreyi belirle';

  @override
  String get password => 'Şifre';

  @override
  String get passwordRuleDescription => 'Aşağıdakilerden en az ikisini ekleyin:';

  @override
  String get passwordRuleLength => '9 ila 64 karakter arasında';

  @override
  String get passwordRuleUpperCase => 'Büyük harfler';

  @override
  String get passwordRuleLowerCase => 'Küçük harfler';

  @override
  String get passwordRuleNumber => 'Sayılar';

  @override
  String get passwordRuleSpecialCharacter => 'Özel karakterler';

  @override
  String get contactDetails => 'İletişim detayları';

  @override
  String get vehicleDetails => 'Araç detayları';

  @override
  String get payoutInformation => 'Ödeme Bilgileri';

  @override
  String get documents => 'Belgeler';

  @override
  String get accessDenied => 'Erişim engellendi';

  @override
  String get success => 'Başarı';

  @override
  String get skipForNow => 'Şimdilik geç';

  @override
  String get sendOtpDescription => 'Telefon numaranıza doğrulama kodu gönderildi';

  @override
  String get resendOtp => 'Yeniden gönderme kodu';

  @override
  String get useOtpInstead => 'Bunun yerine OTP\'yi kullanın';

  @override
  String get home => 'Ev';

  @override
  String get logout => 'Çıkış Yap';

  @override
  String get driverLicenseNumber => 'Sürücü Belgesi Numarası';

  @override
  String get email => 'E-posta';

  @override
  String get address => 'Adres';

  @override
  String get gender => 'Cinsiyet';

  @override
  String get genderMale => 'Erkek';

  @override
  String get genderFemale => 'Dişi';

  @override
  String get genderUnknown => 'Nötr / Bilinmiyor';

  @override
  String get vehiclePlateNumber => 'Araç Plaka Numarası';

  @override
  String get vehicleColor => 'Araç Rengi';

  @override
  String get vehicleModelAndMake => 'Araç modeli ';

  @override
  String get vehicleProductionYear => 'Araç üretim yılı';

  @override
  String get bankName => 'Banka adı';

  @override
  String get bankRoutingNumber => 'Banka yönlendirme numarası';

  @override
  String get bankAccountNumber => 'Banka hesabı numarası';

  @override
  String get bankSwift => 'Swift kodu';

  @override
  String get uploadImage => 'Fotoğraf yükleniyor';

  @override
  String get yourBalance => 'Bakiyeniz';

  @override
  String get rideCancellation => 'Yolculuk İptali';

  @override
  String get cancelRideMessage => 'Yolculuğunuzu iptal etmek istediğinizden emin misiniz?';

  @override
  String get cancelRideSuccess => 'Yolculuk başarıyla iptal edildi';

  @override
  String get confirmAndCancelRide => 'Onaylamak ';

  @override
  String get selectPaymentMethod => 'Ödeme türünü seçin';

  @override
  String get rideFeePaid => 'Araç ücreti ödendi';

  @override
  String get rideFeeUnpaid => 'Araç ücreti henüz ödenmedi';

  @override
  String get total => 'Toplam';

  @override
  String get totalPrice => 'Toplam fiyat';

  @override
  String get addCustomCredit => 'Özel düzenleme ekle';

  @override
  String get serviceFee => 'Servis ücreti';

  @override
  String get serviceOptionFee => 'Hizmet Seçeneği Ücreti';

  @override
  String get couponDiscount => 'Kupon İndirimi';

  @override
  String get walletCreit => 'Cüzdan Kredisi';

  @override
  String get custom => 'Gelenek';

  @override
  String get payment => 'Ödeme';

  @override
  String get cashPayment => 'Nakit ödeme';

  @override
  String cashPaymentDescription(String amount) {
    return '$amount aldığınızı onaylıyor musunuz?';
  }

  @override
  String get cashPaymentReceived => 'Nakit ödeme alındı';

  @override
  String get confirmAndEndTrip => 'Onaylamak ';

  @override
  String get earnings => 'Kazanç';

  @override
  String get acceptOrder => 'Siparişi kabul et';

  @override
  String get canceled => 'İptal edildi';

  @override
  String get unknown => 'Bilinmeyen';

  @override
  String get commission => 'komisyon';

  @override
  String get selectProfileImage => 'Profil Resmini Seçin';

  @override
  String get chooseAvatarDescription => 'Veya aşağıdaki listeden bir avatar seçin:';

  @override
  String get fullName => 'Ad Soyad';

  @override
  String get favoriteDrivers => 'Favori Sürücüler';

  @override
  String get distanceTraveled => 'Kat edilen mesafe';

  @override
  String get rating => 'Değerlendirme';

  @override
  String get map => 'Harita';

  @override
  String get income => 'Gelir';

  @override
  String get timeSpent => 'Harcanan zaman';

  @override
  String get daily => 'Günlük';

  @override
  String get monthly => 'Aylık';

  @override
  String get noRecordsFoundEarnings => 'Bu filtreler için yolculuk kaydı bulunamadı';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Henüz geri bildirim yok';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Henüz gösterilecek yeterli geri bildiriminiz yok.';

  @override
  String get feedbacksSummary => 'Geri Bildirim Özeti';

  @override
  String get feedbacksGoodTitle => 'Mükemmel İş!';

  @override
  String get feedbacksGoodSubtitle => 'Şu ana kadar derecelendirmeleriniz iyi görünüyor';

  @override
  String get feedbacksBadTitle => 'Ortalama';

  @override
  String get feedbacksBadSubtitle => 'Bazı iyileştirmelerden yararlanabilirsiniz';

  @override
  String get feedbacksGoodPointsTitle => 'Hakkınızda bazı iyi noktalar:';

  @override
  String get feedbacksbadPointsTitle => 'Geliştirebileceğiniz bazı noktalar:';

  @override
  String get feedbacksReviewsTitle => 'Daha önceki bazı incelemeler';

  @override
  String get payoutMethods => 'Ödeme Yöntemleri';

  @override
  String get notice => 'Fark etme:';

  @override
  String get payoutNoticeTitle => 'Yönetici tarafından haftada iki kez otomatik olarak ödeme alacaksınız.';

  @override
  String get addPayoutMethod => 'Ödeme Yöntemi Ekle';

  @override
  String get navigate => 'Gezin';

  @override
  String get noPayoutMethods => 'Ödeme yöntemi yok';

  @override
  String get name => 'İsim';

  @override
  String get nameHint => 'İsim giriniz';

  @override
  String get bankNameHint => 'Banka adını girin';

  @override
  String get branchName => 'Şube Adı';

  @override
  String get branchNameHint => 'Şube Adını Girin';

  @override
  String get accountHolderName => 'Hesap Sahibinin Adı';

  @override
  String get routingNumber => 'Yönlendirme numarası';

  @override
  String get routingNumberHint => 'Yönlendirme numarasını girin';

  @override
  String get accountNumber => 'Hesap numarası';

  @override
  String get accountNumberHint => 'Hesap numarasını girin';

  @override
  String get addressHint => 'Adresi girin';

  @override
  String get dateOfBith => 'Doğum tarihi';

  @override
  String get yearHint => 'Yıl';

  @override
  String get monthHint => 'Ay';

  @override
  String get dayHint => 'Gün';

  @override
  String get city => 'Şehir';

  @override
  String get cityHint => 'Şehri girin';

  @override
  String get state => 'Durum';

  @override
  String get stateHint => 'Eyalet Girin';

  @override
  String get zipCode => 'Posta kodu';

  @override
  String get zipCodeHint => 'Posta kodu gir';

  @override
  String get day => 'Gün';

  @override
  String get month => 'Ay';

  @override
  String get year => 'Yıl';

  @override
  String get noActivitiesYet => 'Henüz Etkinlik Yok.';

  @override
  String get headingToDestination => 'hedefe doğru gidiyor';

  @override
  String get driverArrivedNotice => 'Sürücü seni bekliyor';

  @override
  String get driverShouldAriveInNotice => 'Sürücünün gelmesi bekleniyor';

  @override
  String get driverShouldHaveArrivedNotice => 'Sürücü her an gelebilir';

  @override
  String get deleteAccount => 'Hesabı sil';

  @override
  String get deleteAccountNotice => 'Hesabınızı silmek istediğinizden emin misiniz? 30 gün sonra hesabınız kalıcı olarak silinecektir. Bu süre zarfında tekrar oturum açarak hesabınızı geri yükleyebilirsiniz.';

  @override
  String get confirmAndDeleteAccount => 'Onaylamak ';

  @override
  String get accountDeleted => 'Hesap silindi';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return '$pickup\'den $destination\'a doğru yola çıkıyorum.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Sürücü adım $firstName $lastName, cep telefonu numaram $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' Yanımda olan yolcunun adı $firstName $lastName, cep telefonu numarası $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Yolculuk $startTime\'da başladı ve yolculuğun yaklaşık $duration dakika sürmesini bekliyorum';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Sürücünün arabasına bindiğimde yolculuğun yaklaşık $duration dakika süreceğini tahmin ediyorum.';
  }

  @override
  String get sendSOSMessage => 'ÖNEMLİ: Lütfen bu özelliği yalnızca acil durumlarda kullanın. Sizin adınıza yetkililerle iletişime geçeceğiz.';

  @override
  String get confirmAndSendSOS => 'Onaylamak ';

  @override
  String get sosSentSuccessfully => 'SOS başarıyla gönderildi';

  @override
  String get topUpSuccess => 'Cüzdana başarıyla yükleme yapıldı';

  @override
  String get cancelNotAllowed => 'Halihazırda başlamış bir yolculuğun iptal edilmesi mümkün değildir.';

  @override
  String get error => 'Hata';

  @override
  String get connectionError => 'Bağlantı hatası';

  @override
  String get serverError => 'Server hatası';

  @override
  String get addNewLocation => 'Yeni konum ekle';

  @override
  String get twoWayTrip => 'İki yönlü yolculuk';

  @override
  String get reportSubmitted => 'Rapor Gönderildi';

  @override
  String get reportSubmittedDescription => 'Raporunuz başarıyla gönderildi, inceleyip gerekli işlemleri yapacağız.';

  @override
  String get cardNumber => 'Kart numarası';

  @override
  String get cardNumberHint => 'Kart numarasını girin';

  @override
  String get expiryDate => 'Son kullanma tarihi';

  @override
  String get expiryDateHint => 'AA/YY';

  @override
  String get noFavoriteDrivers => 'Favori sürücü yok';

  @override
  String get noFavoriteDriversDescription => 'Tercih ettiğiniz sürücüleri yolculuk sonrasında puanlarken favori olarak işaretleyebilirsiniz.';

  @override
  String get pickupLocationNotFound => 'GPS\'i alım noktası olarak kullanarak mevcut konumunuzu belirleyemedik. Lütfen alım noktanızı manuel olarak girin.';

  @override
  String get dragToSelect => 'Seçmek için sürükleyin';

  @override
  String get skip => 'Atlamak';

  @override
  String get openSettings => 'Ayarları aç';

  @override
  String get locationPermission => 'Konum izni';

  @override
  String get locationPermissionDeniedForeverMessage => 'Konum izni, etrafınızdaki emirleri almak ve ayrıca sürücünün konumunuzu takip edebilmesi için bir gerekliliktir. Bu izin olmadan sipariş alamazsınız ve mevcut konumunuz konusunda dikkatliyiz. Bu izni telefon ayarlarınızdan değiştirebilirsiniz.';

  @override
  String get allow => 'İzin vermek';

  @override
  String get driverOnlineTitle => 'Bir yolculuk arıyorum';

  @override
  String get driverOfflineTitle => 'İstek almaya başlamak için çevrimiçi olun';

  @override
  String get payInCash => 'Nakit ödeme';

  @override
  String get payInCashDescription => 'Lütfen sürücüye nakit ödeme işlemine devam edin. Sürücü ödemeyi aldıktan sonra onaylayacaktır.';

  @override
  String get addToFavoriteDrivers => 'Favori sürücülere ekle';

  @override
  String get slideToConfirmArrival => 'Varışı onaylamak için kaydırın';

  @override
  String get slideToConfirmPickup => 'Teslim almayı onaylamak için kaydırın';

  @override
  String get slideToConfirmDropoff => 'Bırakmayı onaylamak için kaydırın';

  @override
  String get noticePickingUpRiderIn => 'Sürücüyü içeri almak:';

  @override
  String get noticeRiderNotified => 'Sürücü bilgilendirildi, Sürücüyü alın ve sürüşe başlayın';
}
