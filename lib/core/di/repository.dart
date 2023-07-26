part of 'injection_container.dart';

Future<void> _initRepositories() async {
  sl.registerLazySingleton<AuthRepo>(
    () => AuthRepoImp(),
  );

  // sl.registerLazySingleton<SignInRepository>(
  //   () => SignInRepositoryImp(
  //     signInRemoteDataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<SignUpRepository>(
  //   () => SignUpRepositoryImp(
  //     signUpDataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<ForgotPasswordRepository>(
  //   () => ForgotPasswordRepositoryImp(
  //     forgotPasswordDataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<IdentityVerificationRepository>(
  //   () => IdentityVerificationRepositoryImp(
  //     identityVerificationDataSource: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton<ResendOtpRepository>(
  //   () => ResendOtpRepositoryImp(
  //     resendOtpDataSource: sl.call(),
  //   ),
  // );
  // sl.registerLazySingleton<SetNewPasswordRepository>(
  //   () => SetNewPasswordRepositoryImp(
  //     setNewPasswordDataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<ChangePasswordRepository>(
  //   () => ChangePasswordRepositoryImp(
  //     changePasswordDataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<UpdateProfileRepository>(
  //   () => UpdateProfileRepositoryImp(
  //     updateProfileDataSource: sl.call(),
  //   ),
  // );
  //
  // sl.registerLazySingleton<ProfileRepository>(
  //   () => ProfileRepositoryImp(
  //     profileDataSource: sl.call(),
  //   ),
  // );
}
