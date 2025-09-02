import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/entities/favorite_location.dart';
import 'package:rider_flutter/core/enums/address_type.dart';
import 'package:rider_flutter/features/favorite_locations/domain/repositories/favorite_locations_repository.dart';

part 'favorite_locations.state.dart';
part 'favorite_locations.freezed.dart';

@lazySingleton
class FavoriteLocationsCubit extends Cubit<FavoriteLocationsState> {
  final FavoriteLocationsRepository repository;

  FavoriteLocationsCubit(this.repository) : super(const FavoriteLocationsState.initial());

  void onStarted() async {
    emit(const FavoriteLocationsState.loading());
    final result = await repository.getFavoriteLocations();
    result.fold((failure) => emit(FavoriteLocationsState.error(failure.errorMessage)), (locations) {
      final hasHome = locations.any((element) => element.type == AddressType.home);
      final hasWork = locations.any((element) => element.type == AddressType.work);
      final result = <(AddressType, FavoriteLocationEntity?)>[];
      if (!hasHome) {
        result.add((AddressType.home, null));
      }
      if (!hasWork) {
        result.add((AddressType.work, null));
      }
      result.addAll(locations.map((e) => (e.type, e)));
      emit(FavoriteLocationsState.loaded(result));
    });
  }

  void onStopped() {
    emit(const FavoriteLocationsState.initial());
  }
}
