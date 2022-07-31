import 'package:flutter/material.dart';

@immutable
class RegisterState {
  final bool isPhoneNumberValid;
  final bool isPasswordValid;
  final bool isAddressValid;
  final bool isFullNameValid;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;

  bool get isFormValid =>
      isPhoneNumberValid &&
      isPasswordValid &&
      isAddressValid &&
      isFullNameValid;

  const RegisterState({
    required this.isPhoneNumberValid,
    required this.isPasswordValid,
    required this.isAddressValid,
    required this.isFullNameValid,
    required this.isSubmitting,
    required this.isSuccess,
    required this.isFailure,
  });

  factory RegisterState.empty() {
    return const RegisterState(
      isPhoneNumberValid: true,
      isPasswordValid: true,
      isAddressValid: true,
      isFullNameValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory RegisterState.loading() {
    return const RegisterState(
      isPhoneNumberValid: true,
      isPasswordValid: true,
      isAddressValid: true,
      isFullNameValid: true,
      isSubmitting: true,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory RegisterState.failure() {
    return const RegisterState(
      isPhoneNumberValid: true,
      isPasswordValid: true,
      isAddressValid: true,
      isFullNameValid: true,
      isSuccess: false,
      isSubmitting: false,
      isFailure: true,
    );
  }

  factory RegisterState.success() {
    return const RegisterState(
      isPhoneNumberValid: true,
      isPasswordValid: true,
      isAddressValid: true,
      isFullNameValid: true,
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
    );
  }

  RegisterState update(
      {bool? isPhoneNumberValid,
      bool? isPasswordValid,
      bool? isAddressValid,
      bool? isFullNameValid}) {
    return copyWith(
      isPhoneNumberValid: isPhoneNumberValid,
      isPasswordValid: isPasswordValid,
      isAddressValid: isAddressValid,
      isFullNameValid: isFullNameValid,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  RegisterState copyWith({
    bool? isPhoneNumberValid,
    bool? isPasswordValid,
    bool? isAddressValid,
    bool? isFullNameValid,
    bool? isSubmitting,
    bool? isSuccess,
    bool? isFailure,
  }) {
    return RegisterState(
      isPhoneNumberValid: isPhoneNumberValid ?? this.isPhoneNumberValid,
      isPasswordValid: isPasswordValid ?? this.isPasswordValid,
      isAddressValid: isAddressValid ?? this.isAddressValid,
      isFullNameValid: isFullNameValid ?? this.isFullNameValid,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
    );
  }

  @override
  String toString() {
    return 'RegisterState{isPhoneNumberValid: $isPhoneNumberValid, isPasswordValid: $isPasswordValid, isAddressValid: $isAddressValid, isFullNameValid: $isFullNameValid isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure}';
  }
}
