import 'package:block_implementation/core/routes/routes.dart';
import 'package:block_implementation/features/auth/presentation/pages/sign_up_view.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static get controller => null;

  static Route<dynamic>? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => const SignUpView(),
        );

      // case Routes.signIn:
      //   return MaterialPageRoute(
      //     builder: (_) => const SignInPage(),
      //   );
      //
      // case Routes.home:
      //   return MaterialPageRoute(
      //     builder: (_) => HomePage(),
      //   );
      //
      // case Routes.forgotPassword:
      //   return MaterialPageRoute(
      //     builder: (_) => const ForgotPasswordPage(),
      //   );
      //
      // case Routes.welcome:
      //   return MaterialPageRoute(builder: (_) => const SuccessPage());
      //
      // case Routes.webView:
      //   return MaterialPageRoute(
      //     builder: (_) => WebViewPage(
      //       url: routeSettings.arguments as String,
      //     ),
      //   );
      //
      // case Routes.resetPassword:
      //   return MaterialPageRoute(
      //     builder: (_) =>
      //         SetNewPasswordPage(password: routeSettings.arguments as String),
      //   );
      //
      // case Routes.changePassword:
      //   return MaterialPageRoute(
      //     builder: (_) => const ChangePasswordPage(),
      //   );
      //
      // case Routes.updateProfile:
      //   return MaterialPageRoute(
      //     builder: (_) => const UpdateProfilePage(),
      //   );

      default:
        return null;
    }
  }
}
