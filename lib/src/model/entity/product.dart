import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:qivi_bill/src/model/entity/entity.dart';
part 'product.g.dart';

@JsonSerializable()
class Product extends Equatable {
  String id;
  String name;
  List<ProductPrice> prices;
  Product({required this.id, required this.name, required this.prices});
  @override
  List<Object> get props => [id, name, prices];
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  String toString() {
    return 'Product{ name: $name}';
  }
}
