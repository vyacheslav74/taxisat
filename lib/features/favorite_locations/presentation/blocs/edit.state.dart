part of 'edit.dart';

@freezed
class EditFavoriteLocationState with _$EditFavoriteLocationState {
  const factory EditFavoriteLocationState({
    required AddressType? addressType,
    required String? addressName,
    required PlaceEntity? selectedLocation,
    required AppFormState<void> formState,
  }) = _EditFavoriteLocationState;

  factory EditFavoriteLocationState.initial() => const EditFavoriteLocationState(
        addressType: null,
        addressName: null,
        selectedLocation: null,
        formState: AppFormState.idle(),
      );
}
