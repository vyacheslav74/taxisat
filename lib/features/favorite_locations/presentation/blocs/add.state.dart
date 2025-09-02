part of 'add.dart';

@freezed
class AddFavoriteLocationState with _$AddFavoriteLocationState {
  const factory AddFavoriteLocationState({
    required AddressType? addressType,
    required String? addressName,
    required PlaceEntity? selectedLocation,
    required AppFormState<void> formState,
  }) = _AddFavoriteLocationState;

  factory AddFavoriteLocationState.initial() => const AddFavoriteLocationState(
        addressType: null,
        addressName: null,
        selectedLocation: null,
        formState: AppFormState.idle(),
      );
}
