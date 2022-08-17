import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'entity.dart';

part 'product_page_info.g.dart';

@JsonSerializable()
class ProductPageInfo extends Equatable {
  final List<Product> products;
  final PageInfo pageInfo;

  ProductPageInfo(this.products, this.pageInfo);

  @override
  List<Object?> get props => [products, pageInfo];
  factory ProductPageInfo.fromJson(Map<String, dynamic> json) =>
      _$ProductPageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductPageInfoToJson(this);

  @override
  String toString() =>
      'ProductPageInfo(products: $products, pageInfo: $pageInfo)';
}
