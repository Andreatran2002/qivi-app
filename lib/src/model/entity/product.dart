import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:qivi_app/src/model/entity/entity.dart';

part 'product.g.dart';

@JsonSerializable(includeIfNull: false)
class Product extends Equatable {
  String id;
  String name;
  String? description;
  String? image;
  Categoryy? category;
  @JsonKey(defaultValue: [])
  List<ProductPrice>? prices;
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.prices,
    required this.image,
  });

  @override
  List<Object> get props => [id, name];
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  String toString() {
    return 'Product{ name: $name}';
  }
}
