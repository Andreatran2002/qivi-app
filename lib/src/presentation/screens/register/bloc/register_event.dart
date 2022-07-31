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

class RegisterFullNameChanged extends RegisterEvent {
  final String fullName;

  const RegisterFullNameChanged({required this.fullName});

  @override
  List<Object> get props => [fullName];

  @override
  String toString() {
    return 'RegisterFullNameChanged{fullName: $fullName}';
  }
}

class RegisterAddressChanged extends RegisterEvent {
  final String address;

  const RegisterAddressChanged({required this.address});

  @override
  List<Object> get props => [address];

  @override
  String toString() {
    return 'RegisterAddressChanged{address: $address}';
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
  final String address;
  final String fullName;
  const RegisterSubmitButtonEvent({
    required this.phoneNumber,
    required this.password,
    required this.address,
    required this.fullName,
  });

  @override
  List<Object> get props => [fullName, address, phoneNumber, password];
}
