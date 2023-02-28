import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dictionary/domain/auth/user.dart' as DomainUser;
import 'package:firebase_auth/firebase_auth.dart' as FB;
import 'auth_failure.dart';

abstract class IAuthFacade {
  Function(FB.User?)? callbackAuthEvents;

  void setCallbackAuthEvents(Function(FB.User?) callback) {
    callbackAuthEvents = callback;
  }

  Option<DomainUser.User> getSignedUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({required String emailAddress, required String password});

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({required String emailAddress, required String password});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Either<AuthFailure, Unit>> signInWithApple();

  Future<void> signOut();
}
