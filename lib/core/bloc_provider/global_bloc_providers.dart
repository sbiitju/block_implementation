import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/auth/presentation/blocs/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../di/injection_container.dart' as di;



class GlobalBlocProviders {
  dynamic providers = [
    BlocProvider(create: (_) => di.sl<AuthBloc>()),
    // BlocProvider(create: (_) => di.sl<SignUpBloc>()),
    // BlocProvider(create: (_) => di.sl<SetNewPasswordBloc>()),
    // BlocProvider(create: (_) => di.sl<ForgotPasswordBloc>()),
    // BlocProvider(create: (_) => di.sl<IdentityVerificationBloc>()),
    // BlocProvider(create: (_) => di.sl<ChangePasswordBloc>()),
    // BlocProvider(create: (_) => di.sl<UpdateProfileBloc>()),
    // BlocProvider(create: (_) => di.sl<HomeBloc>()),
  ];
}
