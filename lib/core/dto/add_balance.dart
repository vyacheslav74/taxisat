import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/add_balance_status.dart';

part 'add_balance.freezed.dart';

@freezed
class AddBalanceDTO with _$AddBalanceDTO {
  const factory AddBalanceDTO({
    required AddBalanceStatus status,
    required String currency,
    required double amount,
    required String? errorMessage,
    required String? paymentUrl,
  }) = _AddBalanceDTO;
}
