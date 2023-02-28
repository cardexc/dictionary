// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstUseRequested,
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(LoggedThrough loggedThrough) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstUseRequested,
    TResult? Function()? authCheckRequested,
    TResult? Function()? signedOut,
    TResult? Function(LoggedThrough loggedThrough)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstUseRequested,
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(LoggedThrough loggedThrough)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstUseRequested value) firstUseRequested,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(LoggedIn value) loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstUseRequested value)? firstUseRequested,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(LoggedIn value)? loggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstUseRequested value)? firstUseRequested,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FirstUseRequestedCopyWith<$Res> {
  factory _$$FirstUseRequestedCopyWith(
          _$FirstUseRequested value, $Res Function(_$FirstUseRequested) then) =
      __$$FirstUseRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FirstUseRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$FirstUseRequested>
    implements _$$FirstUseRequestedCopyWith<$Res> {
  __$$FirstUseRequestedCopyWithImpl(
      _$FirstUseRequested _value, $Res Function(_$FirstUseRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FirstUseRequested implements FirstUseRequested {
  const _$FirstUseRequested();

  @override
  String toString() {
    return 'AuthEvent.firstUseRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FirstUseRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstUseRequested,
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(LoggedThrough loggedThrough) loggedIn,
  }) {
    return firstUseRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstUseRequested,
    TResult? Function()? authCheckRequested,
    TResult? Function()? signedOut,
    TResult? Function(LoggedThrough loggedThrough)? loggedIn,
  }) {
    return firstUseRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstUseRequested,
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(LoggedThrough loggedThrough)? loggedIn,
    required TResult orElse(),
  }) {
    if (firstUseRequested != null) {
      return firstUseRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstUseRequested value) firstUseRequested,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(LoggedIn value) loggedIn,
  }) {
    return firstUseRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstUseRequested value)? firstUseRequested,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(LoggedIn value)? loggedIn,
  }) {
    return firstUseRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstUseRequested value)? firstUseRequested,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (firstUseRequested != null) {
      return firstUseRequested(this);
    }
    return orElse();
  }
}

abstract class FirstUseRequested implements AuthEvent {
  const factory FirstUseRequested() = _$FirstUseRequested;
}

/// @nodoc
abstract class _$$AuthCheckRequestedCopyWith<$Res> {
  factory _$$AuthCheckRequestedCopyWith(_$AuthCheckRequested value,
          $Res Function(_$AuthCheckRequested) then) =
      __$$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthCheckRequested>
    implements _$$AuthCheckRequestedCopyWith<$Res> {
  __$$AuthCheckRequestedCopyWithImpl(
      _$AuthCheckRequested _value, $Res Function(_$AuthCheckRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCheckRequested implements AuthCheckRequested {
  const _$AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstUseRequested,
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(LoggedThrough loggedThrough) loggedIn,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstUseRequested,
    TResult? Function()? authCheckRequested,
    TResult? Function()? signedOut,
    TResult? Function(LoggedThrough loggedThrough)? loggedIn,
  }) {
    return authCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstUseRequested,
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(LoggedThrough loggedThrough)? loggedIn,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstUseRequested value) firstUseRequested,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(LoggedIn value) loggedIn,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstUseRequested value)? firstUseRequested,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(LoggedIn value)? loggedIn,
  }) {
    return authCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstUseRequested value)? firstUseRequested,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequested implements AuthEvent {
  const factory AuthCheckRequested() = _$AuthCheckRequested;
}

