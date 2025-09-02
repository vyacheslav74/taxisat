import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/entities/order_compact.dart';
import 'package:rider_flutter/features/scheduled_rides/domain/repositories/scheduled_rides_repository.dart';

part 'scheduled_rides.state.dart';
part 'scheduled_rides.freezed.dart';

@lazySingleton
class ScheduledRidesBloc extends Cubit<ScheduledRidesState> {
  final ScheduledRidesRepository _repository;
  ScheduledRidesBloc(this._repository) : super(const ScheduledRidesState.initial());

  Future<void> load() async {
    emit(const ScheduledRidesState.loading());
    final result = await _repository.getUpcomingRides();
    result.fold(
      (failure) => emit(ScheduledRidesState.error(failure.errorMessage)),
      (data) {
        if (data.isEmpty) {
          emit(const ScheduledRidesState.empty());
          return;
        }
        emit(ScheduledRidesState.loaded(data));
      },
    );
  }
}
