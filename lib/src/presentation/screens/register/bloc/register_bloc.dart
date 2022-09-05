import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:qivi_app/src/model/repo/user_repository.dart';
import 'package:qivi_app/src/utils/validators.dart';

import 'bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final UserRepository userRepository;

  RegisterBloc({
    required this.userRepository,
  }) : super(RegisterState.empty()) {
    on<RegisterPasswordChanged>(_mapRegisterPasswordChangedToState);
    on<RegisterPhoneNumberChanged>(_mapRegisterPhoneNumberChangedToState);
    on<RegisterLastNameChanged>(_mapRegisterLastNameChangedToState);
    on<RegisterFirstNameChanged>(_mapRegisterFirstNameChangedToState);
    on<RegisterSubmitButtonEvent>(_mapRegisterSubmitRegisterToState);
  }

  void _mapRegisterPasswordChangedToState(
    RegisterPasswordChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.update(
        isPasswordValid: Validators.isValidPassword(event.password)));
  }

  void _mapRegisterLastNameChangedToState(
    RegisterLastNameChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.update(isLastNameValid: Validators.isValidName(event.lastName)));
  }

  void _mapRegisterFirstNameChangedToState(
    RegisterFirstNameChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.update(
        isFirstNameValid: Validators.isValidWord(event.firstName)));
  }

  void _mapRegisterPhoneNumberChangedToState(
    RegisterPhoneNumberChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.update(
        isPhoneNumberValid: Validators.isValidPhoneNumber(event.phoneNumber)));
  }

  Future<void> _mapRegisterSubmitRegisterToState(
    RegisterSubmitButtonEvent event,
    Emitter<RegisterState> emit,
  ) async {
    try {
      emit(RegisterState.loading());

      await userRepository.signUp(
        firstName: event.firstName,
        phoneNumber: event.phoneNumber,
        password: event.password,
        lastName: event.lastName,
      );
      bool isSignedIn = await userRepository.isSignedIn();

      if (isSignedIn) {
        emit(RegisterState.success());
      } else {
        emit(RegisterState.failure());
      }
    } catch (e) {
      emit(RegisterState.failure());
    }
  }
}
