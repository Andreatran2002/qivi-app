// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) => HomeResponse(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Categoryy.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendedProducts: (json['recommended_products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestPriceProducts: (json['best_price_products'] as List<dynamic>)
          .map((e) => ProductPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..banners = (json['banners'] as List<dynamic>)
        .map((e) => Banner.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$HomeResponseToJson(HomeResponse instance) =>
    <String, dynamic>{
      'banners': instance.banners.map((e) => e.toJson()).toList(),
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'recommended_products':
          instance.recommendedProducts.map((e) => e.toJson()).toList(),
      'best_price_products':
          instance.bestPriceProducts.map((e) => e.toJson()).toList(),
    };