/// @nodoc
abstract class _$$SignedOutCopyWith<$Res> {
  factory _$$SignedOutCopyWith(
          _$SignedOut value, $Res Function(_$SignedOut) then) =
      __$$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignedOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignedOut>
    implements _$$SignedOutCopyWith<$Res> {
  __$$SignedOutCopyWithImpl(
      _$SignedOut _value, $Res Function(_$SignedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'AuthEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstUseRequested,
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(LoggedThrough loggedThrough) loggedIn,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstUseRequested,
    TResult? Function()? authCheckRequested,
    TResult? Function()? signedOut,
    TResult? Function(LoggedThrough loggedThrough)? loggedIn,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstUseRequested,
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(LoggedThrough loggedThrough)? loggedIn,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstUseRequested value) firstUseRequested,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(LoggedIn value) loggedIn,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstUseRequested value)? firstUseRequested,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(LoggedIn value)? loggedIn,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstUseRequested value)? firstUseRequested,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthEvent {
  const factory SignedOut() = _$SignedOut;
}

/// @nodoc
abstract class _$$LoggedInCopyWith<$Res> {
  factory _$$LoggedInCopyWith(
          _$LoggedIn value, $Res Function(_$LoggedIn) then) =
      __$$LoggedInCopyWithImpl<$Res>;
  @useResult
  $Res call({LoggedThrough loggedThrough});
}

/// @nodoc
class __$$LoggedInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoggedIn>
    implements _$$LoggedInCopyWith<$Res> {
  __$$LoggedInCopyWithImpl(_$LoggedIn _value, $Res Function(_$LoggedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedThrough = null,
  }) {
    return _then(_$LoggedIn(
      null == loggedThrough
          ? _value.loggedThrough
          : loggedThrough // ignore: cast_nullable_to_non_nullable
              as LoggedThrough,
    ));
  }
}

/// @nodoc

class _$LoggedIn implements LoggedIn {
  const _$LoggedIn(this.loggedThrough);

  @override
  final LoggedThrough loggedThrough;

  @override
  String toString() {
    return 'AuthEvent.loggedIn(loggedThrough: $loggedThrough)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedIn &&
            (identical(other.loggedThrough, loggedThrough) ||
                other.loggedThrough == loggedThrough));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loggedThrough);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInCopyWith<_$LoggedIn> get copyWith =>
      __$$LoggedInCopyWithImpl<_$LoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstUseRequested,
    required TResult Function() authCheckRequested,
    required TResult Function() signedOut,
    required TResult Function(LoggedThrough loggedThrough) loggedIn,
  }) {
    return loggedIn(loggedThrough);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstUseRequested,
    TResult? Function()? authCheckRequested,
    TResult? Function()? signedOut,
    TResult? Function(LoggedThrough loggedThrough)? loggedIn,
  }) {
    return loggedIn?.call(loggedThrough);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstUseRequested,
    TResult Function()? authCheckRequested,
    TResult Function()? signedOut,
    TResult Function(LoggedThrough loggedThrough)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(loggedThrough);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FirstUseRequested value) firstUseRequested,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(LoggedIn value) loggedIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FirstUseRequested value)? firstUseRequested,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
    TResult? Function(SignedOut value)? signedOut,
    TResult? Function(LoggedIn value)? loggedIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FirstUseRequested value)? firstUseRequested,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(LoggedIn value)? loggedIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class LoggedIn implements AuthEvent {
  const factory LoggedIn(final LoggedThrough loggedThrough) = _$LoggedIn;

  LoggedThrough get loggedThrough;
  @JsonKey(ignore: true)
  _$$LoggedInCopyWith<_$LoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UniqueId id) mainNavigation,
    required TResult Function(UniqueId id) onBoardingNavigation,
    required TResult Function(UniqueId id) signInNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UniqueId id)? mainNavigation,
    TResult? Function(UniqueId id)? onBoardingNavigation,
    TResult? Function(UniqueId id)? signInNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UniqueId id)? mainNavigation,
    TResult Function(UniqueId id)? onBoardingNavigation,
    TResult Function(UniqueId id)? signInNavigation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(MainNavigation value) mainNavigation,
    required TResult Function(OnBoardingNavigation value) onBoardingNavigation,
    required TResult Function(SignInNavigation value) signInNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(MainNavigation value)? mainNavigation,
    TResult? Function(OnBoardingNavigation value)? onBoardingNavigation,
    TResult? Function(SignInNavigation value)? signInNavigation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(MainNavigation value)? mainNavigation,
    TResult Function(OnBoardingNavigation value)? onBoardingNavigation,
    TResult Function(SignInNavigation value)? signInNavigation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UniqueId id) mainNavigation,
    required TResult Function(UniqueId id) onBoardingNavigation,
    required TResult Function(UniqueId id) signInNavigation,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UniqueId id)? mainNavigation,
    TResult? Function(UniqueId id)? onBoardingNavigation,
    TResult? Function(UniqueId id)? signInNavigation,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UniqueId id)? mainNavigation,
    TResult Function(UniqueId id)? onBoardingNavigation,
    TResult Function(UniqueId id)? signInNavigation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(MainNavigation value) mainNavigation,
    required TResult Function(OnBoardingNavigation value) onBoardingNavigation,
    required TResult Function(SignInNavigation value) signInNavigation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(MainNavigation value)? mainNavigation,
    TResult? Function(OnBoardingNavigation value)? onBoardingNavigation,
    TResult? Function(SignInNavigation value)? signInNavigation,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(MainNavigation value)? mainNavigation,
    TResult Function(OnBoardingNavigation value)? onBoardingNavigation,
    TResult Function(SignInNavigation value)? signInNavigation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$MainNavigationCopyWith<$Res> {
  factory _$$MainNavigationCopyWith(
          _$MainNavigation value, $Res Function(_$MainNavigation) then) =
      __$$MainNavigationCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class __$$MainNavigationCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$MainNavigation>
    implements _$$MainNavigationCopyWith<$Res> {
  __$$MainNavigationCopyWithImpl(
      _$MainNavigation _value, $Res Function(_$MainNavigation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$MainNavigation(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$MainNavigation implements MainNavigation {
  const _$MainNavigation(this.id);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'AuthState.mainNavigation(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainNavigation &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainNavigationCopyWith<_$MainNavigation> get copyWith =>
      __$$MainNavigationCopyWithImpl<_$MainNavigation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UniqueId id) mainNavigation,
    required TResult Function(UniqueId id) onBoardingNavigation,
    required TResult Function(UniqueId id) signInNavigation,
  }) {
    return mainNavigation(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UniqueId id)? mainNavigation,
    TResult? Function(UniqueId id)? onBoardingNavigation,
    TResult? Function(UniqueId id)? signInNavigation,
  }) {
    return mainNavigation?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UniqueId id)? mainNavigation,
    TResult Function(UniqueId id)? onBoardingNavigation,
    TResult Function(UniqueId id)? signInNavigation,
    required TResult orElse(),
  }) {
    if (mainNavigation != null) {
      return mainNavigation(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(MainNavigation value) mainNavigation,
    required TResult Function(OnBoardingNavigation value) onBoardingNavigation,
    required TResult Function(SignInNavigation value) signInNavigation,
  }) {
    return mainNavigation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(MainNavigation value)? mainNavigation,
    TResult? Function(OnBoardingNavigation value)? onBoardingNavigation,
    TResult? Function(SignInNavigation value)? signInNavigation,
  }) {
    return mainNavigation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(MainNavigation value)? mainNavigation,
    TResult Function(OnBoardingNavigation value)? onBoardingNavigation,
    TResult Function(SignInNavigation value)? signInNavigation,
    required TResult orElse(),
  }) {
    if (mainNavigation != null) {
      return mainNavigation(this);
    }
    return orElse();
  }
}

