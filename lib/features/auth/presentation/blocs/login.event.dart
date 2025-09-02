part of 'login.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onNumberVerificationRequested({
    required String mobileNumber,
    required String countryCode,
  }) = _OnNumberVerificationRequested;
  const factory LoginEvent.onVerificationSkipped() = _OnSkipVerificationRequested;

  const factory LoginEvent.onBackButtonPressed() = _OnBackButtonPressed;

  const factory LoginEvent.onOtpVerificationRequested({
    required String otp,
  }) = OnOtpVerificationRequested;
  const factory LoginEvent.onCodeResendRequested() = _OnCodeResendRequested;

  const factory LoginEvent.onPasswordSubmitted({
    required String password,
  }) = OnPasswordSubmitted;

  const factory LoginEvent.onNewPasswordSubmitted({
    required String password,
  }) = _OnNewPasswordSubmitted;

  const factory LoginEvent.onProfileDataSubmitted({
    required String firstName,
    required String lastName,
    required Gender? gender,
  }) = _OnProfileDataSubmitted;

  const factory LoginEvent.reset() = _Reset;
}
