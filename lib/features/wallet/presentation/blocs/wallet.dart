import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/wallet_query_response.dart';
import '../../domain/repositories/wallet_repository.dart';

part 'wallet.state.dart';
part 'wallet.freezed.dart';

@lazySingleton
class WalletBloc extends Cubit<WalletState> {
  final WalletRepository walletRepository;

  WalletBloc(this.walletRepository) : super(const WalletState.initial());

  void load() async {
    emit(const WalletState.loading());
    final result = await walletRepository.getWalletData();
    result.fold(
      (failure) => emit(
        WalletState.error(
          failure.errorMessage,
        ),
      ),
      (data) => emit(
        WalletState.loaded(
          data: data,
        ),
      ),
    );
  }
}
