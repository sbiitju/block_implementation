part of 'injection_container.dart';

Future<void> _initBlocs() async {
  sl.registerFactory(
    () => AuthBloc(authUseCase: sl.call()),
  );
  //
  // sl.registerFactory(
  //   () => SignUpBloc(signUpUseCase: sl.call()),
  // );
  //
  // sl.registerFactory(
  //   () => SetNewPasswordBloc(setNewPasswordUseCase: sl.call()),
  // );
  //
  // sl.registerFactory(
  //   () => ForgotPasswordBloc(forgotPasswordUseCase: sl.call()),
  // );
  //
  // sl.registerFactory(
  //   () => IdentityVerificationBloc(
  //       identityVerificationUseCase: sl.call(), resendOtpUseCase: sl.call()),
  // );
  //
  // sl.registerFactory(
  //   () => ChangePasswordBloc(changePasswordUseCase: sl.call()),
  // );
  //
  // sl.registerFactory(
  //   () => UpdateProfileBloc(updateProfileUseCase: sl.call()),
  // );
  //
  // sl.registerFactory(
  //   () => HomeBloc(homeUseCase: sl.call()),
  // );
}
