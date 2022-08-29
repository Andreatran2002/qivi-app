import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Equatable {
  String id;
  String fullName;
  String phoneNumber;
  String userName;
  String address;
  User({
    required this.id,
    required this.fullName,
    required this.phoneNumber,
    required this.userName,
    required this.address,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
  @override
  String toString() {
    return 'User :  phoneNumber $phoneNumber , userName $userName';
  }

  @override
  List<Object?> get props => [id, fullName, phoneNumber, userName, address];
}
