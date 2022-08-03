import 'package:equatable/equatable.dart';
import 'package:qivi_app/src/model/entity/entity.dart';

class RecommendedProductsState extends Equatable {
  const RecommendedProductsState();

  @override
  List<Object> get props => [];
}

class RecommendedProductsLoaded extends RecommendedProductsState {
  final List<Product> products;

  RecommendedProductsLoaded(this.products);

  @override
  List<Object> get props => products;
}

class RecommendedProductsNotLoaded extends RecommendedProductsState {}
