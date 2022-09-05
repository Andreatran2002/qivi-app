import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:qivi_app/src/model/entity/entity.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  String id;
  String lastName;
  String phoneNumber;
  String userName;
  String firstName;
  List<UserOrderInfo>? userOrderInfo;

  User(
      {required this.id,
      required this.lastName,
      required this.phoneNumber,
      required this.userName,
      required this.firstName,
      required this.userOrderInfo});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
  @override
  String toString() {
    return 'User :  phoneNumber $phoneNumber , userName $userName';
  }

  @override
  List<Object?> get props => [id, lastName, phoneNumber, userName, firstName];
}
