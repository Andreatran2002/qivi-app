import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginPhoneNumberChanged extends LoginEvent {
  final String phoneNumber;

  const LoginPhoneNumberChanged({required this.phoneNumber});

  @override
  List<Object> get props => [phoneNumber];

  @override
  String toString() {
    return 'LoginPhoneNumberChanged{phoneNumber: $phoneNumber}';
  }
}

class LoginPasswordChanged extends LoginEvent {
  final String password;

  const LoginPasswordChanged({required this.password});

  @override
  List<Object> get props => [];

  @override
  String toString() {
    return 'LoginPasswordChanged{password: $password}';
  }
}

class LoginSubmitPhoneNumberPasswordEvent extends LoginEvent {
  final String phoneNumber;
  final String password;

  const LoginSubmitPhoneNumberPasswordEvent(
      {required this.phoneNumber, required this.password});

  @override
  List<Object> get props => [phoneNumber, password];
}
