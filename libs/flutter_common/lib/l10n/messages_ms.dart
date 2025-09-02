import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Malay (`ms`).
class SMs extends S {
  SMs([String locale = 'ms']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Hak Cipta © $company, Hak cipta terpelihara.';
  }

  @override
  String get welcomeTitle => 'Selamat datang ke apl';

  @override
  String get today => 'Hari ini';

  @override
  String get yesterday => 'Semalam';

  @override
  String get settings => 'tetapan';

  @override
  String get about => 'Tentang';

  @override
  String get profileInfo => 'Maklumat profil';

  @override
  String get language => 'Bahasa';

  @override
  String get firstName => 'Nama pertama';

  @override
  String get lastName => 'Nama terakhir';

  @override
  String get mobileNumber => 'Nombor telefon';

  @override
  String get edit => 'Sunting';

  @override
  String get enterCode => 'Masukkan kod';

  @override
  String get editProfile => 'Sunting profil';

  @override
  String get bankTransfer => 'Pemindahan bank';

  @override
  String get gift => 'Hadiah';

  @override
  String get correction => 'Pembetulan';

  @override
  String get inappPayment => 'Pembayaran dalam apl';

  @override
  String get orderFee => 'Yuran pesanan';

  @override
  String get parkingFee => 'Bayaran letak kereta';

  @override
  String get cancellationFee => 'Bayaran pembatalan';

  @override
  String get withdraw => 'tarik diri';

  @override
  String get walletTransactions => 'Urus niaga dompet';

  @override
  String get addCard => 'Tambah kad';

  @override
  String get visa => 'Visa';

  @override
  String get mastercard => 'Mastercard';

