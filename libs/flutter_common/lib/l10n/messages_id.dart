import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Indonesian (`id`).
class SId extends S {
  SId([String locale = 'id']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return 'Hak Cipta © $company, Semua hak dilindungi undang-undang.';
  }

  @override
  String get welcomeTitle => 'Selamat datang di aplikasi';

  @override
  String get today => 'Hari ini';

  @override
  String get yesterday => 'Kemarin';

  @override
  String get settings => 'Pengaturan';

  @override
  String get about => 'Tentang';

  @override
  String get profileInfo => 'Informasi profil';

  @override
  String get language => 'Bahasa';

  @override
  String get firstName => 'Nama depan';

  @override
  String get lastName => 'nama keluarga';

  @override
  String get mobileNumber => 'Nomor handphone';

  @override
  String get edit => 'Sunting';

  @override
  String get enterCode => 'Memasukkan kode';

  @override
  String get editProfile => 'Sunting profil';

  @override
  String get bankTransfer => 'Transfer Bank';

  @override
  String get gift => 'Hadiah';

  @override
  String get correction => 'Koreksi';

  @override
  String get inappPayment => 'Pembayaran dalam aplikasi';

  @override
  String get orderFee => 'Biaya pemesanan';

  @override
  String get parkingFee => 'Biaya parkir';

  @override
  String get cancellationFee => 'Biaya pembatalan';

  @override
  String get withdraw => 'Menarik';

  @override
  String get walletTransactions => 'Transaksi dompet';

  @override
  String get addCard => 'Tambahkan kartu';

  @override
  String get visa => 'Visa';

  @override
  String get mastercard => 'MasterCard';

