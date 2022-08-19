import 'package:equatable/equatable.dart';
import 'package:qivi_app/src/model/entity/entity.dart';

abstract class ProductInfoEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class OpenScreen extends ProductInfoEvent {
  @override
  List<Object> get props => [];
}

class ClickBtnBuy extends ProductInfoEvent {
  ProductPrice price;

  ClickBtnBuy(this.price);

  @override
  List<Object> get props => [price];
}

class OpenedBuyProductScreen extends ProductInfoEvent {
  @override
  List<Object> get props => [];
}
