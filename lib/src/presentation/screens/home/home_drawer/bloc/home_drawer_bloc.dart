import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/presentation/screens/home/bloc/bloc.dart';

import 'bloc.dart';

class HomeDrawerBloc extends Bloc<HomeDrawerEvent, HomeDrawerState> {
  HomeDrawerBloc() : super(HomeDrawerNotLoaded()) {
    on<DisplayHomeDrawer>(_mapDisplayHomeDrawerToState);
  }

  void _mapDisplayHomeDrawerToState(
      DisplayHomeDrawer event, Emitter<HomeDrawerState> emit) async {
    emit(HomeDrawerLoaded(event.user));
  }
}
