import 'package:flutter_common/config/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:generic_map/generic_map.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_common/core/enums/map_provider_enum.prod.dart';

part 'settings.state.dart';
part 'settings.freezed.dart';
part 'settings.g.dart';

@singleton
class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(SettingsState.initial());

  @override
  SettingsState? fromJson(Map<String, dynamic> json) {
    return SettingsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(SettingsState state) {
    return state.toJson();
  }

  void changeLanguage(String locale) {
    emit(state.copyWith(locale: locale));
  }

  void changeMapProvider(MapProviderEnum mapProvider) {
    emit(state.copyWith(mapProvider: mapProvider));
  }
}
