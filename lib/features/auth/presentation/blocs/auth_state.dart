import 'package:equatable/equatable.dart';

enum AuthStatus { initial, loading, success, failure }

class AuthState extends Equatable {
  @override
  List<Object?> get props => [
        status,
        errorMessage,
        email,
        password,
        isRememberMe,
      ];
  final AuthStatus status;
  final String email;
  final String password;
  final bool isRememberMe;
  final String errorMessage;
  final String token;

  const AuthState(
      {this.status = AuthStatus.loading,
      this.email = '',
      this.password = '',
      this.isRememberMe = false,
      this.errorMessage = '',
      this.token = ''});

  AuthState copyWith({
    AuthStatus? status,
    String? email,
    String? password,
    bool? isRememberMe,
    String? errorMessage,
    String? token,
  }) {
    return AuthState(
        email: email ?? this.email,
        errorMessage: errorMessage ?? this.errorMessage,
        isRememberMe: isRememberMe ?? this.isRememberMe,
        password: password ?? this.password,
        status: status ?? this.status,
        token: token ?? this.token);
  }
}