  @override
  String get addBalance => 'Tambahkan saldo';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString Menit',
      one: '$minutesString Menit',
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
    return 'Durasi: $_temp0';
  }

  @override
  String get timePastDue => 'Terlambat';

  @override
  String get justNow => 'Baru saja';

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
  String get welcomeSubtitle => 'Layanan taksi yang dirancang untuk kenyamanan Anda, lakukan Perjalanan dengan pengemudi favorit Anda dan pilih preferensi perjalanan Anda';

  @override
  String get onboardingRewardTitle => 'Dapatkan imbalan!';

  @override
  String get onboardingRewardSubtitle => 'Dapatkan bonus tambahan dengan merujuk teman, menyelesaikan perjalanan, dan banyak lagi...';

  @override
  String get selectLanguage => 'Pilih bahasa';

  @override
  String get searchForLanguage => 'Cari bahasa';

  @override
  String get enterPhoneNumber => 'Masukkan nomor telepon';

  @override
  String get actionContinue => 'Melanjutkan';

  @override
  String get whereIsYourDestination => 'Dimana tujuanmu?';

  @override
  String get whereAreYouGoing => 'Kemana kamu pergi?';

  @override
  String get selectDestinations => 'Rute Anda';

  @override
  String get pickupPoint => 'Titik penjemputan';

  @override
  String get enterPickupPoint => 'Masukkan titik penjemputan';

  @override
  String get dropoffPoint => 'Daerah menurunkan barang atau penumpang';

  @override
  String get enterDropoffPoint => 'Masukkan titik pengantaran';

  @override
  String get stopPoint => 'Titik berhenti';

  @override
  String get enterStopPoint => 'Masukkan titik berhenti';

  @override
  String get confirm => 'Mengonfirmasi';

  @override
  String get confirmDropoff => 'Konfirmasikan pengantaran';

  @override
  String get confirmPickup => 'Konfirmasi pengambilan';

  @override
  String get enterAtLeast3Characters => 'Masukkan minimal 3 karakter';

  @override
  String get noResults => 'Tidak ada hasil';

  @override
  String get bookNow => 'Pesan sekarang';

  @override
  String get cash => 'Uang tunai';

  @override
  String get online => 'On line';

  @override
  String get offline => 'Luring';

  @override
  String get onTrip => 'Dalam perjalanan';

  @override
  String get confirmPay => 'Mengonfirmasi';

  @override
  String get cancel => 'Membatalkan';

  @override
  String get apply => 'Menerapkan';

  @override
  String get enterCouponCode => 'Masukkan kode kupon';

  @override
  String get reserveRide => 'Pesan perjalanan';

  @override
  String get reserveRideMessage => 'Pilih tanggal dan waktu yang Anda inginkan untuk memesan perjalanan Anda';

  @override
  String get reserveRideMessageSuccess => 'Perjalanan Anda telah berhasil dipesan. Anda dapat melihat perjalanan yang Anda pesan di bagian \'Perjalanan terjadwal\'.';

  @override
  String get cancelReservation => 'Batalkan reservasi';

  @override
  String get confirmResrve => 'Mengonfirmasi';

  @override
  String get enterCouponDescription => 'Masukkan kode kupon Anda untuk diterapkan pada harga';

  @override
  String get enterCoupon => 'Masukkan kupon';

  @override
  String get couponApplied => 'Kupon diterapkan';

  @override
  String get couponAppliedDescription => 'Kupon telah diterapkan pada tarif perjalanan Anda';

  @override
  String get done => 'Selesai!';

  @override
  String get ridePreferences => 'Preferensi Berkendara';

  @override
  String get noWaitTime => 'Tidak ada waktu tunggu';

  @override
  String minutesRange(String minutes) {
    return '$minutes menit';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds detik';
  }

  @override
  String get rideRequested => 'Perjalanan diminta';

  @override
  String get searchingForAnOnlineDriver => 'Mencari driver online...';

  @override
  String get cancelRide => 'Batalkan perjalanan';

  @override
  String get rideSafety => 'Keamanan Berkendara';

  @override
  String get shareTripInformation => 'Bagikan informasi perjalanan';

  @override
  String get shareTripInformationDescription => 'Anda dapat berbagi info perjalanan Anda dengan teman';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => 'Beritahu pihak berwenang jika ada keadaan darurat';

  @override
  String get reportAnIssue => 'Laporkan masalah';

  @override
  String get reportAnIssueMidTripDescription => 'Bagikan masalah keselamatan dalam perjalanan';

  @override
  String get rideOptions => 'Opsi berkendara';

  @override
  String get goBackToRide => 'Kembali berkendara';

  @override
  String get waitTime => 'Waktu tunggu';

  @override
  String get couponCode => 'Kode Kupon';

  @override
  String get giftCardCode => 'Kode kartu hadiah';

  @override
  String get nicePoints => 'Poin bagus';

  @override
  String get negativePoints => 'Poin Negatif';

  @override
  String get reviewCommentBoxHint => 'Tambahkan komentar...';

  @override
  String get howWasYourTrip => 'Bagaimana perjalananmu?';

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
    return 'Rata-rata perjalanan dengan $name';
  }

  @override
  String fourStarReviewTitle(String name) {
    return 'Perjalanan yang menyenangkan dengan $name';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return 'Perjalanan yang luar biasa dengan $name';
  }

  @override
  String get submitFeedback => 'Berikan umpan balik';

  @override
  String get typeAMessage => 'Ketik pesan';

  @override
  String get findAnotherRide => 'Cari tumpangan lain';

  @override
  String get next => 'Berikutnya';

  @override
  String get searchForDropoffLocation => 'Cari lokasi pengantaran';

  @override
  String get searchForPickupLocation => 'Cari lokasi penjemputan';

  @override
  String get placeConfirmDialogPlaceholder => 'Di mana lokasi pengantaran Anda?';

  @override
  String get noAnnouncements => 'Tidak ada pengumuman';

  @override
  String get announcements => 'Pengumuman';

  @override
  String reviewsCount(int count) {
    return '($count ulasan)';
  }

  @override
  String get tripDetails => 'Detail perjalanan';

  @override
  String get rideDetails => 'Detail perjalanan';

  @override
  String get orderARide => 'Pesan tumpangan';

  @override
  String get noRidesYet => 'Belum ada tumpangan!';

  @override
  String get issueSubjectPlaceholder => 'Ketik subjek masalahnya';

  @override
  String get issueContentPlaceholder => 'Ketik deskripsi masalahnya';

  @override
  String get reportThisIssue => 'Laporkan masalah ini';

  @override
  String get fieldIsRequired => 'Bidang wajib diisi';

  @override
  String get ok => 'OKE';

  @override
  String get favoriteLocations => 'Lokasi favorit';

  @override
  String get favoriteLocationsSubtitle => 'Simpan lokasi favorit Anda untuk akses lebih mudah';

  @override
  String get createAFavoriteLocation => 'Buat lokasi favorit';

  @override
  String get addressTitleLabel => 'Judul alamat';

  @override
  String get clickToSetLocation => 'Klik untuk mengatur lokasi';

  @override
  String get whereIsYourNewFavoriteLocation => 'Di mana lokasi favorit baru Anda?';

  @override
  String get locateFavoriteLocationDescription => 'Gunakan kotak telusur di bawah atau peta untuk menyematkan lokasi persisnya';

  @override
  String get searchLocation => 'Lokasi pencarian';

  @override
  String get saveChanges => 'Simpan perubahan';

  @override
  String get rideHistory => 'Sejarah Perjalanan';

  @override
  String get scheduledRides => 'Perjalanan terjadwal';

  @override
  String get keepTheOrder => 'Jaga pesanannya';

  @override
  String get cancelTheRide => 'Batalkan perjalanan';

  @override
  String get walletBalance => 'Saldo dompet';

  @override
  String get activities => 'Kegiatan';

  @override
  String get pleaseEnterGiftCardCode => 'Silakan masukkan kode kartu hadiah';

  @override
  String get redeem => 'Menukarkan';

  @override
  String get enterGiftCardCode => 'Masukkan kode kartu hadiah';

  @override
  String get redeemGiftCard => 'Tukarkan Kartu Hadiah';

  @override
  String get redeemGiftCardDescription => 'Masukkan kode kartu hadiah Anda untuk menukarkannya.';

  @override
  String get redeemSuccessTitle => 'Kartu Hadiah Ditebus!';

  @override
  String redeemSuccessDescription(String amount) {
    return 'Anda telah berhasil menukarkan $amount kartu hadiah.';
  }

  @override
  String get addCredit => 'Tambahkan kredit';

  @override
  String get payNow => 'Bayar sekarang';

  @override
  String get addCreditToWallet => 'Tambahkan kredit ke dompet';

  @override
  String get pleaseSelectAmount => 'Silakan pilih jumlah';

  @override
  String get enterAmount => 'Masukan jumlah';

  @override
  String get selectAmount => 'Pilih jumlah:';

  @override
  String get wallet => 'Dompet';

  @override
  String get totalRides => 'Jumlah perjalanan';

  @override
  String get appSettings => 'Pengaturan aplikasi';

  @override
  String get mapSettings => 'Pengaturan Peta';

  @override
  String get lanugageSettings => 'Pengaturan Bahasa';

  @override
  String get paymentMethods => 'Cara Pembayaran';

  @override
  String get selectCards => 'Pilih kartu';

  @override
  String get selectCardsDescription => 'Anda dapat memilih nomor kartu yang ingin Anda tampilkan dalam daftar metode pembayaran pada faktur.';

  @override
  String get delete => 'Menghapus';

  @override
  String get nameOnCard => 'Nama di kartu';

  @override
  String get profile => 'Profil';

  @override
  String get scheduledRide => 'Perjalanan terjadwal';

  @override
  String get addPaymentMethod => 'Tambahkan Metode Pembayaran';

  @override
  String get addPaymentMethodDescription => 'Tambahkan metode pembayaran baru ke akun Anda';

  @override
  String get saveCard => 'Simpan kartu';

  @override
  String get selectDialCode => 'Pilih kode panggil';

  @override
  String get searchCountryName => 'Cari nama negara';

  @override
  String get preferences => 'Preferensi:';

  @override
  String get onboardingDescription => 'Beberapa saat lagi setelah mendaftarkan akun Anda dan menikmati perjalanan yang nyaman';

  @override
  String get signInSignUp => 'Masuk mendaftar';

  @override
  String get enterOtp => 'Masukkan OTP';

  @override
  String get enterPassword => 'Masukkan kata kunci';

  @override
  String get enterPasswordDescription => 'Silakan masukkan kata sandi Anda untuk melanjutkan';

  @override
  String get setPassword => 'Tetapkan Kata Sandi';

  @override
  String get password => 'Kata sandi';

  @override
  String get passwordRuleDescription => 'Sertakan setidaknya dua hal berikut:';

  @override
  String get passwordRuleLength => 'Antara 9 dan 64 karakter';

  @override
  String get passwordRuleUpperCase => 'Huruf besar';

  @override
  String get passwordRuleLowerCase => 'Huruf kecil';

  @override
  String get passwordRuleNumber => 'Angka';

  @override
  String get passwordRuleSpecialCharacter => 'Karakter spesial';

  @override
  String get contactDetails => 'Detail Kontak';

  @override
  String get vehicleDetails => 'Detail Kendaraan';

  @override
  String get payoutInformation => 'Informasi Pembayaran';

  @override
  String get documents => 'Dokumen';

  @override
  String get accessDenied => 'Akses ditolak';

  @override
  String get success => 'Kesuksesan';

  @override
  String get skipForNow => 'Lewati untuk saat ini';

  @override
  String get sendOtpDescription => 'Kode verifikasi telah dikirimkan ke nomor telepon Anda';

  @override
  String get resendOtp => 'Kirim ulang kode';

  @override
  String get useOtpInstead => 'Gunakan OTP sebagai gantinya';

  @override
  String get home => 'Rumah';

  @override
  String get logout => 'Keluar';

  @override
  String get driverLicenseNumber => 'Nomor Surat Izin Mengemudi';

  @override
  String get email => 'Surel';

  @override
  String get address => 'Alamat';

  @override
  String get gender => 'Jenis kelamin';

  @override
  String get genderMale => 'Pria';

  @override
  String get genderFemale => 'Perempuan';

  @override
  String get genderUnknown => 'Netral / Tidak Diketahui';

  @override
  String get vehiclePlateNumber => 'Nomor Plat Kendaraan';

  @override
  String get vehicleColor => 'Warna Kendaraan';

  @override
  String get vehicleModelAndMake => 'Model Kendaraan ';

  @override
  String get vehicleProductionYear => 'Tahun produksi kendaraan';

  @override
  String get bankName => 'Nama Bank';

  @override
  String get bankRoutingNumber => 'Nomor Perutean Bank';

  @override
  String get bankAccountNumber => 'Nomor rekening bank';

  @override
  String get bankSwift => 'Tukar Kode';

  @override
  String get uploadImage => 'Unggah Gambar';

  @override
  String get yourBalance => 'Keseimbanganmu';

  @override
  String get rideCancellation => 'Pembatalan Perjalanan';

  @override
  String get cancelRideMessage => 'Apakah Anda yakin ingin membatalkan perjalanan Anda?';

  @override
  String get cancelRideSuccess => 'Perjalanan berhasil dibatalkan';

  @override
  String get confirmAndCancelRide => 'Mengonfirmasi ';

  @override
  String get selectPaymentMethod => 'Pilih metode pembayaran';

  @override
  String get rideFeePaid => 'Biaya perjalanan telah dibayar';

  @override
  String get rideFeeUnpaid => 'Biaya perjalanan belum dibayar';

  @override
  String get total => 'Total';

  @override
  String get totalPrice => 'Total harga';

  @override
  String get addCustomCredit => 'Tambahkan rededit khusus';

  @override
  String get serviceFee => 'Biaya jasa';

  @override
  String get serviceOptionFee => 'Biaya Opsi Layanan';

  @override
  String get couponDiscount => 'Diskon Kupon';

  @override
  String get walletCreit => 'Kredit Dompet';

  @override
  String get custom => 'Kebiasaan';

  @override
  String get payment => 'Pembayaran';

  @override
  String get cashPayment => 'Pembayaran tunai';

  @override
  String cashPaymentDescription(String amount) {
    return 'Apakah Anda mengonfirmasi bahwa Anda menerima $amount?';
  }

  @override
  String get cashPaymentReceived => 'Pembayaran tunai diterima';

  @override
  String get confirmAndEndTrip => 'Mengonfirmasi ';

  @override
  String get earnings => 'Pendapatan';

  @override
  String get acceptOrder => 'Terima pesanan';

  @override
  String get canceled => 'Dibatalkan';

  @override
  String get unknown => 'Tidak dikenal';

  @override
  String get commission => 'Komisi';

  @override
  String get selectProfileImage => 'Pilih Gambar Profil';

  @override
  String get chooseAvatarDescription => 'Atau pilih avatar dari daftar di bawah:';

  @override
  String get fullName => 'Nama lengkap';

  @override
  String get favoriteDrivers => 'Pengemudi Favorit';

  @override
  String get distanceTraveled => 'Jarak yang ditempuh';

  @override
  String get rating => 'Peringkat';

  @override
  String get map => 'Peta';

  @override
  String get income => 'Penghasilan';

  @override
  String get timeSpent => 'Waktu yang dihabiskan';

  @override
  String get daily => 'Sehari-hari';

  @override
  String get monthly => 'Bulanan';

  @override
  String get noRecordsFoundEarnings => 'Tidak ditemukan catatan perjalanan untuk filter ini';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'Belum ada masukan';

  @override
  String get feedbacksSummaryEmptyStateTitle => 'Anda belum memiliki cukup masukan untuk ditampilkan.';

  @override
  String get feedbacksSummary => 'Ringkasan Masukan';

  @override
  String get feedbacksGoodTitle => 'Pekerjaan Luar Biasa!';

  @override
  String get feedbacksGoodSubtitle => 'Peringkat Anda terlihat bagus sejauh ini';

  @override
  String get feedbacksBadTitle => 'Rata-rata';

  @override
  String get feedbacksBadSubtitle => 'Anda dapat menggunakan beberapa perbaikan';

  @override
  String get feedbacksGoodPointsTitle => 'Beberapa hal baik tentang Anda:';

  @override
  String get feedbacksbadPointsTitle => 'Beberapa poin yang dapat Anda tingkatkan:';

  @override
  String get feedbacksReviewsTitle => 'Beberapa ulasan sebelumnya';

  @override
  String get payoutMethods => 'Metode Pembayaran';

  @override
  String get notice => 'Melihat:';

  @override
  String get payoutNoticeTitle => 'Anda secara otomatis akan dibayar oleh admin dua kali seminggu.';

  @override
  String get addPayoutMethod => 'Tambahkan Metode pembayaran';

  @override
  String get navigate => 'Navigasi';

  @override
  String get noPayoutMethods => 'Tidak ada metode pembayaran';

  @override
  String get name => 'Nama';

  @override
  String get nameHint => 'Masukkan nama';

  @override
  String get bankNameHint => 'Masukkan nama Bank';

  @override
  String get branchName => 'Nama cabang';

  @override
  String get branchNameHint => 'Masukkan Nama Cabang';

  @override
  String get accountHolderName => 'Nama pemilik akun';

  @override
  String get routingNumber => 'Nomor Perutean';

  @override
  String get routingNumberHint => 'Masukkan nomor perutean';

  @override
  String get accountNumber => 'Nomor akun';

  @override
  String get accountNumberHint => 'Masukkan nomor akun';

  @override
  String get addressHint => 'Masukkan alamat';

  @override
  String get dateOfBith => 'Tanggal lahir';

  @override
  String get yearHint => 'Tahun';

  @override
  String get monthHint => 'Bulan';

  @override
  String get dayHint => 'Hari';

  @override
  String get city => 'Kota';

  @override
  String get cityHint => 'Masuk kota';

  @override
  String get state => 'Negara';

  @override
  String get stateHint => 'Masuk ke Negara Bagian';

  @override
  String get zipCode => 'Kode Pos';

  @override
  String get zipCodeHint => 'Masukkan Kode Pos';

  @override
  String get day => 'Hari';

  @override
  String get month => 'Bulan';

  @override
  String get year => 'Tahun';

  @override
  String get noActivitiesYet => 'Belum Ada Aktivitas.';

  @override
  String get headingToDestination => 'menuju ke tujuan';

  @override
  String get driverArrivedNotice => 'Pengemudi sedang menunggu Anda';

  @override
  String get driverShouldAriveInNotice => 'Pengemudi diperkirakan tiba';

  @override
  String get driverShouldHaveArrivedNotice => 'Pengemudi akan tiba kapan saja sekarang';

  @override
  String get deleteAccount => 'Hapus akun';

  @override
  String get deleteAccountNotice => 'Apakah Anda yakin ingin menghapus akun Anda? Setelah 30 hari, akun Anda akan dihapus secara permanen. Selama waktu ini, Anda dapat memulihkan akun Anda dengan masuk kembali.';

  @override
  String get confirmAndDeleteAccount => 'Mengonfirmasi ';

  @override
  String get accountDeleted => 'Akun telah dihapus';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return 'Saya sedang dalam perjalanan ke $destination dari $pickup.';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' Nama driver saya $firstName $lastName, nomor ponsel $mobileNumber.';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' Pengendara dengan nama saya adalah $firstName $lastName, nomor ponselnya adalah $mobileNumber.';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' Perjalanan telah dimulai pada $startTime dan saya perkirakan perjalanan akan memakan waktu sekitar $duration menit';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' Saya memperkirakan perjalanan akan memakan waktu sekitar $duration menit setelah saya masuk ke mobil pengemudi.';
  }

  @override
  String get sendSOSMessage => 'PENTING: Harap gunakan fitur ini hanya dalam keadaan darurat. Kami akan menghubungi pihak berwenang atas nama Anda.';

  @override
  String get confirmAndSendSOS => 'Mengonfirmasi ';

  @override
  String get sosSentSuccessfully => 'SOS telah berhasil dikirim';

  @override
  String get topUpSuccess => 'Dompet telah berhasil diisi ulang';

  @override
  String get cancelNotAllowed => 'Pembatalan perjalanan yang sudah dimulai tidak dapat dilakukan.';

  @override
  String get error => 'Kesalahan';

  @override
  String get connectionError => 'Koneksi error';

  @override
  String get serverError => 'Server error';

  @override
  String get addNewLocation => 'Tambahkan lokasi baru';

  @override
  String get twoWayTrip => 'Perjalanan dua arah';

  @override
  String get reportSubmitted => 'Laporan Dikirim';

  @override
  String get reportSubmittedDescription => 'Laporan Anda telah berhasil dikirimkan, kami akan meninjaunya dan mengambil tindakan yang diperlukan.';

  @override
  String get cardNumber => 'Nomor kartu';

  @override
  String get cardNumberHint => 'Masukkan nomor kartu';

  @override
  String get expiryDate => 'Tanggal kadaluarsa';

  @override
  String get expiryDateHint => 'MM/YY';

  @override
  String get noFavoriteDrivers => 'Tidak ada driver favorit';

  @override
  String get noFavoriteDriversDescription => 'Anda dapat menandai pengemudi pilihan Anda sebagai favorit saat memberi peringkat setelah perjalanan.';

  @override
  String get pickupLocationNotFound => 'Kami tidak dapat menentukan lokasi Anda saat ini menggunakan GPS sebagai titik penjemputan. Silakan masukkan titik penjemputan Anda secara manual.';

  @override
  String get dragToSelect => 'Seret untuk memilih';

  @override
  String get skip => 'Melewati';

  @override
  String get openSettings => 'Buka Pengaturan';

  @override
  String get locationPermission => 'Izin lokasi';

  @override
  String get locationPermissionDeniedForeverMessage => 'Izin lokasi merupakan persyaratan untuk menerima pesanan di sekitar Anda dan juga agar pengendara dapat melacak lokasi Anda. Anda tidak dapat menerima pesanan tanpa izin ini dan kami berhati-hati terhadap lokasi Anda saat ini. Anda dapat mengubah izin ini di pengaturan telepon Anda.';

  @override
  String get allow => 'Mengizinkan';

  @override
  String get driverOnlineTitle => 'Mencari tumpangan';

  @override
  String get driverOfflineTitle => 'Dapatkan online untuk mulai menerima permintaan';

  @override
  String get payInCash => 'Pembayaran tunai';

  @override
  String get payInCashDescription => 'Silakan lanjutkan dengan pembayaran tunai kepada pengemudi. Pengemudi akan mengkonfirmasi pembayaran setelah diterima.';

  @override
  String get addToFavoriteDrivers => 'Tambahkan ke driver favorit';

  @override
  String get slideToConfirmArrival => 'Geser untuk mengonfirmasi kedatangan';

  @override
  String get slideToConfirmPickup => 'Geser untuk mengonfirmasi pengambilan';

  @override
  String get slideToConfirmDropoff => 'Geser untuk mengonfirmasi pengantaran';

  @override
  String get noticePickingUpRiderIn => 'Menjemput pengendara di:';

  @override
  String get noticeRiderNotified => 'Pengendara telah diberitahu, Ambil pengendara dan mulai perjalanan';
}
