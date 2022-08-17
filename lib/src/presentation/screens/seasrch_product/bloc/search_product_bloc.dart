// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:qivi_app/src/model/repo/user_repository.dart';
// import 'package:qivi_app/src/utils/validators.dart';

// import 'bloc.dart';

// class SearchProductBloc extends Bloc<SearchProductEvent, SearchProductState> {
//   final UserRepository userRepository;

//   SearchProductBloc({required this.userRepository})
//       : super(SearchProductState.empty()) {
//     on<SearchProductKeyWordChanged>(_mapSearchProductPasswordChangedToState);
//   }

//   void _mapSearchProductPasswordChangedToState(
//     SearchProductKeyChanged event,
//     // Emitter<SearchProductState> emit,
//   ) {
//     emit(state.update(
//         isPasswordValid: Validators.isValidPassword(event.password)));
//   }

//   Future<void> _mapSearchProductSubmitPhoneNumberPasswordToState(
//     SearchProductKeyWordChanged event,
//     Emitter<SearchProductState> emit,
//   ) async {
//     try {
//       emit(SearchProductState.loading());

//       if (isSignedIn) {
//         emit(SearchProductState.success());
//       } else {
//         emit(SearchProductState.failure());
//       }
//     } catch (e) {
//       emit(SearchProductState.failure());
//     }
//   }
// }
