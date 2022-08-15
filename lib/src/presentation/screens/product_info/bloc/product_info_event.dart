import 'package:equatable/equatable.dart';

abstract class ProductInfoEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadProductInfo extends ProductInfoEvent {
  final String id;
  LoadProductInfo(this.id);
}

class ClickBtnBuy extends ProductInfoEvent {
  final String productId;

  ClickBtnBuy(this.productId);

  @override
  List<Object> get props => [productId];
}
