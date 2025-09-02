part of 'wallet.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.initial() = _Initial;
  const factory WalletState.loading() = _Loading;
  const factory WalletState.loaded({
    required WalletQueryResponse data,
  }) = _Loaded;
  const factory WalletState.error(String message) = _Error;
}
