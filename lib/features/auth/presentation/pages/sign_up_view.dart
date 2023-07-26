import 'package:block_implementation/features/auth/presentation/blocs/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/auth_bloc.dart';
import '../blocs/auth_event.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == AuthStatus.success) {
            context.read<AuthBloc>().add(SignInEvent());
          } else if (state.status == AuthStatus.loading) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        builder: (context, state) {
          return Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: _emailController,
                      onChanged: (value) {
                        context
                            .read<AuthBloc>()
                            .add(EmailChangeEvent(email: value));
                      },
                    ),
                    TextField(
                      controller: _passwordController,
                      onChanged: (value) {
                        context
                            .read<AuthBloc>()
                            .add(PasswordChangeEvent(password: value));
                      },
                    ),
                    buildLoginButton(context),
                  ],
                ),
              ));
        },
      )),
    );
  }

  Widget buildLoginButton(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(builder: (context, state) {
      return MaterialButton(
        onPressed: () {
          context.read<AuthBloc>().add(SignUpSubmitEvent(
              email: _emailController.text,
              password: _passwordController.text));
        },
        child: const Text("Button"),
      );
    }, listener: (context, state) {
      if (state.status == AuthStatus.success) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Scaffold(
                      body: Container(
                        child: Center(child: Column(
                          children: [
                            TextField(),
                            Text(state.email),
                            Text(state.password),
                            buildAnotherButton(context),
                          ],
                        )),
                      ),
                    )));
      }
    });
  }

  Widget buildAnotherButton(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(builder: (context, state) {
      return MaterialButton(
        onPressed: () {
          context.read<AuthBloc>().add(const SignInSubmitEvent(email: "",password: ""));
        },
        child: const Text("Button"),
      );
    }, listener: (context, state) {
      if (state.status == AuthStatus.failure) {
        Navigator.pop(context);
      }
    });
  }
}
Widget dodfakjf(){
  String? x =null;
  return Text(x??"");
}