import 'package:flutter/material.dart';

@immutable
class LoginState {
  final bool isPhoneNumberValid;
  final bool isPasswordValid;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;

  bool get isFormValid => isPhoneNumberValid && isPasswordValid;

  const LoginState({
    required this.isPhoneNumberValid,
    required this.isPasswordValid,
    required this.isSubmitting,
    required this.isSuccess,
    required this.isFailure,
  });

  factory LoginState.empty() {
    return const LoginState(
      isPhoneNumberValid: true,
      isPasswordValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory LoginState.loading() {
    return const LoginState(
      isPhoneNumberValid: true,
      isPasswordValid: true,
      isSubmitting: true,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory LoginState.failure() {
    return const LoginState(
      isPhoneNumberValid: true,
      isPasswordValid: true,
      isSuccess: false,
      isSubmitting: false,
      isFailure: true,
    );
  }

  factory LoginState.success() {
    return const LoginState(
      isPhoneNumberValid: true,
      isPasswordValid: true,
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
    );
  }

  LoginState update({bool? isPhoneNumberValid, bool? isPasswordValid}) {
    return copyWith(
      isPhoneNumberValid: isPhoneNumberValid,
      isPasswordValid: isPasswordValid,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  LoginState copyWith({
    bool? isPhoneNumberValid,
    bool? isPasswordValid,
    bool? isSubmitting,
    bool? isSuccess,
    bool? isFailure,
  }) {
    return LoginState(
      isPhoneNumberValid: isPhoneNumberValid ?? this.isPhoneNumberValid,
      isPasswordValid: isPasswordValid ?? this.isPasswordValid,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
    );
  }

  @override
  String toString() {
    return 'LoginState{isPhoneNumberValid: $isPhoneNumberValid, isPasswordValid: $isPasswordValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure}';
  }
}
