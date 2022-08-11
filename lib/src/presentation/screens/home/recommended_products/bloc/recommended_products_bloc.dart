import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/presentation/screens/home/bloc/bloc.dart';
import 'package:qivi_app/src/presentation/screens/home/home_categories/bloc/bloc.dart';

import 'bloc.dart';

class RecommendedProductsBloc
    extends Bloc<RecommendedProductsEvent, RecommendedProductsState> {
  RecommendedProductsBloc() : super(RecommendedProductsNotLoaded()) {
    on<DisplayRecommendedProducts>(_mapDisplayRecommendedProductsToState);
  }

  void _mapDisplayRecommendedProductsToState(DisplayRecommendedProducts event,
      Emitter<RecommendedProductsState> emit) async {
    emit(RecommendedProductsLoaded(event.products));
  }
}
