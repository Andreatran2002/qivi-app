import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/presentation/screens/home/bloc/bloc.dart';
import 'package:qivi_app/src/presentation/screens/home/home_categories/bloc/bloc.dart';

class HomeCategoriesBloc
    extends Bloc<HomeCategoriesEvent, HomeCategoriesState> {
  HomeBloc homeBloc;
  late StreamSubscription subscription;

  HomeCategoriesBloc({required this.homeBloc})
      : super(HomeCategoriesNotLoaded()) {
    on<DisplayHomeCategories>(_mapDisplayHomeCategoriesToState);

    subscription = homeBloc.stream.listen(
      (state) {
        if (state is HomeLoaded) {
          add(DisplayHomeCategories(state.response.categories));
        }
      },
    );
  }

  void _mapDisplayHomeCategoriesToState(
      DisplayHomeCategories event, Emitter<HomeCategoriesState> emit) async {
    emit(HomeCategoriesLoaded(event.categories));
  }

  @override
  Future<void> close() {
    subscription.cancel();
    return super.close();
  }
}
