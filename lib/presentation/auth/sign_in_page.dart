import 'package:dartz/dartz.dart';
import 'package:dictionary/domain/auth/logged_through.dart';
import 'package:dictionary/infrastructure/config/app_colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:io' show Platform;

import '../../application/auth/auth_bloc.dart';
import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../injection.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _SignInPageBody(
      authFacade: getIt<IAuthFacade>(),
    );
  }
}

class _SignInPageBody extends StatelessWidget {
  final IAuthFacade authFacade;

  _SignInPageBody({required this.authFacade, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterLogin(
        title: 'App name',
        onLogin: (signupData) async {
          var authFailureOrSuccess = await authFacade.signInWithEmailAndPassword(
            emailAddress: signupData.name,
            password: signupData.password,
          );
          return _handleAuthResponse(context, authFailureOrSuccess, LoggedThrough.mail);
        },
        onSignup: (signupData) async {
          var authFailureOrSuccess = await authFacade.registerWithEmailAndPassword(
            emailAddress: signupData.name!,
            password: signupData.password!,
          );
          return _handleAuthResponse(context, authFailureOrSuccess, LoggedThrough.mail);
        },
        passwordValidator: (value) {
          if ((value?.length ?? 0) < 6) {
            return "weakPassword".tr();
          }
        },
        onSubmitAnimationCompleted: () {},
        onRecoverPassword: (_) {},
        theme: LoginTheme(primaryColor: AppColors.appYellow, accentColor: AppColors.mainBg),
        loginProviders: <LoginProvider>[
          LoginProvider(
            icon: FontAwesomeIcons.google,
            callback: () async {
              var authFailureOrSuccess = await authFacade.signInWithGoogle();
              return _handleAuthResponse(context, authFailureOrSuccess, LoggedThrough.google);
            },
          ),
          if (Platform.isIOS || Platform.isMacOS)
            LoginProvider(
              icon: FontAwesomeIcons.apple,
              callback: () async {
                var authFailureOrSuccess = await authFacade.signInWithApple();
                return _handleAuthResponse(context, authFailureOrSuccess, LoggedThrough.apple);
              },
            ),
        ],
        messages: LoginMessages(),
      ),
    );
  }

  dynamic _handleAuthResponse(BuildContext context, Either<AuthFailure, Unit> authFailureOrSuccess, LoggedThrough loggedThrough) {
    return authFailureOrSuccess.fold((failure) {
      var message = failure.map(
        cancelledByUser: (_) => "cancelledByUser".tr(),
        invalidEmailAndPassword: (_) => "invalidEmailAndPassword".tr(),
        emailAlreadyInUse: (_) => "emailAlreadyInUse".tr(),
        serverError: (_) => "serverError".tr(),
        weakPassword: (_) => "weakPassword".tr(),
      );
      return message;
    }, (rightValue) {
      context.read<AuthBloc>().add(LoggedIn(loggedThrough));
      return null;
    });
  }
}
