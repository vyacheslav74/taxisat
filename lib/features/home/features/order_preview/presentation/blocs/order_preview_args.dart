import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/dto/calculate_fare_args.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:flutter_common/core/entities/ride_option.dart';

part 'order_preview_args.state.dart';
part 'order_preview_args.freezed.dart';

@LazySingleton()
class OrderPreviewArgsCubit extends Cubit<OrderPreviewArgsState> {
  OrderPreviewArgsCubit() : super(OrderPreviewArgsState.initial());

  void onStarted(List<PlaceEntity> waypoints) {
    emit(
      state.copyWith(
        waypoints: waypoints,
      ),
    );
  }

  void onCouponCodeChanged(String couponCode) {
    emit(state.copyWith(couponCode: couponCode));
  }

  void onRidePreferencesChanged({
    required List<RideOptionEntity> rideOptions,
    required int? waitTime,
    required bool isTwoWayTrip,
  }) {
    emit(
      state.copyWith(
        rideOptions: rideOptions,
        waitTime: waitTime,
        isTwoWay: isTwoWayTrip,
      ),
    );
  }
}
