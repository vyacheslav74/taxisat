import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

import '../entities/profile.dart';
import '../repositories/profile_repository.dart';

part 'auth_bloc.state.dart';
part 'auth_bloc.freezed.dart';
part 'auth_bloc.g.dart';

@lazySingleton
class AuthBloc extends HydratedCubit<AuthState> {
  final ProfileRepository profileRepository;

  AuthBloc(this.profileRepository) : super(const AuthState.unauthenticated());

  @override
  AuthState? fromJson(Map<String, dynamic> json) => AuthState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(AuthState state) => state.toJson();

  void onLoggedIn({
    required String jwtToken,
    required ProfileEntity profile,
  }) {
    emit(
      AuthState.authenticated(
        jwtToken: jwtToken,
        profile: profile,
      ),
    );
  }

  void profileUpdated(ProfileEntity profile) {
    emit(
      state.map(
        unauthenticated: (unauthenticated) => throw Exception(
          'Unauthenticated user',
        ),
        authenticated: (authenticated) => authenticated.copyWith(
          profile: profile,
        ),
      ),
    );
  }

  void requestUserInfo() async {
    state.mapOrNull(
      authenticated: (authenticated) async {
        final profile = await profileRepository.getProfile();
        emit(
          profile.fold(
            (l) {
              if (l.errorMessage == 'не авторизован') {
                return const AuthState.unauthenticated();
              } else {
                throw Exception("Не удалось получить информацию о пользователе");
              }
            },
            (r) => AuthState.authenticated(
              jwtToken: (state as _Authenticated).jwtToken,
              profile: r,
            ),
          ),
        );
      },
    );
  }

  void onLoggedOut() {
    emit(const AuthState.unauthenticated());
  }
}
