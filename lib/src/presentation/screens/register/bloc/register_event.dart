import 'package:equatable/equatable.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterPhoneNumberChanged extends RegisterEvent {
  final String phoneNumber;

  const RegisterPhoneNumberChanged({required this.phoneNumber});

  @override
  List<Object> get props => [phoneNumber];

  @override
  String toString() {
    return 'RegisterPhoneNumberChanged{phoneNumber: $phoneNumber}';
  }
}

class RegisterLastNameChanged extends RegisterEvent {
  final String lastName;

  const RegisterLastNameChanged({required this.lastName});

  @override
  List<Object> get props => [lastName];

  @override
  String toString() {
    return 'RegisterLastNameChanged{LastName: $lastName}';
  }
}

class RegisterFirstNameChanged extends RegisterEvent {
  final String firstName;

  const RegisterFirstNameChanged({required this.firstName});

  @override
  List<Object> get props => [firstName];

  @override
  String toString() {
    return 'RegisterFirstNameChanged{FirstName: $firstName}';
  }
}

class RegisterPasswordChanged extends RegisterEvent {
  final String password;

  const RegisterPasswordChanged({required this.password});

  @override
  List<Object> get props => [];

  @override
  String toString() {
    return 'RegisterPasswordChanged{password: $password}';
  }
}

class RegisterSubmitButtonEvent extends RegisterEvent {
  final String phoneNumber;
  final String password;
  final String firstName;
  final String lastName;
  const RegisterSubmitButtonEvent({
    required this.phoneNumber,
    required this.password,
    required this.firstName,
    required this.lastName,
  });

  @override
  List<Object> get props => [lastName, firstName, phoneNumber, password];
}
