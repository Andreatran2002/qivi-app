import 'package:flutter/material.dart';

@immutable
class LoginState {
  final bool isPhoneNumberValid;
  final bool isPasswordValid;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;
  final String errorMessage;

  bool get isFormValid => isPhoneNumberValid && isPasswordValid;

  const LoginState({
    required this.isPhoneNumberValid,
    required this.isPasswordValid,
    required this.isSubmitting,
    required this.isSuccess,
    required this.isFailure,
    required this.errorMessage,
  });

  factory LoginState.empty() {
    return const LoginState(
        isPhoneNumberValid: true,
        isPasswordValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        errorMessage: "");
  }

  factory LoginState.loading() {
    return const LoginState(
        isPhoneNumberValid: true,
        isPasswordValid: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        errorMessage: "");
  }

  factory LoginState.failure(String error) {
    return LoginState(
        isPhoneNumberValid: true,
        isPasswordValid: true,
        isSuccess: false,
        isSubmitting: false,
        isFailure: true,
        errorMessage: error);
  }

  factory LoginState.success() {
    return const LoginState(
        isPhoneNumberValid: true,
        isPasswordValid: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        errorMessage: "");
  }

  LoginState update({bool? isPhoneNumberValid, bool? isPasswordValid}) {
    return copyWith(
        isPhoneNumberValid: isPhoneNumberValid,
        isPasswordValid: isPasswordValid,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        errorMessage: "");
  }

  LoginState copyWith(
      {bool? isPhoneNumberValid,
      bool? isPasswordValid,
      bool? isSubmitting,
      bool? isSuccess,
      bool? isFailure,
      String? errorMessage}) {
    return LoginState(
        isPhoneNumberValid: isPhoneNumberValid ?? this.isPhoneNumberValid,
        isPasswordValid: isPasswordValid ?? this.isPasswordValid,
        isSubmitting: isSubmitting ?? this.isSubmitting,
        isSuccess: isSuccess ?? this.isSuccess,
        isFailure: isFailure ?? this.isFailure,
        errorMessage: errorMessage ?? this.errorMessage);
  }

  @override
  String toString() {
    return 'LoginState{isPhoneNumberValid: $isPhoneNumberValid, isPasswordValid: $isPasswordValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure}';
  }
}
