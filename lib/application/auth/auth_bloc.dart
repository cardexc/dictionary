import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dictionary/domain/auth/logged_through.dart';
import 'package:dictionary/domain/core/value_objects.dart';
import 'package:dictionary/infrastructure/auth/firebase_user_mapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/logged_through.dart';
import '../../domain/auth/user.dart';
import '../../infrastructure/config/const.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@singleton
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  final Box box;
  Option<User> userOption = none();

  AuthBloc(this._authFacade, this.box) : super(const AuthState.initial()) {

    _authFacade.setCallbackAuthEvents((user) {
      userOption = user == null ? none() : some(user.toDomain());
    });

    on<AuthEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        authCheckRequested: (event) async {
          userOption = _authFacade.getSignedUser();
        },
        signedOut: (event) async {
          await _authFacade.signOut().whenComplete(() {
            emit(AuthState.signInNavigation(UniqueId()));
          });
        },
        firstUseRequested: (event) {
          var firstUse = box.get(HiveConst.firstUseKey, defaultValue: HiveConst.firstUseDefaultValue);

          if (firstUse) {
            emit(AuthState.onBoardingNavigation(UniqueId()));
            box.put(HiveConst.firstUseKey, false);
          } else {
            emit(AuthState.mainNavigation(UniqueId()));
          }
        },
        loggedIn: (LoggedIn value) {
          box.put(HiveConst.loggedThroughKey, value.loggedThrough.name());
          emit(AuthState.mainNavigation(UniqueId()));
        },
      );
    });

    add(const AuthEvent.authCheckRequested());
  }
}
