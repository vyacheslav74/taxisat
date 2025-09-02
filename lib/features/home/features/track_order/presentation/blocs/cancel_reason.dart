import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/entities/cancel_reason.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/features/home/features/track_order/domain/repositories/track_order_repository.dart';

part 'cancel_reason.state.dart';
part 'cancel_reason.freezed.dart';

@lazySingleton
class CancelReasonCubit extends Cubit<CancelReasonState> {
  final TrackOrderRepository _repository;

  CancelReasonCubit(this._repository) : super(const CancelReasonState.initial());

  void onStarted() {
    emit(const CancelReasonState.loading());
    _repository.getCancelReasons().then(
          (result) => result.fold(
            (failure) => emit(
              CancelReasonState.error(
                failure.errorMessage,
              ),
            ),
            (data) => emit(
              CancelReasonState.loaded(
                data,
              ),
            ),
          ),
        );
  }
}
