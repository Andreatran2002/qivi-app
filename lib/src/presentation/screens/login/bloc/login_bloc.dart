import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_bill/src/model/repo/user_repository.dart';
import 'package:qivi_bill/src/presentation/screens/login/bloc/bloc.dart';
import 'package:qivi_bill/src/utils/validators.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;

  LoginBloc({required this.userRepository}) : super(LoginState.empty()) {
    on<LoginPasswordChanged>(_mapLoginPasswordChangedToState);
    on<LoginPhoneNumberChanged>(_mapLoginPhoneNumberChangedToState);
    on<LoginSubmitPhoneNumberPasswordEvent>(
        _mapLoginSubmitPhoneNumberPasswordToState);
  }

  void _mapLoginPasswordChangedToState(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(state.update(
        isPasswordValid: Validators.isValidPassword(event.password)));
  }

  void _mapLoginPhoneNumberChangedToState(
    LoginPhoneNumberChanged event,
    Emitter<LoginState> emit,
  ) {
    emit(state.update(
        isPhoneNumberValid: Validators.isValidPhoneNumber(event.phoneNumber)));
  }

  Future<void> _mapLoginSubmitPhoneNumberPasswordToState(
    LoginSubmitPhoneNumberPasswordEvent event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(LoginState.loading());

      await userRepository.signIn(event.phoneNumber, event.password);
      bool isSignedIn = await userRepository.isSignedIn();

      if (isSignedIn) {
        emit(LoginState.success());
      } else {
        emit(LoginState.failure());
      }
    } catch (e) {
      emit(LoginState.failure());
    }
  }
}
