part of 'injection_container.dart';

Future<void> _initUseCases() async {
  sl.registerLazySingleton(
    () => AuthUseCase(
      authRepo: sl.call(),
    ),
  );

  // sl.registerLazySingleton(
  //   () => SignUpUseCase(
  //     signUpRepository: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton(
  //   () => ForgotPasswordUseCase(
  //     forgotPasswordRepository: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton(
  //   () => IdentityVerificationUseCase(
  //     identityVerificationRepository: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton(
  //   () => ResendOtpUseCase(
  //     resendOtpRepository: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton(
  //   () => SetNewPasswordUseCase(
  //     setNewPasswordRepository: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton(
  //   () => ChangePasswordUseCase(
  //     changePasswordRepository: sl.call(),
  //       ),
  // );
  //
  // sl.registerLazySingleton(
  //   () => UpdateProfileUseCase(
  //     updateProfileRepository: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton(
  //   () => HomeUseCase(
  //     profileRepository: sl.call(),
  //   ),
  // );
}
