part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class LoginEvent extends AuthEvent {
  const LoginEvent({
    this.email,
    this.password,
  });

  final String? email;
  final String? password;

  @override
  List<Object?> get props => [email, password];
}

class SignUpEvent extends AuthEvent {
  const SignUpEvent({
    this.name,
    this.email,
    this.password,
    this.confirmPassword,
  });

  final String? name;
  final String? email;
  final String? password;
  final String? confirmPassword;

  @override
  List<Object?> get props => [name, email, password, confirmPassword];
}

class ForgotPassEvent extends AuthEvent {
  const ForgotPassEvent(this.email);
  final String email;

  @override
  List<Object?> get props => [email];
}

class LogOutEvent extends AuthEvent {
  const LogOutEvent();

  @override
  List<Object?> get props => [];
}

class CheckLoginStatus extends AuthEvent {
  const CheckLoginStatus();

  @override
  List<Object?> get props => [];
}
