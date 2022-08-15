import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/model/repo/repo.dart';

import 'bloc.dart';

class ProductInfoBloc extends Bloc<ProductInfoEvent, ProductInfoState> {
  final ProductRepository repo;

  ProductInfoBloc({required this.repo}) : super(ProductInfoLoading()) {
    on<LoadProductInfo>(_mapLoadProductInfoToState);
  }

  void _mapLoadProductInfoToState(
      LoadProductInfo event, Emitter<ProductInfoState> emit) async {
    try {
      emit(ProductInfoLoading());
      final product = await repo.getProductById(event.id);
      emit(ProductInfoLoaded(product));
    } catch (e) {
      emit(ProductInfoNotLoaded(e.toString()));
    }
  }
}
