import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/features/profile/data/models/profile_aggregations_info.dart';

import '../../domain/repositories/profile_repository.dart';

part 'profile.state.dart';
part 'profile.freezed.dart';

@lazySingleton
class ProfileBloc extends Cubit<ProfileState> {
  final ProfileRepository _repository;
  ProfileBloc(this._repository) : super(const ProfileState.initial());

  void load() async {
    emit(const ProfileState.loading());
    final result = await _repository.getProfileAggregationsInfo();
    result.fold(
      (error) => emit(ProfileState.error(error.errorMessage)),
      (data) => emit(ProfileState.loaded(data)),
    );
  }
}
