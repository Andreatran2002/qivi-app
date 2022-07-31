// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductPrice _$ProductPriceFromJson(Map<String, dynamic> json) => ProductPrice(
      id: json['id'] as String,
      price: json['price'] as String,
      productId: json['productId'] as String,
      sKU: json['sKU'] as String,
    );

Map<String, dynamic> _$ProductPriceToJson(ProductPrice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'productId': instance.productId,
      'sKU': instance.sKU,
    };
