import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/core/enums/address_type.dart';
import 'package:flutter_common/core/enums/form_state.dart';
import 'package:rider_flutter/features/favorite_locations/domain/repositories/favorite_locations_repository.dart';
import 'package:rider_flutter/features/favorite_locations/models/update_favorite_location_input.dart';

part 'edit.state.dart';
part 'edit.freezed.dart';

@lazySingleton
class EditFavoriteLocationCubit extends Cubit<EditFavoriteLocationState> {
  final FavoriteLocationsRepository repository;

  EditFavoriteLocationCubit(this.repository) : super(EditFavoriteLocationState.initial());

  void init({
    required AddressType addressType,
    required String addressName,
    required PlaceEntity selectedLocation,
  }) =>
      emit(
        EditFavoriteLocationState(
          formState: const AppFormState.idle(),
          addressType: addressType,
          addressName: addressName,
          selectedLocation: selectedLocation,
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
    required String id,
    required UpdateFavoriteLocationInput input,
  }) async {
    emit(
      state.copyWith(formState: const AppFormState.busy()),
    );
    final result = await repository.updateFavoriteLocation(id: id, input: input);
    emit(
      state.copyWith(
        formState: result.fold(
          (failure) => AppFormState.error(failure.errorMessage),
          (_) => const AppFormState.success(null),
        ),
      ),
    );
  }

  void delete(String id) async {
    emit(
      state.copyWith(formState: const AppFormState.busy()),
    );
    final result = await repository.deleteFavoriteLocation(id: id);
    emit(
      state.copyWith(
        formState: result.fold(
          (failure) => AppFormState.error(failure.errorMessage),
          (_) => const AppFormState.success(null),
        ),
      ),
    );
  }
}
