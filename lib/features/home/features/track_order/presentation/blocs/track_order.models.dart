part of 'track_order.dart';

// @freezed
// class TrackOrderPageState with _$TrackOrderPageState {
//   const factory TrackOrderPageState.looking() = _Looking;

//   const factory TrackOrderPageState.rideInfo({
//     required TrackOrderPage page,
//   }) = _RideInfo;

//   const factory TrackOrderPageState.rateDriver() = _RateDriver;

//   const TrackOrderPageState._();

//   factory TrackOrderPageState.fromJson(Map<String, dynamic> json) => _$TrackOrderPageStateFromJson(json);
// }

@freezed
sealed class TrackOrderPage with _$TrackOrderPage {
  const factory TrackOrderPage.overview() = _Overview;
  const factory TrackOrderPage.chat() = _Chat;
  const factory TrackOrderPage.payment() = _Payment;

  factory TrackOrderPage.fromJson(Map<String, dynamic> json) => _$TrackOrderPageFromJson(json);
}
