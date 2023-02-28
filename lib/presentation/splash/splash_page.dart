import 'package:dictionary/infrastructure/config/go_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../application/auth/auth_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          mainNavigation: (MainNavigation value) {
            context.pushNamed(mainPage);
          },
          onBoardingNavigation: (OnBoardingNavigation value) {
            context.pushNamed(onBoardingPage);
          },
          signInNavigation: (SignInNavigation value) {
            context.pushNamed(signInPage);
          },
        );
      },
      child: const Scaffold(
          body: Center(
              child: CupertinoActivityIndicator(
        radius: 16,
      ))),
    );
  }
}
