import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/enums/address_type.dart';
import 'package:flutter_common/core/enums/form_state.dart';
import 'package:rider_flutter/features/favorite_locations/domain/repositories/favorite_locations_repository.dart';
import 'package:rider_flutter/features/favorite_locations/models/update_favorite_location_input.dart';

part 'add.state.dart';
part 'add.freezed.dart';

@lazySingleton
class AddFavoriteLocationCubit extends Cubit<AddFavoriteLocationState> {
  final FavoriteLocationsRepository repository;

  AddFavoriteLocationCubit(this.repository) : super(AddFavoriteLocationState.initial());

  void init({
    required AddressType? addressType,
  }) =>
      emit(
        AddFavoriteLocationState(
          formState: const AppFormState.idle(),
          addressType: addressType,
          addressName: null,
          selectedLocation: null,
        ),
      );

  void updateAddressType(AddressType? addressType) => emit(
        state.copyWith(
          addressType: addressType,
        ),
      );

  void updateAddressName(String? addressName) => emit(
        state.copyWith(
          addressName: addressName,
        ),
      );

  void updateSelectedLocation(PlaceEntity? selectedLocation) => emit(
        state.copyWith(
          selectedLocation: selectedLocation,
        ),
      );

  void save({
    required UpdateFavoriteLocationInput input,
  }) async {
    emit(
      state.copyWith(formState: const AppFormState.busy()),
    );
    final result = await repository.addFavoriteLocation(input: input);
    emit(
      state.copyWith(
        formState: result.fold(
          (l) => AppFormState.error(l.errorMessage),
          (r) => const AppFormState.success(null),
        ),
      ),
    );
  }
}
