// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) => HomeResponse(
      banners: (json['banners'] as List<dynamic>)
          .map((e) => Banner.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Categoryy.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..recommendedProducts = (json['recommended_products'] as List<dynamic>)
        .map((e) => Product.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$HomeResponseToJson(HomeResponse instance) =>
    <String, dynamic>{
      'banners': instance.banners,
      'categories': instance.categories,
      'recommended_products': instance.recommendedProducts,
    };
