import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dictionary/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../domain/auth/user.dart' as DomainUser;

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import 'firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade extends IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  @override
  Function(User?)? callbackAuthEvents;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn) {
    _firebaseAuth.authStateChanges().listen((event) {
      callbackAuthEvents?.call(event);
    });
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({required String emailAddress, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: emailAddress, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if (e.code == "weak-password") {
        return left(const AuthFailure.weakPassword());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({required String emailAddress, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: emailAddress, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(const AuthFailure.invalidEmailAndPassword());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Option<DomainUser.User> getSignedUser() => optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<void> signOut() {
    return Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      var googleAccount = await _googleSignIn.signIn();

      if (googleAccount == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      var googleAuthentication = await googleAccount.authentication;
      var credentials = GoogleAuthProvider.credential(idToken: googleAuthentication.idToken, accessToken: googleAuthentication.accessToken);
      _firebaseAuth.signInWithCredential(credentials);

      return right(unit);
    } on PlatformException catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() async {
    try {
      AuthorizationCredentialAppleID? credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      if (credential.identityToken?.isNotEmpty == false) {
        return left(const AuthFailure.serverError());
      }

      final oAuthProvider = OAuthProvider('apple.com');

      final oAuthCredentials = oAuthProvider.credential(
        idToken: credential.identityToken!,
        accessToken: credential.authorizationCode,
      );

      final userCredential = await _firebaseAuth.signInWithCredential(oAuthCredentials);

      return right(unit);

    } on PlatformException catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}
