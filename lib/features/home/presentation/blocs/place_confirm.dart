import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/datasources/geo_datasource.dart';
import 'package:flutter_common/core/entities/place.dart';

part 'place_confirm.state.dart';
part 'place_confirm.freezed.dart';

@lazySingleton
class PlaceConfirmCubit extends Cubit<PlaceConfirmState> {
  final GeoDatasource geoDatasource;

  PlaceConfirmCubit(this.geoDatasource) : super(const PlaceConfirmState.loading());

  void onLoaded({
    required PlaceEntity place,
  }) =>
      emit(PlaceConfirmState.loaded(place));

  void onLoading() => emit(const PlaceConfirmState.loading());
}
