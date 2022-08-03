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
    on<RegisterFullNameChanged>(_mapRegisterFullNameChangedToState);
    on<RegisterAddressChanged>(_mapRegisterAddressChangedToState);
    on<RegisterSubmitButtonEvent>(_mapRegisterSubmitRegisterToState);
  }

  void _mapRegisterPasswordChangedToState(
    RegisterPasswordChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.update(
        isPasswordValid: Validators.isValidPassword(event.password)));
  }

  void _mapRegisterFullNameChangedToState(
    RegisterFullNameChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.update(isFullNameValid: Validators.isValidName(event.fullName)));
  }

  void _mapRegisterAddressChangedToState(
    RegisterAddressChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(
        state.update(isAddressValid: Validators.isValidAddress(event.address)));
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
          fullName: event.fullName,
          phoneNumber: event.phoneNumber,
          password: event.password,
          address: event.address);
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
