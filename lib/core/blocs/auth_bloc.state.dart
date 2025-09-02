part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated({
    required String jwtToken,
    required ProfileEntity profile,
  }) = _Authenticated;

  const factory AuthState.unauthenticated() = _Unauthenticated;

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);
}

extension AuthStateX on AuthState {
  bool get isAuthenticated => this is _Authenticated;
  String? get jwtToken => isAuthenticated ? (this as _Authenticated).jwtToken : null;

  String get fullName {
    return map(authenticated: (authenticated) {
      return authenticated.profile.fullName;
    }, unauthenticated: (_) {
      return '';
    });
  }

  Option<Either<String, String>> get avatar {
    return map(authenticated: (authenticated) {
      return authenticated.profile.avatar;
    }, unauthenticated: (_) {
      return const None();
    });
  }
}
