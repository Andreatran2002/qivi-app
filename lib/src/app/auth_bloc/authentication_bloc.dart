import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qivi_app/src/app/auth_bloc/bloc.dart';
import 'package:qivi_app/src/model/repo/user_repository.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository _userRepository;

  AuthenticationBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(Uninitialized()) {
    on<AppStarted>(_mapAppStartedToState);
    on<LoggedIn>(_mapUserLoggedInToState);
    on<LoggedOut>(_mapUserLoggedOutToState);
  }

  void _mapAppStartedToState(
    AppStarted event,
    Emitter<AuthenticationState> emit,
  ) async {
    try {
      final currentUser = await _userRepository.getUser();

      if (currentUser != "") {
        emit(Authenticated(currentUser));
      } else {
        emit(Unauthenticated());
      }
    } catch (e) {
      emit(Unauthenticated());
    }
  }

  void _mapUserLoggedInToState(
    LoggedIn event,
    Emitter<AuthenticationState> emit,
  ) {
    emit(const Authenticated("Phuong Vy "));
  }

  void _mapUserLoggedOutToState(
    LoggedOut event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _userRepository.signOut();
    emit(Unauthenticated());
  }
}
