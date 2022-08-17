// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_page_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductPageInfo _$ProductPageInfoFromJson(Map<String, dynamic> json) =>
    ProductPageInfo(
      (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductPageInfoToJson(ProductPageInfo instance) =>
    <String, dynamic>{
      'products': instance.products,
      'pageInfo': instance.pageInfo,
    };
