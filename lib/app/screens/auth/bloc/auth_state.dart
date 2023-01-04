part of 'auth_bloc.dart';

enum AuthStatus {
  initial,
  loading,
  submitting,
  error,
  success,
  authorised,
  unAuthorized
}

class AuthState extends Equatable {
  const AuthState({this.status = AuthStatus.initial, this.message});
  final AuthStatus status;
  final String? message;

  @override
  List<Object?> get props => [status, message];

  AuthState copyWith({
    AuthStatus? status,
    String? message,
  }) {
    return AuthState(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  @override
  String toString() {
    return 'AuthState{status: $status, message: $message}';
  }
}
