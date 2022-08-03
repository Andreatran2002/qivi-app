import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/presentation/screens/home/bloc/bloc.dart';
import 'package:qivi_app/src/presentation/screens/home/home_categories/bloc/bloc.dart';

import 'bloc.dart';

class RecommendedProductsBloc
    extends Bloc<RecommendedProductsEvent, RecommendedProductsState> {
  HomeBloc homeBloc;
  late StreamSubscription subscription;

  RecommendedProductsBloc({required this.homeBloc})
      : super(RecommendedProductsNotLoaded()) {
    on<DisplayRecommendedProducts>(_mapDisplayRecommendedProductsToState);

    subscription = homeBloc.stream.listen(
      (state) {
        if (state is HomeLoaded) {
          add(DisplayRecommendedProducts(state.response.recommendedProducts));
        }
      },
    );
  }

  void _mapDisplayRecommendedProductsToState(DisplayRecommendedProducts event,
      Emitter<RecommendedProductsState> emit) async {
    emit(RecommendedProductsLoaded(event.products));
  }

  @override
  Future<void> close() {
    subscription.cancel();
    return super.close();
  }
}
