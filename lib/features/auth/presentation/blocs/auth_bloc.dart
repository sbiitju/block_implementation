import 'dart:async';

import 'package:block_implementation/features/auth/domain/usecases/auth_usecase.dart';
import 'package:block_implementation/features/auth/presentation/blocs/auth_event.dart';
import 'package:block_implementation/features/auth/presentation/blocs/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase authUseCase;

  AuthBloc({required this.authUseCase}) : super(const AuthState()) {
    on<EmailChangeEvent>(_onEmailChangeEvent);
    on<PasswordChangeEvent>(_onPasswordChangeEvent);
    on<SignInSubmitEvent>(_onSignInSubmitEvent);
    on<SignUpSubmitEvent>(_onSigUpSubmitButton);
  }

  FutureOr<void> _onEmailChangeEvent(
      EmailChangeEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      email: event.email,
      status: AuthStatus.initial,
    ));
  }

  FutureOr<void> _onPasswordChangeEvent(
      PasswordChangeEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      email: event.password,
      status: AuthStatus.initial,
    ));
  }

  FutureOr<void> _onSignInSubmitEvent(
      SignInSubmitEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(status: AuthStatus.failure));
  }

  FutureOr<void> _onSigUpSubmitButton(
      SignUpSubmitEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(status: AuthStatus.success, email: state.email));
  }
}

class D{
  final String x;
  final String y;

  D(this.x, this.y);
}

class A {
  final String x;
  final D d;

  A(this.x,this.d);
}

