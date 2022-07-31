// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bill _$BillFromJson(Map<String, dynamic> json) => Bill(
      id: json['id'] as String,
      customerId: json['customerId'] as String,
      note: json['note'] as String,
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => ProductPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toDouble(),
    )..createdAt = DateTime.parse(json['createdAt'] as String);

Map<String, dynamic> _$BillToJson(Bill instance) => <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'note': instance.note,
      'orderItems': instance.orderItems,
      'createdAt': instance.createdAt.toIso8601String(),
      'total': instance.total,
    };
