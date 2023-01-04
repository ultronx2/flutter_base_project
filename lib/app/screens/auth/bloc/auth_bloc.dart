import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_name/app/screens/auth/repo/auth_repo.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<LoginEvent>(_onLogin);
    on<SignUpEvent>(_onSignUp);
    on<ForgotPassEvent>(_onForgotPass);
    on<LogOutEvent>(_onLogOut);
    on<CheckLoginStatus>(_onCheckLoginStatus);
  }

  final AuthRepo _authRepo = AuthRepo();

  FutureOr<void> _onLogin(
    LoginEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.submitting));

    //TODO: Write code here
  }

  FutureOr<void> _onSignUp(
    SignUpEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.submitting));

    //TODO: Write code here
  }

  FutureOr<void> _onForgotPass(
    ForgotPassEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.submitting));
    //TODO: Write code here
  }

  FutureOr<void> _onLogOut(
    LogOutEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(status: AuthStatus.loading));
    //TODO: Write code here
    emit(state.copyWith(status: AuthStatus.success));
  }

  FutureOr<void> _onCheckLoginStatus(
      CheckLoginStatus event, Emitter<AuthState> emit) async {
    //TODO: Write code here
  }
}