  @override
  String get addBalance => 'Tambah baki';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Minit',
      one: '$minutesString Minit',
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
      other: '$hoursString Jam',
      one: '$hoursString Jam',
      zero: 'Zero hours',
    );
    return 'Tempoh: $_temp0';
  }

  @override
  String get timePastDue => 'Telah berlalu';

  @override
  String get justNow => 'Baru sekarang';

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
  String get welcomeSubtitle => 'Perkhidmatan teksi yang direka untuk keselesaan anda mempunyai Perjalanan dengan pemandu kegemaran anda dan pilih pilihan perjalanan anda';

  @override
  String get onboardingRewardTitle => 'Dapatkan ganjaran!';

  @override
  String get onboardingRewardSubtitle => 'Dapatkan bonus tambahan untuk merujuk rakan, melengkapkan perjalanan dan banyak lagi...';

  @override
  String get selectLanguage => 'Pilih Bahasa';

  @override
  String get searchForLanguage => 'Cari bahasa';

  @override
  String get enterPhoneNumber => 'Masukkan Nombor Telefon';

  @override
  String get actionContinue => 'teruskan';

  @override
  String get whereIsYourDestination => 'Di manakah destinasi anda?';

  @override
  String get whereAreYouGoing => 'awak nak pergi mana?';

  @override
  String get selectDestinations => 'Laluan anda';

  @override
  String get pickupPoint => 'Tempat pengambilan';

  @override
  String get enterPickupPoint => 'Masukkan tempat pengambilan';

  @override
  String get dropoffPoint => 'Titik drop-off';

  @override
  String get enterDropoffPoint => 'Masukkan tempat drop-off';

  @override
  String get stopPoint => 'Titik berhenti';

  @override
  String get enterStopPoint => 'Masukkan titik hentian';

  @override
  String get confirm => 'sahkan';

  @override
  String get confirmDropoff => 'Sahkan penghantaran';

  @override
  String get confirmPickup => 'Sahkan pengambilan';

  @override
  String get enterAtLeast3Characters => 'Masukkan sekurang-kurangnya 3 aksara';

  @override
  String get noResults => 'Tiada keputusan';

  @override
  String get bookNow => 'Tempah sekarang';

  @override
  String get cash => 'Tunai';

  @override
  String get online => 'dalam talian';

  @override
  String get offline => 'Luar talian';

  @override
  String get onTrip => 'Dalam Perjalanan';

  @override
  String get confirmPay => 'sahkan ';

  @override
  String get cancel => 'Batal';

  @override
  String get apply => 'Mohon';

  @override
  String get enterCouponCode => 'masukkan kod kupon';

  @override
  String get reserveRide => 'Rizab perjalanan';

  @override
  String get reserveRideMessage => 'Pilih tarikh dan masa yang tepat anda ingin perjalanan anda ditempah';

  @override
  String get reserveRideMessageSuccess => 'Perjalanan anda telah berjaya ditempah. Anda boleh melihat tunggangan yang ditempah dalam bahagian \'Tunggangan berjadual\'.';

  @override
  String get cancelReservation => 'Batalkan tempahan';

  @override
  String get confirmResrve => 'sahkan ';

  @override
  String get enterCouponDescription => 'Masukkan kod kupon anda untuk digunakan pada harga';

  @override
  String get enterCoupon => 'Masukkan kupon';

  @override
  String get couponApplied => 'Kupon digunakan';

  @override
  String get couponAppliedDescription => 'Kupon telah digunakan pada tambang perjalanan anda';

  @override
  String get done => 'Selesai!';

  @override
  String get ridePreferences => 'Pilihan Menunggang';

  @override
  String get noWaitTime => 'Tiada masa menunggu';

  @override
  String minutesRange(String minutes) {
    return '$minutes minit';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds saat';
  }

  @override
  String get rideRequested => 'Tunggangan diminta';

  @override
  String get searchingForAnOnlineDriver => 'Mencari pemandu dalam talian...';

  @override
  String get cancelRide => 'Batalkan perjalanan';

  @override
  String get rideSafety => 'Keselamatan Menunggang';

  @override
  String get shareTripInformation => 'Kongsi maklumat perjalanan';

  @override
  String get shareTripInformationDescription => 'Anda boleh berkongsi maklumat perjalanan anda dengan rakan';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Beritahu pihak berkuasa tentang kecemasan';

  @override
  String get reportAnIssue => 'Laporkan isu';

  @override
  String get reportAnIssueMidTripDescription => 'Kongsi isu keselamatan semasa dalam perjalanan';

  @override
  String get rideOptions => 'Pilihan tunggangan';

  @override
  String get goBackToRide => 'Balik menunggang';

  @override
  String get waitTime => 'Menunggu masa';

  @override
  String get couponCode => 'Kod Kupon';

  @override
  String get giftCardCode => 'Kod kad hadiah';

  @override
  String get nicePoints => 'Mata yang bagus';

  @override
  String get negativePoints => 'Mata Negatif';

  @override
  String get reviewCommentBoxHint => 'Tambah komen...';

  @override
  String get howWasYourTrip => 'Bagaimana perjalanan anda?';

  @override
  String oneStarReviewTitle(String name) {
    return 'Perjalanan yang mengerikan dengan $name';
  }

  @override
  String twoStarReviewTitle(String name) {
    return 'Perjalanan buruk dengan $name';
  }

  @override
  String threeStarReviewTitle(String name) {
    return 'Perjalanan purata dengan $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Perjalanan yang baik dengan $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Perjalanan yang mengagumkan dengan $name';
  }

  @override
  String get submitFeedback => 'Hantar maklum balas';

  @override
  String get typeAMessage => 'Taip mesej';

  @override
  String get findAnotherRide => 'Cari perjalanan lain';

  @override
  String get next => 'Seterusnya';

  @override
  String get searchForDropoffLocation => 'Cari lokasi drop-off';

  @override
  String get searchForPickupLocation => 'Cari lokasi pengambilan';

  @override
  String get placeConfirmDialogPlaceholder => 'Di manakah lokasi penghantaran anda?';

  @override
  String get noAnnouncements => 'Tiada pengumuman';

  @override
  String get announcements => 'Pengumuman';

  @override
  String reviewsCount(int count) {
    return '($count ulasan)';
  }

  @override
  String get tripDetails => 'Butiran perjalanan';

  @override
  String get rideDetails => 'Butiran tunggangan';

  @override
  String get orderARide => 'Pesan tumpangan';

  @override
  String get noRidesYet => 'Belum ada tunggangan!';

  @override
  String get issueSubjectPlaceholder => 'Taip subjek isu';

  @override
  String get issueContentPlaceholder => 'Taip huraian isu';

  @override
  String get reportThisIssue => 'Laporkan isu ini';

  @override
  String get fieldIsRequired => 'Bidang diperlukan';

  @override
  String get ok => 'okey';

  @override
  String get favoriteLocations => 'Lokasi kegemaran';

  @override
  String get favoriteLocationsSubtitle => 'Simpan lokasi kegemaran anda untuk akses yang lebih mudah';

  @override
  String get createAFavoriteLocation => 'Buat lokasi kegemaran';

  @override
  String get addressTitleLabel => 'Tajuk alamat';

  @override
  String get clickToSetLocation => 'Klik untuk menetapkan lokasi';

  @override
  String get whereIsYourNewFavoriteLocation => 'Di manakah lokasi kegemaran baharu anda?';

  @override
  String get locateFavoriteLocationDescription => 'Gunakan sama ada kotak carian di bawah atau peta untuk menyemat lokasi yang tepat';

  @override
  String get searchLocation => 'Cari lokasi';

  @override
  String get saveChanges => 'Simpan perubahan';

  @override
  String get rideHistory => 'Sejarah Tunggangan';

  @override
  String get scheduledRides => 'Tunggangan yang dijadualkan';

  @override
  String get keepTheOrder => 'Simpan pesanan';

  @override
  String get cancelTheRide => 'Batalkan perjalanan';

  @override
  String get walletBalance => 'Baki dompet';

  @override
  String get activities => 'Aktiviti';

  @override
  String get pleaseEnterGiftCardCode => 'Sila masukkan kod kad hadiah';

  @override
  String get redeem => 'Tebus';

  @override
  String get enterGiftCardCode => 'Masukkan kod kad hadiah';

  @override
  String get redeemGiftCard => 'Tebus Kad Hadiah';

  @override
  String get redeemGiftCardDescription => 'Masukkan kod kad hadiah anda untuk menebusnya.';

  @override
  String get redeemSuccessTitle => 'Kad Hadiah Tebus!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Anda telah berjaya menebus $amount kad hadiah.';
  }

  @override
  String get addCredit => 'Tambah kredit';

  @override
  String get payNow => 'Bayar sekarang';

  @override
  String get addCreditToWallet => 'Tambahkan kredit pada dompet';

  @override
  String get pleaseSelectAmount => 'Sila pilih jumlah';

  @override
  String get enterAmount => 'Masukkan jumlah';

  @override
  String get selectAmount => 'Pilih jumlah:';

  @override
  String get wallet => 'Dompet';

  @override
  String get totalRides => 'Jumlah tunggangan';

  @override
  String get appSettings => 'Tetapan Apl';

  @override
  String get mapSettings => 'Tetapan Peta';

  @override
  String get lanugageSettings => 'Tetapan Bahasa';

  @override
  String get paymentMethods => 'Cara bayaran';

  @override
  String get selectCards => 'Pilih kad';

  @override
  String get selectCardsDescription => 'Anda boleh memilih nombor kad yang anda ingin dipaparkan dalam senarai kaedah pembayaran pada invois.';

  @override
  String get delete => 'Padam';

  @override
  String get nameOnCard => 'Nama pada kad';

  @override
  String get profile => 'Profil';

  @override
  String get scheduledRide => 'Perjalanan yang dijadualkan';

  @override
  String get addPaymentMethod => 'Tambah Kaedah Pembayaran';

  @override
  String get addPaymentMethodDescription => 'Tambahkan kaedah pembayaran baharu pada akaun anda';

  @override
  String get saveCard => 'Simpan kad';

  @override
  String get selectDialCode => 'Pilih kod dail';

  @override
  String get searchCountryName => 'Cari nama negara';

  @override
  String get preferences => 'Keutamaan:';

  @override
  String get onboardingDescription => 'Beberapa saat lagi untuk mendaftar akaun anda dan menikmati tunggangan yang selesa';

  @override
  String get signInSignUp => 'Daftar masuk/ Daftar';

  @override
  String get enterOtp => 'Masukkan OTP';

  @override
  String get enterPassword => 'Masukkan kata laluan';

  @override
  String get enterPasswordDescription => 'Sila masukkan kata laluan anda untuk meneruskan';

  @override
  String get setPassword => 'Tetapkan kata laluan';

  @override
  String get password => 'Kata laluan';

  @override
  String get passwordRuleDescription => 'Sertakan sekurang-kurangnya dua daripada yang berikut:';

  @override
  String get passwordRuleLength => 'Antara 9 dan 64 aksara';

  @override
  String get passwordRuleUpperCase => 'Huruf besar';

  @override
  String get passwordRuleLowerCase => 'Huruf kecil';

  @override
  String get passwordRuleNumber => 'Nombor';

  @override
  String get passwordRuleSpecialCharacter => 'Watak istimewa';

  @override
  String get contactDetails => 'Butiran kenalan';

  @override
  String get vehicleDetails => 'Butiran Kenderaan';

  @override
  String get payoutInformation => 'Maklumat Pembayaran';

  @override
  String get documents => 'Dokumen';

  @override
  String get accessDenied => 'Akses dinafikan';

  @override
  String get success => 'Kejayaan';

  @override
  String get skipForNow => 'Langkau buat masa ini';

  @override
  String get sendOtpDescription => 'Kod pengesahan telah dihantar ke nombor telefon anda';

  @override
  String get resendOtp => 'Hantar semula kod';

  @override
  String get useOtpInstead => 'Gunakan OTP sebaliknya';

  @override
  String get home => 'Rumah';

  @override
  String get logout => 'Log keluar';

  @override
  String get driverLicenseNumber => 'Nombor Lesen Memandu';

  @override
  String get email => 'E-mel';

  @override
  String get address => 'Alamat';

  @override
  String get gender => 'Jantina';

  @override
  String get genderMale => 'jantan';

  @override
  String get genderFemale => 'perempuan';

  @override
  String get genderUnknown => 'Neutral / Tidak diketahui';

  @override
  String get vehiclePlateNumber => 'Nombor Plat Kenderaan';

  @override
  String get vehicleColor => 'Warna Kenderaan';

  @override
  String get vehicleModelAndMake => 'Model Kenderaan ';

  @override
  String get vehicleProductionYear => 'Tahun pengeluaran kenderaan';

  @override
  String get bankName => 'Nama bank';

  @override
  String get bankRoutingNumber => 'Nombor Laluan Bank';

  @override
  String get bankAccountNumber => 'Nombor akaun bank';

  @override
  String get bankSwift => 'Kod pantas';

  @override
  String get uploadImage => 'Muat Naik Imej';

  @override
  String get yourBalance => 'Baki anda';

  @override
  String get rideCancellation => 'Pembatalan Perjalanan';

  @override
  String get cancelRideMessage => 'Adakah anda pasti mahu membatalkan perjalanan anda?';

  @override
  String get cancelRideSuccess => 'Perjalanan telah berjaya dibatalkan';

  @override
  String get confirmAndCancelRide => 'sahkan ';

  @override
  String get selectPaymentMethod => 'Pilih kaedah pembayaran';

  @override
  String get rideFeePaid => 'Yuran perjalanan telah dibayar';

  @override
  String get rideFeeUnpaid => 'Yuran perjalanan belum dibayar lagi';

  @override
  String get total => 'Jumlah';

  @override
  String get totalPrice => 'Harga keseluruhan';

  @override
  String get addCustomCredit => 'Tambah suntingan tersuai';

  @override
  String get serviceFee => 'Bayaran perkhidmatan';

  @override
  String get serviceOptionFee => 'Yuran Pilihan Perkhidmatan';

  @override
  String get couponDiscount => 'Diskaun Kupon';

  @override
  String get walletCreit => 'Kredit Dompet';

  @override
  String get custom => 'Adat';

  @override
  String get payment => 'Bayaran';

  @override
  String get cashPayment => 'Pembayaran tunai';

  @override
  String cashPaymentDescription(String amount) {
    return 'Adakah anda mengesahkan bahawa anda menerima $amount?';
  }

  @override
  String get cashPaymentReceived => 'Bayaran tunai diterima';

  @override
  String get confirmAndEndTrip => 'sahkan ';

  @override
  String get earnings => 'Pendapatan';

  @override
  String get acceptOrder => 'Terima pesanan';

  @override
  String get canceled => 'Dibatalkan';

  @override
  String get unknown => 'Tidak diketahui';

  @override
  String get commission => 'Suruhanjaya';

  @override
  String get selectProfileImage => 'Pilih Imej Profil';

  @override
  String get chooseAvatarDescription => 'Atau pilih avatar daripada senarai di bawah:';

  @override
  String get fullName => 'Nama penuh';

  @override
  String get favoriteDrivers => 'Pemandu Kegemaran';

  @override
  String get distanceTraveled => 'Jarak yang dilalui';

  @override
  String get rating => 'Penilaian';

  @override
  String get map => 'Peta';

  @override
  String get income => 'pendapatan';

  @override
  String get timeSpent => 'Masa yang dihabiskan';

  @override
  String get daily => 'Setiap hari';

  @override
  String get monthly => 'Bulanan';

  @override
  String get noRecordsFoundEarnings => 'Tiada rekod perjalanan ditemui untuk penapis ini';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Tiada maklum balas lagi';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Anda belum mempunyai maklum balas yang mencukupi untuk ditunjukkan.';

  @override
  String get feedbacksSummary => 'Ringkasan Maklum Balas';

  @override
  String get feedbacksGoodTitle => 'Kerja Cemerlang!';

  @override
  String get feedbacksGoodSubtitle => 'Penilaian anda kelihatan baik setakat ini';

  @override
  String get feedbacksBadTitle => 'Purata';

  @override
  String get feedbacksBadSubtitle => 'Anda boleh menggunakan beberapa penambahbaikan';

  @override
  String get feedbacksGoodPointsTitle => 'Beberapa perkara yang baik tentang anda:';

  @override
  String get feedbacksbadPointsTitle => 'Beberapa perkara yang boleh anda perbaiki:';

  @override
  String get feedbacksReviewsTitle => 'Beberapa ulasan terdahulu';

  @override
  String get payoutMethods => 'Kaedah Pembayaran';

  @override
  String get notice => 'Notis:';

  @override
  String get payoutNoticeTitle => 'Anda secara automatik akan dibayar oleh admin dua kali seminggu.';

  @override
  String get addPayoutMethod => 'Tambah Kaedah pembayaran';

  @override
  String get navigate => 'Navigasi';

  @override
  String get noPayoutMethods => 'Tiada kaedah pembayaran';

  @override
  String get name => 'Nama';

  @override
  String get nameHint => 'Masukkan nama';

  @override
  String get bankNameHint => 'Masukkan nama Bank';

  @override
  String get branchName => 'Nama cawangan';

  @override
  String get branchNameHint => 'Masukkan Nama Cawangan';

  @override
  String get accountHolderName => 'Nama Pemegang Akaun';

  @override
  String get routingNumber => 'Nombor Penghalaan';

  @override
  String get routingNumberHint => 'Masukkan nombor penghalaan';

  @override
  String get accountNumber => 'Nombor akaun';

  @override
  String get accountNumberHint => 'Masukkan nombor akaun';

  @override
  String get addressHint => 'Masukkan alamat';

  @override
  String get dateOfBith => 'Tarikh lahir';

  @override
  String get yearHint => 'tahun';

  @override
  String get monthHint => 'bulan';

  @override
  String get dayHint => 'Hari';

  @override
  String get city => 'Bandar';

  @override
  String get cityHint => 'Masuk bandar';

  @override
  String get state => 'negeri';

  @override
  String get stateHint => 'Masukkan Negeri';

  @override
  String get zipCode => 'Poskod';

  @override
  String get zipCodeHint => 'Masukkan Kod Pos';

  @override
  String get day => 'Hari';

  @override
  String get month => 'bulan';

  @override
  String get year => 'tahun';

  @override
  String get noActivitiesYet => 'Tiada Aktiviti lagi.';

  @override
  String get headingToDestination => 'menuju ke destinasi';

  @override
  String get driverArrivedNotice => 'Pemandu sedang menunggu anda';

  @override
  String get driverShouldAriveInNotice => 'Pemandu dianggarkan tiba';

  @override
  String get driverShouldHaveArrivedNotice => 'Pemandu sepatutnya tiba pada bila-bila masa sekarang';

  @override
  String get deleteAccount => 'Padam Akaun';

  @override
  String get deleteAccountNotice => 'Adakah anda pasti mahu memadamkan akaun anda? Selepas 30 hari, akaun anda akan dipadamkan secara kekal. Pada masa ini, anda boleh memulihkan akaun anda dengan melog masuk semula.';

  @override
  String get confirmAndDeleteAccount => 'sahkan ';

  @override
  String get accountDeleted => 'Akaun telah dipadamkan';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Saya dalam perjalanan ke $destination dari $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return 'Nama pemandu saya ialah $firstName $lastName, nombor telefon bimbit ialah $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' Penunggang dengan nama saya ialah $firstName $lastName, nombor telefon bimbit ialah $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return 'Perjalanan telah bermula pada $startTime dan saya menjangkakan perjalanan mengambil masa lebih kurang $duration minit';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return 'Saya menjangkakan perjalanan mengambil masa lebih kurang $duration minit sebaik sahaja saya masuk ke dalam kereta pemandu.';
  }

  @override
  String get sendSOSMessage => 'PENTING: Sila gunakan ciri ini hanya sekiranya berlaku kecemasan. Kami akan menghubungi pihak berkuasa bagi pihak anda.';

  @override
  String get confirmAndSendSOS => 'sahkan ';

  @override
  String get sosSentSuccessfully => 'SOS telah berjaya dihantar';

  @override
  String get topUpSuccess => 'Dompet telah berjaya ditambah nilai';

  @override
  String get cancelNotAllowed => 'Pembatalan perjalanan yang telah dimulakan tidak mungkin.';

  @override
  String get error => 'ralat';

  @override
  String get connectionError => 'Ralat sambungan';

  @override
  String get serverError => 'Ralat pelayan';

  @override
  String get addNewLocation => 'Tambah lokasi baharu';

  @override
  String get twoWayTrip => 'Perjalanan dua hala';

  @override
  String get reportSubmitted => 'Laporan Dihantar';

  @override
  String get reportSubmittedDescription => 'Laporan anda telah berjaya diserahkan, kami akan menyemaknya dan mengambil tindakan yang perlu.';

  @override
  String get cardNumber => 'Nombor kad';

  @override
  String get cardNumberHint => 'Masukkan nombor kad';

  @override
  String get expiryDate => 'Tarikh luput';

  @override
  String get expiryDateHint => 'MM/YY';

  @override
  String get noFavoriteDrivers => 'Tiada pemandu kegemaran';

  @override
  String get noFavoriteDriversDescription => 'Anda boleh menandakan pemandu pilihan anda sebagai kegemaran apabila menilai mereka selepas perjalanan.';

  @override
  String get pickupLocationNotFound => 'Kami tidak dapat menentukan lokasi semasa anda menggunakan GPS sebagai tempat pengambilan. Sila masukkan tempat pengambilan anda secara manual.';

  @override
  String get dragToSelect => 'Seret untuk memilih';

  @override
  String get skip => 'Langkau';

  @override
  String get openSettings => 'Buka Tetapan';

  @override
  String get locationPermission => 'Kebenaran lokasi';

  @override
  String get locationPermissionDeniedForeverMessage => 'Kebenaran lokasi adalah keperluan untuk menerima pesanan di sekeliling anda dan juga untuk penunggang menjejaki lokasi anda. Anda tidak boleh menerima pesanan tanpa kebenaran ini dan kami berhati-hati dengan lokasi semasa anda. Anda boleh menukar kebenaran ini dalam tetapan telefon anda.';

  @override
  String get allow => 'benarkan';

  @override
  String get driverOnlineTitle => 'Mencari tumpangan';

  @override
  String get driverOfflineTitle => 'Dapatkan dalam talian untuk mula menerima permintaan';

  @override
  String get payInCash => 'Pembayaran tunai';

  @override
  String get payInCashDescription => 'Sila teruskan pembayaran tunai kepada pemandu. Pemandu akan mengesahkan pembayaran setelah diterima.';

  @override
  String get addToFavoriteDrivers => 'Tambahkan pada pemandu kegemaran';

  @override
  String get slideToConfirmArrival => 'Slaid untuk mengesahkan ketibaan';

  @override
  String get slideToConfirmPickup => 'Slaid untuk mengesahkan pengambilan';

  @override
  String get slideToConfirmDropoff => 'Slaid untuk mengesahkan penghantaran';

  @override
  String get noticePickingUpRiderIn => 'Mengambil penunggang masuk:';

  @override
  String get noticeRiderNotified => 'Penunggang telah dimaklumkan, Angkat penunggang dan mulakan tunggangan';
}
