import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet.freezed.dart';
part 'wallet.g.dart';

@freezed
class WalletEntity with _$WalletEntity {
  const factory WalletEntity({
    required double balance,
    required String currency,
  }) = _WalletEntity;

  factory WalletEntity.fromJson(Map<String, dynamic> json) =>
      _$WalletEntityFromJson(json);
}
