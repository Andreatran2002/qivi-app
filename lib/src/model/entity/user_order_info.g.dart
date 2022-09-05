// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_order_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserOrderInfo _$UserOrderInfoFromJson(Map<String, dynamic> json) =>
    UserOrderInfo(
      id: json['id'] as String,
      userId: json['userId'] as String,
      phoneNumber: json['phoneNumber'] as String,
      recipient: json['recipient'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$UserOrderInfoToJson(UserOrderInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'recipient': instance.recipient,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
    };
