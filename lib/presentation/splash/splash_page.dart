import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/presentation/login/core/auth/auth_bloc.dart';
import 'package:instagram_clone/shared/core/blocs/app/app_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.authStatus == AuthStatus.auth) {
          context.read<AppBloc>().onAuthSuccess(state.userApp!);
          state.userApp;
        } else if (state.authStatus == AuthStatus.unauth) {
          context.read<AppBloc>().onUnauthenticated();
        } else if (state.authStatus == AuthStatus.loading) {
          state.userApp;
        } else if (state.authStatus == AuthStatus.unknown) {
          state.userApp;
        }
      },
      child: CircularProgressIndicator(),
    );
  }
}
