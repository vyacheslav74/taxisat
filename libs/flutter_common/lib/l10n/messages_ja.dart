import 'package:intl/intl.dart' as intl;

import 'messages.dart';

/// The translations for Japanese (`ja`).
class SJa extends S {
  SJa([String locale = 'ja']) : super(locale);

  @override
  String copyright_notice(Object company) {
    return '著作権 © $company、全著作権所有。';
  }

  @override
  String get welcomeTitle => 'アプリへようこそ';

  @override
  String get today => '今日';

  @override
  String get yesterday => '昨日';

  @override
  String get settings => '設定';

  @override
  String get about => 'について';

  @override
  String get profileInfo => 'プロフィール情報';

  @override
  String get language => '言語';

  @override
  String get firstName => 'ファーストネーム';

  @override
  String get lastName => '苗字';

  @override
  String get mobileNumber => '携帯電話番号';

  @override
  String get edit => '編集';

  @override
  String get enterCode => 'コードを入力する';

  @override
  String get editProfile => 'プロファイル編集';

  @override
  String get bankTransfer => '銀行振込';

  @override
  String get gift => '贈り物';

  @override
  String get correction => '修正';

  @override
  String get inappPayment => 'アプリ内支払い';

  @override
  String get orderFee => '注文手数料';

  @override
  String get parkingFee => '駐車料金';

  @override
  String get cancellationFee => '解約料';

  @override
  String get withdraw => '撤回する';

  @override
  String get walletTransactions => 'ウォレット取引';

  @override
  String get addCard => 'カードを追加';

  @override
  String get visa => 'ビザ';

  @override
  String get mastercard => 'マスターカード';

  @override
  String get addBalance => '残高を追加する';

