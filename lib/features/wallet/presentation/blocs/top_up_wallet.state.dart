part of 'top_up_wallet.dart';

@freezed
class TopUpWalletState with _$TopUpWalletState {
  const factory TopUpWalletState.initial() = _InitialTopUpWallet;
  const factory TopUpWalletState.loading() = _LoadingTopUpWallet;
  const factory TopUpWalletState.loaded(IntentResult data) = _LoadedTopUpWallet;
}
