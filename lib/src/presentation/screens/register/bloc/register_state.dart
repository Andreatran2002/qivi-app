import 'package:flutter/material.dart';

@immutable
class RegisterState {
  final bool isPhoneNumberValid;
  final bool isPasswordValid;
  final bool isFirstNameValid;
  final bool isLastNameValid;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;

  bool get isFormValid =>
      isPhoneNumberValid &&
      isPasswordValid &&
      isFirstNameValid &&
      isLastNameValid;

  const RegisterState({
    required this.isPhoneNumberValid,
    required this.isPasswordValid,
    required this.isFirstNameValid,
    required this.isLastNameValid,
    required this.isSubmitting,
    required this.isSuccess,
    required this.isFailure,
  });

  factory RegisterState.empty() {
    return const RegisterState(
      isPhoneNumberValid: true,
      isPasswordValid: true,
      isFirstNameValid: true,
      isLastNameValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory RegisterState.loading() {
    return const RegisterState(
      isPhoneNumberValid: true,
      isPasswordValid: true,
      isFirstNameValid: true,
      isLastNameValid: true,
      isSubmitting: true,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory RegisterState.failure() {
    return const RegisterState(
      isPhoneNumberValid: true,
      isPasswordValid: true,
      isFirstNameValid: true,
      isLastNameValid: true,
      isSuccess: false,
      isSubmitting: false,
      isFailure: true,
    );
  }

  factory RegisterState.success() {
    return const RegisterState(
      isPhoneNumberValid: true,
      isPasswordValid: true,
      isFirstNameValid: true,
      isLastNameValid: true,
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
    );
  }

  RegisterState update(
      {bool? isPhoneNumberValid,
      bool? isPasswordValid,
      bool? isFirstNameValid,
      bool? isLastNameValid}) {
    return copyWith(
      isPhoneNumberValid: isPhoneNumberValid,
      isPasswordValid: isPasswordValid,
      isFirstNameValid: isFirstNameValid,
      isLastNameValid: isLastNameValid,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  RegisterState copyWith({
    bool? isPhoneNumberValid,
    bool? isPasswordValid,
    bool? isFirstNameValid,
    bool? isLastNameValid,
    bool? isSubmitting,
    bool? isSuccess,
    bool? isFailure,
  }) {
    return RegisterState(
      isPhoneNumberValid: isPhoneNumberValid ?? this.isPhoneNumberValid,
      isPasswordValid: isPasswordValid ?? this.isPasswordValid,
      isFirstNameValid: isFirstNameValid ?? this.isFirstNameValid,
      isLastNameValid: isLastNameValid ?? this.isLastNameValid,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
    );
  }

  @override
  String toString() {
    return 'RegisterState{isPhoneNumberValid: $isPhoneNumberValid, isPasswordValid: $isPasswordValid, isFirstNameValid: $isFirstNameValid, isLastNameValid: $isLastNameValid isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure}';
  }
}
