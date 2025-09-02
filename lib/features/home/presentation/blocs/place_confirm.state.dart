part of 'place_confirm.dart';

@freezed
class PlaceConfirmState with _$PlaceConfirmState {
  const factory PlaceConfirmState.loading() = _Loading;
  const factory PlaceConfirmState.loaded(PlaceEntity data) = _Loaded;
}
