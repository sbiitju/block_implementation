abstract class AuthEvent {
  const AuthEvent();
}

class AuthInitialEvent extends AuthEvent {}

class EmailChangeEvent extends AuthEvent {
  final String email;

  EmailChangeEvent({required this.email});
}

class PasswordChangeEvent extends AuthEvent {
  final String password;

  PasswordChangeEvent({required this.password});
}

class SignUpSubmitEvent extends AuthEvent {
  final String email;
  final String password;

  const SignUpSubmitEvent({
    required this.email,
    required this.password,
  });
}

class SignInEvent extends AuthEvent {}

class SignInSubmitEvent extends AuthEvent {
  final String email;
  final String password;

  const SignInSubmitEvent({
    required this.email,
    required this.password,
  });
}
