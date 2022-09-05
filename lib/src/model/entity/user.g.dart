// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      userName: json['userName'] as String,
      firstName: json['firstName'] as String,
      userOrderInfo: (json['userOrderInfo'] as List<dynamic>?)
          ?.map((e) => UserOrderInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'userName': instance.userName,
      'firstName': instance.firstName,
      'userOrderInfo': instance.userOrderInfo,
    };
