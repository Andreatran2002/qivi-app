import 'package:equatable/equatable.dart';
import 'package:qivi_app/src/model/entity/entity.dart';

abstract class ProductInfoState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProductInfoLoading extends ProductInfoState {}

class ProductInfoLoaded extends ProductInfoState {}

class InitialProductInfoState extends ProductInfoState {
  @override
  List<Object> get props => [];
}

class OpenBuyProductScreen extends ProductInfoState {
  bool open = false;

  OpenBuyProductScreen({
    required this.open,
  });

  @override
  List<Object> get props => [];
}