  @override
  String durationInMinutes(num minutes) {
    final intl.NumberFormat minutesNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String minutesString = minutesNumberFormat.format(minutes);

    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutesString 分',
      one: '$minutesString 分',
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
      other: '$hoursString 時間',
      one: '$hoursString 時間',
      zero: 'Zero hours',
    );
    return '期間: $_temp0';
  }

  @override
  String get timePastDue => '延滞';

  @override
  String get justNow => 'ちょうど今';

  @override
  String distanceInMeters(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '${distanceString}m';
  }

  @override
  String distanceInKilometers(num distance) {
    final intl.NumberFormat distanceNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String distanceString = distanceNumberFormat.format(distance);

    return '$distanceStringキロ';
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
  String get welcomeSubtitle => '快適さを追求したタクシー サービスは、お気に入りのドライバーと乗車し、好みの乗り物を選択できます';

  @override
  String get onboardingRewardTitle => '報酬を受ける！';

  @override
  String get onboardingRewardSubtitle => '友達の紹介、旅行の完了などで追加のボーナスを獲得しましょう...';

  @override
  String get selectLanguage => '言語を選択する';

  @override
  String get searchForLanguage => '言語を検索する';

  @override
  String get enterPhoneNumber => '電話番号を入力してください';

  @override
  String get actionContinue => '続く';

  @override
  String get whereIsYourDestination => '目的地はどこですか？';

  @override
  String get whereAreYouGoing => 'どこに行くの？';

  @override
  String get selectDestinations => 'あなたのルート';

  @override
  String get pickupPoint => '集荷場';

  @override
  String get enterPickupPoint => '乗車場所を入力してください';

  @override
  String get dropoffPoint => '降車地点';

  @override
  String get enterDropoffPoint => '降車地点を入力してください';

  @override
  String get stopPoint => '停止点';

  @override
  String get enterStopPoint => '停止点を入力してください';

  @override
  String get confirm => '確認する';

  @override
  String get confirmDropoff => '降車の確認';

  @override
  String get confirmPickup => '受け取りを確認する';

  @override
  String get enterAtLeast3Characters => '少なくとも 3 文字を入力してください';

  @override
  String get noResults => '結果がありません';

  @override
  String get bookNow => '今予約する';

  @override
  String get cash => '現金';

  @override
  String get online => 'オンライン';

  @override
  String get offline => 'オフライン';

  @override
  String get onTrip => '旅行中';

  @override
  String get confirmPay => '確認する';

  @override
  String get cancel => 'キャンセル';

  @override
  String get apply => '適用する';

  @override
  String get enterCouponCode => 'クーポンコードを入力してください';

  @override
  String get reserveRide => '予約乗車';

  @override
  String get reserveRideMessage => '乗車を予約したい正確な日付と時刻を選択してください';

  @override
  String get reserveRideMessageSuccess => '乗車は正常に予約されました。予約した乗り物は「予約された乗り物」セクションで確認できます。';

  @override
  String get cancelReservation => '予約をキャンセルする';

  @override
  String get confirmResrve => '確認する';

  @override
  String get enterCouponDescription => '価格に適用するクーポンコードを入力してください';

  @override
  String get enterCoupon => 'クーポンを入力してください';

  @override
  String get couponApplied => '適用されたクーポン';

  @override
  String get couponAppliedDescription => 'クーポンは乗車料金に適用されました';

  @override
  String get done => '終わり！';

  @override
  String get ridePreferences => '乗り物の好み';

  @override
  String get noWaitTime => '待ち時間なし';

  @override
  String minutesRange(String minutes) {
    return '$minutes分';
  }

  @override
  String secondsRange(String seconds) {
    return '$seconds秒';
  }

  @override
  String get rideRequested => '配車リクエスト';

  @override
  String get searchingForAnOnlineDriver => 'オンラインドライバーを検索しています...';

  @override
  String get cancelRide => '乗車をキャンセルする';

  @override
  String get rideSafety => '乗車の安全性';

  @override
  String get shareTripInformation => '旅行情報を共有する';

  @override
  String get shareTripInformationDescription => '旅行情報を友達と共有できます';

  @override
  String get sos => 'SOS';

  @override
  String get sosDescription => '緊急事態を当局に知らせる';

  @override
  String get reportAnIssue => '問題を報告する';

  @override
  String get reportAnIssueMidTripDescription => '旅行中の安全上の問題を共有する';

  @override
  String get rideOptions => '乗車オプション';

  @override
  String get goBackToRide => '戻って乗ります';

  @override
  String get waitTime => '待ち時間';

  @override
  String get couponCode => 'クーポンコード';

  @override
  String get giftCardCode => 'ギフトカードコード';

  @override
  String get nicePoints => '嬉しいポイント';

  @override
  String get negativePoints => 'マイナスポイント';

  @override
  String get reviewCommentBoxHint => 'コメントを追加...';

  @override
  String get howWasYourTrip => '旅どうだった？';

  @override
  String oneStarReviewTitle(String name) {
    return '$nameとのひどい旅行';
  }

  @override
  String twoStarReviewTitle(String name) {
    return '$nameとのバッドトリップ';
  }

  @override
  String threeStarReviewTitle(String name) {
    return '$nameの平均旅行';
  }

  @override
  String fourStarReviewTitle(String name) {
    return '$nameとの良い旅';
  }

  @override
  String fiveStarReviewTitle(String name) {
    return '$nameとの素晴らしい旅行';
  }

  @override
  String get submitFeedback => 'フィードバックを送信';

  @override
  String get typeAMessage => 'メッセージを入力してください';

  @override
  String get findAnotherRide => '別の乗り物を探す';

  @override
  String get next => '次';

  @override
  String get searchForDropoffLocation => '降車場所を検索する';

  @override
  String get searchForPickupLocation => '受け取り場所を検索する';

  @override
  String get placeConfirmDialogPlaceholder => '降車場所はどこですか?';

  @override
  String get noAnnouncements => 'アナウンスはありません';

  @override
  String get announcements => 'お知らせ';

  @override
  String reviewsCount(int count) {
    return '($countレビュー)';
  }

  @override
  String get tripDetails => '旅行の詳細';

  @override
  String get rideDetails => '乗車の詳細';

  @override
  String get orderARide => '配車を注文する';

  @override
  String get noRidesYet => 'まだ乗り物はありません！';

  @override
  String get issueSubjectPlaceholder => '問題の件名を入力します';

  @override
  String get issueContentPlaceholder => '問題の説明を入力します';

  @override
  String get reportThisIssue => 'この問題を報告する';

  @override
  String get fieldIsRequired => 'フィールドは必須項目です';

  @override
  String get ok => 'わかりました';

  @override
  String get favoriteLocations => 'お気に入りの場所';

  @override
  String get favoriteLocationsSubtitle => 'お気に入りの場所を保存して簡単にアクセスできるようにします';

  @override
  String get createAFavoriteLocation => 'お気に入りの場所を作成する';

  @override
  String get addressTitleLabel => '住所のタイトル';

  @override
  String get clickToSetLocation => 'クリックして場所を設定します';

  @override
  String get whereIsYourNewFavoriteLocation => 'あなたの新しいお気に入りの場所はどこですか?';

  @override
  String get locateFavoriteLocationDescription => '下の検索ボックスまたは地図を使用して、正確な場所をピン留めします';

  @override
  String get searchLocation => '検索場所';

  @override
  String get saveChanges => '変更内容を保存';

  @override
  String get rideHistory => '乗車履歴';

  @override
  String get scheduledRides => '予定されている乗り物';

  @override
  String get keepTheOrder => '順序を守ってください';

  @override
  String get cancelTheRide => '乗車をキャンセルする';

  @override
  String get walletBalance => 'ウォレット残高';

  @override
  String get activities => '活動内容';

  @override
  String get pleaseEnterGiftCardCode => 'ギフトカード コードを入力してください';

  @override
  String get redeem => '償還';

  @override
  String get enterGiftCardCode => 'ギフトカードコードを入力してください';

  @override
  String get redeemGiftCard => 'ギフトカードの交換';

  @override
  String get redeemGiftCardDescription => 'ギフトカード コードを入力して引き換えてください。';

  @override
  String get redeemSuccessTitle => 'ギフトカードを引き換えました!';

  @override
  String redeemSuccessDescription(String amount) {
    return '$amount ギフトカードが正常に引き換えられました。';
  }

  @override
  String get addCredit => 'クレジットを追加';

  @override
  String get payNow => '今払う';

  @override
  String get addCreditToWallet => 'ウォレットにクレジットを追加する';

  @override
  String get pleaseSelectAmount => '金額を選択してください';

  @override
  String get enterAmount => '金額を入力します';

  @override
  String get selectAmount => '金額を選択してください:';

  @override
  String get wallet => '財布';

  @override
  String get totalRides => '総乗車数';

  @override
  String get appSettings => 'アプリの設定';

  @override
  String get mapSettings => 'マップ設定';

  @override
  String get lanugageSettings => '言語設定';

  @override
  String get paymentMethods => 'お支払い方法';

  @override
  String get selectCards => 'カードを選択';

  @override
  String get selectCardsDescription => '請求書の支払い方法のリストに表示したいカード番号を選択できます。';

  @override
  String get delete => '消去';

  @override
  String get nameOnCard => 'カードに記載されている名前';

  @override
  String get profile => 'プロフィール';

  @override
  String get scheduledRide => '定期乗車';

  @override
  String get addPaymentMethod => '支払い方法の追加';

  @override
  String get addPaymentMethodDescription => 'アカウントに新しい支払い方法を追加する';

  @override
  String get saveCard => 'セーブカード';

  @override
  String get selectDialCode => 'ダイヤルコードを選択してください';

  @override
  String get searchCountryName => '国名を検索する';

  @override
  String get preferences => '環境設定：';

  @override
  String get onboardingDescription => 'アカウントを登録して快適なドライブを楽しむだけですぐに利用できます';

  @override
  String get signInSignUp => 'サインイン/サインアップ';

  @override
  String get enterOtp => 'OTPを入力してください';

  @override
  String get enterPassword => 'パスワードを入力する';

  @override
  String get enterPasswordDescription => '続行するにはパスワードを入力してください';

  @override
  String get setPassword => 'パスワードを設定してください';

  @override
  String get password => 'パスワード';

  @override
  String get passwordRuleDescription => '次のうち少なくとも 2 つを含めます。';

  @override
  String get passwordRuleLength => '9文字から64文字まで';

  @override
  String get passwordRuleUpperCase => '大文字';

  @override
  String get passwordRuleLowerCase => '小文字';

  @override
  String get passwordRuleNumber => '数字';

  @override
  String get passwordRuleSpecialCharacter => '特殊文字';

  @override
  String get contactDetails => '連絡先の詳細';

  @override
  String get vehicleDetails => '車両詳細';

  @override
  String get payoutInformation => '支払い情報';

  @override
  String get documents => '書類';

  @override
  String get accessDenied => 'アクセスが拒否されました';

  @override
  String get success => '成功';

  @override
  String get skipForNow => '今のところスキップしてください';

  @override
  String get sendOtpDescription => '確認コードがあなたの電話番号に送信されました';

  @override
  String get resendOtp => 'コードを再送信する';

  @override
  String get useOtpInstead => '代わりに OTP を使用してください';

  @override
  String get home => '家';

  @override
  String get logout => 'ログアウト';

  @override
  String get driverLicenseNumber => '運転免許証番号';

  @override
  String get email => 'Eメール';

  @override
  String get address => '住所';

  @override
  String get gender => '性別';

  @override
  String get genderMale => '男';

  @override
  String get genderFemale => '女性';

  @override
  String get genderUnknown => '中立 / 不明';

  @override
  String get vehiclePlateNumber => '車両ナンバー';

  @override
  String get vehicleColor => '車両の色';

  @override
  String get vehicleModelAndMake => '車両型式 ';

  @override
  String get vehicleProductionYear => '車両製造年';

  @override
  String get bankName => '銀行名';

  @override
  String get bankRoutingNumber => '銀行ルーティング番号';

  @override
  String get bankAccountNumber => '銀行の口座番号';

  @override
  String get bankSwift => 'スウィフトコード';

  @override
  String get uploadImage => '画像をアップロードする';

  @override
  String get yourBalance => 'あなたのバランス';

  @override
  String get rideCancellation => '乗車キャンセル';

  @override
  String get cancelRideMessage => '乗車をキャンセルしてもよろしいですか?';

  @override
  String get cancelRideSuccess => '乗車は正常にキャンセルされました';

  @override
  String get confirmAndCancelRide => '確認する';

  @override
  String get selectPaymentMethod => '支払い方法を選択してください';

  @override
  String get rideFeePaid => '乗車料金は支払われました';

  @override
  String get rideFeeUnpaid => '乗車料金がまだ支払われていない';

  @override
  String get total => '合計';

  @override
  String get totalPrice => '合計金額';

  @override
  String get addCustomCredit => 'カスタム編集を追加する';

  @override
  String get serviceFee => 'サービス料';

  @override
  String get serviceOptionFee => 'サービスオプション料金';

  @override
  String get couponDiscount => 'クーポン割引';

  @override
  String get walletCreit => 'ウォレットクレジット';

  @override
  String get custom => 'カスタム';

  @override
  String get payment => '支払い';

  @override
  String get cashPayment => '現金払い';

  @override
  String cashPaymentDescription(String amount) {
    return '$amountを受け取ったことを確認していますか?';
  }

  @override
  String get cashPaymentReceived => '現金支払いを受け取りました';

  @override
  String get confirmAndEndTrip => '確認する ';

  @override
  String get earnings => '収益';

  @override
  String get acceptOrder => '注文を受け入れる';

  @override
  String get canceled => 'キャンセル';

  @override
  String get unknown => '未知';

  @override
  String get commission => '手数料';

  @override
  String get selectProfileImage => 'プロフィール画像の選択';

  @override
  String get chooseAvatarDescription => 'または、以下のリストからアバターを選択します。';

  @override
  String get fullName => 'フルネーム';

  @override
  String get favoriteDrivers => '好きなドライバー';

  @override
  String get distanceTraveled => '走行距離';

  @override
  String get rating => '評価';

  @override
  String get map => '地図';

  @override
  String get income => '所得';

  @override
  String get timeSpent => '使った時間';

  @override
  String get daily => '毎日';

  @override
  String get monthly => '毎月';

  @override
  String get noRecordsFoundEarnings => 'これらのフィルターの旅行記録は見つかりませんでした';

  @override
  String get feedbacksSummaryEmptyStateHeading => 'まだフィードバックはありません';

  @override
  String get feedbacksSummaryEmptyStateTitle => '表示できるフィードバックがまだありません。';

  @override
  String get feedbacksSummary => 'フィードバックの概要';

  @override
  String get feedbacksGoodTitle => '素晴らしい仕事です！';

  @override
  String get feedbacksGoodSubtitle => 'あなたの評価は今のところ良いようです';

  @override
  String get feedbacksBadTitle => '平均';

  @override
  String get feedbacksBadSubtitle => 'いくつかの改善を使用できます';

  @override
  String get feedbacksGoodPointsTitle => 'あなたについての良い点:';

  @override
  String get feedbacksbadPointsTitle => '改善できる点は次のとおりです。';

  @override
  String get feedbacksReviewsTitle => '以前のレビューのいくつか';

  @override
  String get payoutMethods => '支払い方法';

  @override
  String get notice => '知らせ：';

  @override
  String get payoutNoticeTitle => '週に 2 回、管理者から自動的に支払いが行われます。';

  @override
  String get addPayoutMethod => '支払い方法の追加';

  @override
  String get navigate => 'ナビゲート';

  @override
  String get noPayoutMethods => '支払い方法はありません';

  @override
  String get name => '名前';

  @override
  String get nameHint => '名前を入力';

  @override
  String get bankNameHint => '銀行名を入力してください';

  @override
  String get branchName => '支店名';

  @override
  String get branchNameHint => '支店名を入力してください';

  @override
  String get accountHolderName => '口座名義';

  @override
  String get routingNumber => 'ルーティング番号';

  @override
  String get routingNumberHint => 'ルーティング番号を入力してください';

  @override
  String get accountNumber => '口座番号';

  @override
  String get accountNumberHint => '口座番号を入力してください';

  @override
  String get addressHint => '住所を入力してください';

  @override
  String get dateOfBith => '生年月日';

  @override
  String get yearHint => '年';

  @override
  String get monthHint => '月';

  @override
  String get dayHint => '日';

  @override
  String get city => '市';

  @override
  String get cityHint => '都市を入力してください';

  @override
  String get state => '州';

  @override
  String get stateHint => '状態に入る';

  @override
  String get zipCode => '郵便番号';

  @override
  String get zipCodeHint => '郵便番号を入力';

  @override
  String get day => '日';

  @override
  String get month => '月';

  @override
  String get year => '年';

  @override
  String get noActivitiesYet => 'まだアクティビティはありません。';

  @override
  String get headingToDestination => '目的地に向かう';

  @override
  String get driverArrivedNotice => 'ドライバーがあなたを待っています';

  @override
  String get driverShouldAriveInNotice => 'ドライバーは到着予定です';

  @override
  String get driverShouldHaveArrivedNotice => 'ドライバーは今すぐ到着するはずです';

  @override
  String get deleteAccount => 'アカウントを削除する';

  @override
  String get deleteAccountNotice => 'アカウントを削除してもよろしいですか? 30 日後、アカウントは完全に削除されます。この間、再度サインインすることでアカウントを復元できます。';

  @override
  String get confirmAndDeleteAccount => '確認する ';

  @override
  String get accountDeleted => 'アカウントが削除されました';

  @override
  String share_trip_text_locations(Object destination, Object pickup) {
    return '$pickupから$destinationに向かっています。';
  }

  @override
  String share_trip_text_driver(Object firstName, Object lastName, Object mobileNumber) {
    return ' 私のドライバーの名前は$firstName $lastName、携帯番号は$mobileNumberです。';
  }

  @override
  String share_trip_text_rider(Object firstName, Object lastName, Object mobileNumber) {
    return ' 私の名前のライダーは$firstName $lastName、携帯番号は$mobileNumberです。';
  }

  @override
  String share_trip_started_time(Object startTime, Object duration) {
    return ' 旅行は $startTime に開始されており、旅行には約 $duration 分かかると予想されます';
  }

  @override
  String share_trip_not_arrived_time(Object duration) {
    return ' 運転手の車に乗り込んでからの所要時間は約 $duration 分と予想しています。';
  }

  @override
  String get sendSOSMessage => '重要: この機能は緊急の場合にのみ使用してください。私たちがあなたに代わって当局に連絡します。';

  @override
  String get confirmAndSendSOS => '確認する ';

  @override
  String get sosSentSuccessfully => 'SOSは正常に送信されました';

  @override
  String get topUpSuccess => 'ウォレットへのチャージが完了しました';

  @override
  String get cancelNotAllowed => 'すでに開始された乗車のキャンセルはできません。';

  @override
  String get error => 'エラー';

  @override
  String get connectionError => '接続エラー';

  @override
  String get serverError => 'サーバーエラー';

  @override
  String get addNewLocation => '新しい場所を追加';

  @override
  String get twoWayTrip => '双方向旅行';

  @override
  String get reportSubmitted => '報告書が提出されました';

  @override
  String get reportSubmittedDescription => 'あなたのレポートは正常に送信されました。私たちはそれを確認し、必要な措置を講じます。';

  @override
  String get cardNumber => 'カード番号';

  @override
  String get cardNumberHint => 'カード番号を入力してください';

  @override
  String get expiryDate => '有効期限';

  @override
  String get expiryDateHint => 'YY/MM';

  @override
  String get noFavoriteDrivers => 'お気に入りのドライバーはいません';

  @override
  String get noFavoriteDriversDescription => '旅行後に評価するときに、お気に入りのドライバーをお気に入りとしてマークできます。';

  @override
  String get pickupLocationNotFound => 'GPS を集合場所として使用して現在地を特定できませんでした。乗車場所を手動で入力してください。';

  @override
  String get dragToSelect => 'ドラッグして選択します';

  @override
  String get skip => 'スキップ';

  @override
  String get openSettings => '設定を開く';

  @override
  String get locationPermission => '位置情報の許可';

  @override
  String get locationPermissionDeniedForeverMessage => '位置情報の許可は、周囲で注文を受信するため、またライダーがあなたの位置を追跡するための要件です。この許可がなければ注文を受け取ることはできず、当社はあなたの現在地に注意しています。この権限は電話の設定で変更できます。';

  @override
  String get allow => '許可する';

  @override
  String get driverOnlineTitle => '乗り物を探しています';

  @override
  String get driverOfflineTitle => 'リクエストの受信を開始するにはオンラインに接続してください';

  @override
  String get payInCash => '現金払い';

  @override
  String get payInCashDescription => 'ドライバーへ現金でお支払いください。ドライバーは支払いを受け取り次第確認します。';

  @override
  String get addToFavoriteDrivers => 'お気に入りのドライバーに追加する';

  @override
  String get slideToConfirmArrival => 'スライドして到着を確認します';

  @override
  String get slideToConfirmPickup => 'スライドしてピックアップを確認します';

  @override
  String get slideToConfirmDropoff => 'スライドして降車を確認します';

  @override
  String get noticePickingUpRiderIn => 'ライダーを迎えに行く場所:';

  @override
  String get noticeRiderNotified => 'ライダーに通知されました。ライダーを迎えに行き、乗車を開始してください';
}
