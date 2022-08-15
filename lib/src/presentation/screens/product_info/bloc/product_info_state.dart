import 'package:equatable/equatable.dart';
import 'package:qivi_app/src/model/entity/entity.dart';

abstract class ProductInfoState extends Equatable {}

class ProductInfoLoading extends ProductInfoState {
  @override
  List<Object?> get props => [];
}

class ProductInfoLoaded extends ProductInfoState {
  final Product product;

  ProductInfoLoaded(this.product);

  @override
  List<Object> get props {
    return [product];
  }

  @override
  String toString() {
    return 'ProductInfoLoaded{product: $product}';
  }
}

class ProductInfoNotLoaded extends ProductInfoState {
  final String e;

  ProductInfoNotLoaded(this.e);

  @override
  String toString() {
    return 'ProductInfoNotLoaded{e: $e}';
  }

  @override
  List<Object?> get props => [];
}
