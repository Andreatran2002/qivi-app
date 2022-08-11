import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
part 'product_price.g.dart';

@JsonSerializable()
class ProductPrice extends Equatable {
  String id;
  int price;
  @JsonKey(defaultValue: "")
  String productId;
  String sKU;
  Product? product;
  ProductPrice({
    required this.id,
    required this.price,
    required this.productId,
    required this.sKU,
    required this.product,
  });

  @override
  List<Object> get props => [id, price, productId, sKU];
  factory ProductPrice.fromJson(Map<String, dynamic> json) =>
      _$ProductPriceFromJson(json);

  Map<String, dynamic> toJson() => _$ProductPriceToJson(this);
  @override
  String toString() {
    return 'Product Price: productId $productId';
  }
}
