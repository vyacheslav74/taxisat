part of 'login.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginPage.enterNumber()) LoginPage loginPage,
    @Default("") String mobileNumber,
    String? hash,
    String? jwtToken,
    ProfileEntity? profile,
    DateTime? lastOtpSentAt,
  }) = _LoginState;

  const LoginState._();

  bool get canResendOtp {
    if (lastOtpSentAt == null) {
      return true;
    }

    final now = DateTime.now();
    final difference = now.difference(lastOtpSentAt!);
    return difference.inSeconds > 60;
  }

  int get resendOtpIn {
    if (lastOtpSentAt == null) {
      return 0;
    }

    final now = DateTime.now();
    final difference = now.difference(lastOtpSentAt!);
    return 60 - difference.inSeconds;
  }
}

@freezed
sealed class LoginPage with _$LoginPage {
  const factory LoginPage.enterNumber({
    @Default(PageState.idle()) PageState state,
  }) = EnterNumber;

  const factory LoginPage.enterOtp({
    @Default(PageState.idle()) PageState state,
  }) = EnterOtp;

  const factory LoginPage.enterPassword({
    @Default(PageState.idle()) PageState state,
  }) = EnterPassword;

  const factory LoginPage.enterName({
    @Default(PageState.idle()) PageState state,
  }) = EnterName;

  const factory LoginPage.setPassword({
    @Default(PageState.idle()) PageState state,
    @Default("") String newPassword,
  }) = SetPassword;

  const factory LoginPage.success({
    @Default(PageState.idle()) PageState state,
  }) = Success;
}

@freezed
sealed class PageState with _$PageState {
  const factory PageState.idle() = _Idle;
  const factory PageState.loading() = _Loading;
  const factory PageState.error({required String errorMessage}) = _Error;

  const PageState._();

  bool get isLoading => maybeMap(loading: (_) => true, orElse: () => false);
}

extension SetPasswordX on SetPassword {
  bool get codeLengthIsSafe => newPassword.length >= 9 && newPassword.length <= 64;

  bool get hasUppercase => newPassword.contains(RegExp(r'[A-Z]'));

  bool get hasDigits => newPassword.contains(RegExp(r'[0-9]'));

  bool get hasLowercase => newPassword.contains(RegExp(r'[a-z]'));

  bool get hasSpecialCharacters => newPassword.contains(
        RegExp(
          r'[!@#$%^&*(),.?":{}|<>]',
        ),
      );

  bool get hasAtLeastTwoChecks =>
      [
        hasUppercase,
        hasDigits,
        hasLowercase,
        hasSpecialCharacters,
      ].where((element) => element).length >=
      2;
}
