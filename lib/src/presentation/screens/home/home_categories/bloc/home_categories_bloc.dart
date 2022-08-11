import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/presentation/screens/home/bloc/bloc.dart';
import 'package:qivi_app/src/presentation/screens/home/home_categories/bloc/bloc.dart';

class HomeCategoriesBloc
    extends Bloc<HomeCategoriesEvent, HomeCategoriesState> {
  HomeCategoriesBloc() : super(HomeCategoriesNotLoaded()) {
    on<DisplayHomeCategories>(_mapDisplayHomeCategoriesToState);
  }

  void _mapDisplayHomeCategoriesToState(
      DisplayHomeCategories event, Emitter<HomeCategoriesState> emit) async {
    emit(HomeCategoriesLoaded(event.categories));
  }
}
