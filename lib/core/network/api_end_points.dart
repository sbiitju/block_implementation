class ApiEndPoints {
  static const String prod = 'https://auth-module.sense-23.com/api/v1';
  static const String dev = 'https://auth-module.sense-23.com/api/v1';

  static const base = dev;

  /// Authentication
  static const String signIn = '/auth/login';
  static const String signUp = '/auth/signUp';
  static const String verifyOtp = '/auth/verifyOtp';
  static const String resendOtp = '/auth/resend-otp';
  static const String forgotPassword = '/auth/forget-password';
  static const String setNewPassword = '/auth/set-new-password';
  static const String changePassword = '/users/change-password';
  static const String identityVerification = '/users/identity_verification';
  static const String updateProfile = '/users/profile/update';
  static const String user = '/users/';
}
