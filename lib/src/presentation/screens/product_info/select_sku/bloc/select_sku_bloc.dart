// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:qivi_app/src/model/entity/entity.dart';

// import 'bloc.dart';

// class BuyOptionBloc extends Bloc<SelectSkuEvent, ProductPrice> {
//   BuyOptionBloc() : super(ProductPrice.empty()) {
//     on<SelectSkuPressed>((event, emit) => emit(state + 1));
//     on<BuyOptionDecrementPressed>((event, emit) {
//       if (state < 2) {
//         emit(state);
//       } else {
//         emit(state - 1);
//       }
//     });
//   }
// }
