import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  String phoneNumber;
  String password;
  User({
    required this.phoneNumber,
    required this.password,
  });
  @override
  List<Object?> get props => [phoneNumber, password];
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
  @override
  String toString() {
    return 'User :  phoneNumber $phoneNumber , password $password';
  }
}
