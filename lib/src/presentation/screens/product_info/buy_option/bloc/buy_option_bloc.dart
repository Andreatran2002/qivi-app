import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';

class BuyOptionBloc extends Bloc<BuyOptionEvent, int> {
  BuyOptionBloc() : super(1) {
    on<BuyOptionIncrementPressed>((event, emit) => emit(state + 1));
    on<BuyOptionDecrementPressed>((event, emit) {
      if (state < 2) {
        emit(state);
      } else {
        emit(state - 1);
      }
    });
  }
}
