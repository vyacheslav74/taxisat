part of 'settings.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required String locale,
    MapProviderEnum? mapProvider,
  }) = _SettingsState;

  factory SettingsState.initial() => const SettingsState(
        locale: 'ru',
      );

  factory SettingsState.fromJson(Map<String, dynamic> json) => _$SettingsStateFromJson(json);

  const SettingsState._();

  MapProviderEnum get mapProviderEnum => mapProvider ?? Constants.defaultMapProvider;

  MapProvider get provider => (mapProvider ?? Constants.defaultMapProvider).providerObject;
}
