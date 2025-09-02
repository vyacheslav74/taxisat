import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/entities/profile.dart';
import 'package:rider_flutter/features/auth/domain/entities/verify_otp_response.dart';
import 'package:rider_flutter/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_common/core/enums/gender.dart';

part 'login.event.dart';
part 'login.state.dart';
part 'login.freezed.dart';

@lazySingleton
class LoginBloc extends Cubit<LoginState> {
  AuthRepository repository;

  LoginBloc(
    this.repository,
  ) : super(const LoginState());

  void _onSuccessVerifyResponse(VerifyOtpResponse response) {
    emit(
      state.copyWith(
        loginPage: response.hasPassword == false
            ? const LoginPage.setPassword()
            : (response.hasName == false ? const LoginPage.enterName() : const LoginPage.success()),
        jwtToken: response.jwtToken,
        profile: response.profile,
      ),
    );
  }

  void onNumberVerificationRequested({
    required String mobileNumber,
    required String countryCode,
  }) async {
    emit(
      state.copyWith.loginPage.call(
        state: const PageState.loading(),
      ),
    );
    final result = await repository.verifyNumber(
      mobileNumber: mobileNumber,
      countryCode: countryCode,
    );
    result.fold(
      (failure) => emit(
        state.copyWith.loginPage.call(
          state: PageState.error(
            errorMessage: failure.errorMessage,
          ),
        ),
      ),
      (response) {
        if (response.isExistingUser) {
          emit(
            state.copyWith(
              loginPage: const LoginPage.enterPassword(),
              mobileNumber: mobileNumber,
            ),
          );
        } else {
          emit(
            state.copyWith(
              loginPage: const LoginPage.enterOtp(),
              mobileNumber: mobileNumber,
              hash: response.hash!,
              lastOtpSentAt: DateTime.now(),
            ),
          );
        }
      },
    );
  }

  void onVerificationSkipped() {
    emit(
      state.copyWith(
        loginPage: const LoginPage.success(),
      ),
    );
  }

  void onOtpVerificationRequested(String otp) async {
    final result = await repository.verifyOtp(state.hash!, otp);
    result.fold(
      (failure) {
        final newState = state.copyWith.loginPage.call(
          state: PageState.error(
            errorMessage: failure.errorMessage,
          ),
        );
        emit(newState);
      },
      (response) {
        _onSuccessVerifyResponse(
          response,
        );
      },
    );
  }

  void onCodeResendRequested() async {
    emit(state.copyWith.loginPage.call(state: const PageState.loading()));
    final result = await repository.resendOtp(state.mobileNumber);
    result.fold(
      (failure) => emit(state.copyWith.loginPage(
        state: PageState.error(errorMessage: failure.errorMessage),
      )),
      (response) {
        emit(
          state.copyWith(
            loginPage: const LoginPage.enterOtp(),
            hash: response.hash!,
            lastOtpSentAt: DateTime.now(),
          ),
        );
      },
    );
  }

  void onPasswordSubmitted(String password) async {
    emit(
      state.copyWith.loginPage.call(
        state: const PageState.loading(),
      ),
    );
    final result = await repository.verifyPassword(
      state.mobileNumber,
      password,
    );
    result.fold(
      (failure) {
        final newState = state.copyWith.loginPage.call(
          state: PageState.error(errorMessage: failure.errorMessage),
        );
        emit(
          newState,
        );
      },
      (response) => _onSuccessVerifyResponse(
        response,
      ),
    );
  }

  void onNewPasswordChanged(String password) {
    state.loginPage.maybeMap(
        orElse: () => throw Exception("Invalid state"),
        setPassword: (setPassword) {
          emit(
            state.copyWith(
              loginPage: setPassword.copyWith(
                newPassword: password,
              ),
            ),
          );
        });
  }

  void onNewPasswordSubmitted() async {
    state.loginPage.maybeMap(
      orElse: () => throw Exception('Invalid state'),
      setPassword: (value) async {
        emit(state.copyWith.loginPage.call(state: const PageState.loading()));
        final result = await repository.setPassword(value.newPassword);
        result.fold(
          (failure) => emit(
            state.copyWith.loginPage.call(
              state: PageState.error(errorMessage: failure.errorMessage),
            ),
          ),
          (response) => _onSuccessVerifyResponse(
            response,
          ),
        );
      },
    );
  }

  void onProfileDataSubmitted({
    required String firstName,
    required String lastName,
    required Gender? gender,
    required String? email,
  }) async {
    emit(state.copyWith.loginPage.call(state: const PageState.loading()));
    final result = await repository.updateProfile(
      firstName: firstName,
      lastName: lastName,
      email: email,
      gender: gender,
    );
    result.fold(
      (failure) => emit(
        state.copyWith.loginPage.call(
          state: PageState.error(errorMessage: failure.errorMessage),
        ),
      ),
      (response) => emit(
        state.copyWith(
          jwtToken: state.jwtToken,
          profile: response,
          loginPage: const LoginPage.success(),
        ),
      ),
    );
  }

  void onBackButtonPressed() {
    emit(state.copyWith.call(loginPage: const LoginPage.enterNumber()));
  }

  void reset() {
    emit(const LoginState());
  }
}