abstract class MainNavigation implements AuthState {
  const factory MainNavigation(final UniqueId id) = _$MainNavigation;

  UniqueId get id;
  @JsonKey(ignore: true)
  _$$MainNavigationCopyWith<_$MainNavigation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnBoardingNavigationCopyWith<$Res> {
  factory _$$OnBoardingNavigationCopyWith(_$OnBoardingNavigation value,
          $Res Function(_$OnBoardingNavigation) then) =
      __$$OnBoardingNavigationCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class __$$OnBoardingNavigationCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$OnBoardingNavigation>
    implements _$$OnBoardingNavigationCopyWith<$Res> {
  __$$OnBoardingNavigationCopyWithImpl(_$OnBoardingNavigation _value,
      $Res Function(_$OnBoardingNavigation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$OnBoardingNavigation(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$OnBoardingNavigation implements OnBoardingNavigation {
  const _$OnBoardingNavigation(this.id);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'AuthState.onBoardingNavigation(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardingNavigation &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardingNavigationCopyWith<_$OnBoardingNavigation> get copyWith =>
      __$$OnBoardingNavigationCopyWithImpl<_$OnBoardingNavigation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UniqueId id) mainNavigation,
    required TResult Function(UniqueId id) onBoardingNavigation,
    required TResult Function(UniqueId id) signInNavigation,
  }) {
    return onBoardingNavigation(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UniqueId id)? mainNavigation,
    TResult? Function(UniqueId id)? onBoardingNavigation,
    TResult? Function(UniqueId id)? signInNavigation,
  }) {
    return onBoardingNavigation?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UniqueId id)? mainNavigation,
    TResult Function(UniqueId id)? onBoardingNavigation,
    TResult Function(UniqueId id)? signInNavigation,
    required TResult orElse(),
  }) {
    if (onBoardingNavigation != null) {
      return onBoardingNavigation(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(MainNavigation value) mainNavigation,
    required TResult Function(OnBoardingNavigation value) onBoardingNavigation,
    required TResult Function(SignInNavigation value) signInNavigation,
  }) {
    return onBoardingNavigation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(MainNavigation value)? mainNavigation,
    TResult? Function(OnBoardingNavigation value)? onBoardingNavigation,
    TResult? Function(SignInNavigation value)? signInNavigation,
  }) {
    return onBoardingNavigation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(MainNavigation value)? mainNavigation,
    TResult Function(OnBoardingNavigation value)? onBoardingNavigation,
    TResult Function(SignInNavigation value)? signInNavigation,
    required TResult orElse(),
  }) {
    if (onBoardingNavigation != null) {
      return onBoardingNavigation(this);
    }
    return orElse();
  }
}

