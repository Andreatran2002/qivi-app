import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/model/repo/user_repository.dart';
import 'package:qivi_app/src/presentation/screens/login/bloc/bloc.dart';
import 'package:qivi_app/src/utils/validators.dart';

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

      String result =
          await userRepository.signIn(event.phoneNumber, event.password);
      if (result == 'success') {
        emit(LoginState.success());
      } else {
        switch (result) {
          case 'account-not-available':
            emit(LoginState.failure(
                "Tài khoản không tồn tại. Vui lòng thử lại."));

            break;
          case 'wrong-password':
            emit(LoginState.failure("Sai mật khẩu. Vui lòng thử lại."));

            break;
          case 'undefined-error':
            emit(LoginState.failure("Lỗi không xác định. Vui lòng thử lại."));

            break;
          default:
            emit(LoginState.failure("Lỗi không xác định. Vui lòng thử lại."));
            break;
        }
      }
    } catch (e) {
      emit(LoginState.failure("Lỗi không xác định. Vui lòng thử lại."));
    }
  }
}
