import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:rider_flutter/features/ride_history/domain/repositories/ride_history_repository.dart';

part 'ride_history.state.dart';
part 'ride_history.freezed.dart';

@lazySingleton
class RideHistoryBloc extends Cubit<RideHistoryState> {
  final RideHistoryRepository _repository;
  RideHistoryBloc(this._repository) : super(const RideHistoryState.initial());

  void load() async {
    emit(const RideHistoryState.loading());
    final result = await _repository.getRideHistory();
    result.fold(
      (failure) => emit(RideHistoryState.error(failure.errorMessage)),
      (orders) => orders.isEmpty ? emit(const RideHistoryState.empty()) : emit(RideHistoryState.loaded(orders)),
    );
  }
}