abstract class OnBoardingNavigation implements AuthState {
  const factory OnBoardingNavigation(final UniqueId id) =
      _$OnBoardingNavigation;

  UniqueId get id;
  @JsonKey(ignore: true)
  _$$OnBoardingNavigationCopyWith<_$OnBoardingNavigation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInNavigationCopyWith<$Res> {
  factory _$$SignInNavigationCopyWith(
          _$SignInNavigation value, $Res Function(_$SignInNavigation) then) =
      __$$SignInNavigationCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class __$$SignInNavigationCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SignInNavigation>
    implements _$$SignInNavigationCopyWith<$Res> {
  __$$SignInNavigationCopyWithImpl(
      _$SignInNavigation _value, $Res Function(_$SignInNavigation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SignInNavigation(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$SignInNavigation implements SignInNavigation {
  const _$SignInNavigation(this.id);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'AuthState.signInNavigation(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInNavigation &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInNavigationCopyWith<_$SignInNavigation> get copyWith =>
      __$$SignInNavigationCopyWithImpl<_$SignInNavigation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(UniqueId id) mainNavigation,
    required TResult Function(UniqueId id) onBoardingNavigation,
    required TResult Function(UniqueId id) signInNavigation,
  }) {
    return signInNavigation(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(UniqueId id)? mainNavigation,
    TResult? Function(UniqueId id)? onBoardingNavigation,
    TResult? Function(UniqueId id)? signInNavigation,
  }) {
    return signInNavigation?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UniqueId id)? mainNavigation,
    TResult Function(UniqueId id)? onBoardingNavigation,
    TResult Function(UniqueId id)? signInNavigation,
    required TResult orElse(),
  }) {
    if (signInNavigation != null) {
      return signInNavigation(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(MainNavigation value) mainNavigation,
    required TResult Function(OnBoardingNavigation value) onBoardingNavigation,
    required TResult Function(SignInNavigation value) signInNavigation,
  }) {
    return signInNavigation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(MainNavigation value)? mainNavigation,
    TResult? Function(OnBoardingNavigation value)? onBoardingNavigation,
    TResult? Function(SignInNavigation value)? signInNavigation,
  }) {
    return signInNavigation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(MainNavigation value)? mainNavigation,
    TResult Function(OnBoardingNavigation value)? onBoardingNavigation,
    TResult Function(SignInNavigation value)? signInNavigation,
    required TResult orElse(),
  }) {
    if (signInNavigation != null) {
      return signInNavigation(this);
    }
    return orElse();
  }
}

abstract class SignInNavigation implements AuthState {
  const factory SignInNavigation(final UniqueId id) = _$SignInNavigation;

  UniqueId get id;
  @JsonKey(ignore: true)
  _$$SignInNavigationCopyWith<_$SignInNavigation> get copyWith =>
      throw _privateConstructorUsedError;
}
