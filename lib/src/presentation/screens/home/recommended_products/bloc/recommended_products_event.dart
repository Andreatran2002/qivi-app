import 'package:equatable/equatable.dart';
import 'package:qivi_app/src/model/entity/entity.dart';

class RecommendedProductsEvent extends Equatable {
  const RecommendedProductsEvent();

  @override
  List<Object> get props => [];
}

class DisplayRecommendedProducts extends RecommendedProductsEvent {
  final List<Product> products;

  DisplayRecommendedProducts(this.products);

  @override
  List<Object> get props => [products];

  @override
  String toString() {
    return 'DisplayRecommendedProducts{products: $products}';
  }
}
