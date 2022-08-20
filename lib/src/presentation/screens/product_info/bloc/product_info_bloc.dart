import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qivi_app/src/model/entity/cart_item.dart';
import 'package:qivi_app/src/model/repo/repo.dart';

import 'bloc.dart';

class ProductInfoBloc extends Bloc<ProductInfoEvent, ProductInfoState> {
  final ProductRepository repo;

  ProductInfoBloc({required this.repo}) : super(ProductInfoLoading()) {
    on<OpenScreen>(_mapOpenScreenToState);
    on<ClickBtnBuy>(_mapClickBtnBuyToState);
    on<OpenedBuyProductScreen>(_mapOpenedBuyProductScreenToState);
  }

  void _mapOpenScreenToState(
      OpenScreen event, Emitter<ProductInfoState> emit) async {
    await Hive.openBox<CartItem>("cart_items");
    emit(InitialProductInfoState());
  }

  void _mapClickBtnBuyToState(
      ClickBtnBuy event, Emitter<ProductInfoState> emit) async {
    await Hive.openBox<CartItem>("cart_items");

    emit(OpenBuyProductScreen(open: true));
  }

  void _mapOpenedBuyProductScreenToState(
      OpenedBuyProductScreen event, Emitter<ProductInfoState> emit) async {
    emit(OpenBuyProductScreen(open: false));
  }
}
