// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int all, int position) progressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int all, int position)? progressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int all, int position)? progressChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProgressChanged value) progressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ProgressChanged value)? progressChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProgressChanged value)? progressChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseFormEventCopyWith<$Res> {
  factory $ExerciseFormEventCopyWith(
          ExerciseFormEvent value, $Res Function(ExerciseFormEvent) then) =
      _$ExerciseFormEventCopyWithImpl<$Res, ExerciseFormEvent>;
}

/// @nodoc
class _$ExerciseFormEventCopyWithImpl<$Res, $Val extends ExerciseFormEvent>
    implements $ExerciseFormEventCopyWith<$Res> {
  _$ExerciseFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ExerciseFormEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int all, int position) progressChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int all, int position)? progressChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int all, int position)? progressChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProgressChanged value) progressChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ProgressChanged value)? progressChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProgressChanged value)? progressChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ExerciseFormEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$ProgressChangedCopyWith<$Res> {
  factory _$$ProgressChangedCopyWith(
          _$ProgressChanged value, $Res Function(_$ProgressChanged) then) =
      __$$ProgressChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int all, int position});
}

/// @nodoc
class __$$ProgressChangedCopyWithImpl<$Res>
    extends _$ExerciseFormEventCopyWithImpl<$Res, _$ProgressChanged>
    implements _$$ProgressChangedCopyWith<$Res> {
  __$$ProgressChangedCopyWithImpl(
      _$ProgressChanged _value, $Res Function(_$ProgressChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
    Object? position = null,
  }) {
    return _then(_$ProgressChanged(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProgressChanged implements ProgressChanged {
  const _$ProgressChanged({required this.all, required this.position});

  @override
  final int all;
  @override
  final int position;

  @override
  String toString() {
    return 'ExerciseFormEvent.progressChanged(all: $all, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressChanged &&
            (identical(other.all, all) || other.all == all) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, all, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressChangedCopyWith<_$ProgressChanged> get copyWith =>
      __$$ProgressChangedCopyWithImpl<_$ProgressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int all, int position) progressChanged,
  }) {
    return progressChanged(all, position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int all, int position)? progressChanged,
  }) {
    return progressChanged?.call(all, position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int all, int position)? progressChanged,
    required TResult orElse(),
  }) {
    if (progressChanged != null) {
      return progressChanged(all, position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProgressChanged value) progressChanged,
  }) {
    return progressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ProgressChanged value)? progressChanged,
  }) {
    return progressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProgressChanged value)? progressChanged,
    required TResult orElse(),
  }) {
    if (progressChanged != null) {
      return progressChanged(this);
    }
    return orElse();
  }
}

abstract class ProgressChanged implements ExerciseFormEvent {
  const factory ProgressChanged(
      {required final int all,
      required final int position}) = _$ProgressChanged;

  int get all;
  int get position;
  @JsonKey(ignore: true)
  _$$ProgressChangedCopyWith<_$ProgressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExerciseFormState {
  String get appbarTitle => throw _privateConstructorUsedError;
  ExerciseModel get activeExercise => throw _privateConstructorUsedError;
  double get activeProgressValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseFormStateCopyWith<ExerciseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseFormStateCopyWith<$Res> {
  factory $ExerciseFormStateCopyWith(
          ExerciseFormState value, $Res Function(ExerciseFormState) then) =
      _$ExerciseFormStateCopyWithImpl<$Res, ExerciseFormState>;
  @useResult
  $Res call(
      {String appbarTitle,
      ExerciseModel activeExercise,
      double activeProgressValue});

  $ExerciseModelCopyWith<$Res> get activeExercise;
}

/// @nodoc
class _$ExerciseFormStateCopyWithImpl<$Res, $Val extends ExerciseFormState>
    implements $ExerciseFormStateCopyWith<$Res> {
  _$ExerciseFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appbarTitle = null,
    Object? activeExercise = null,
    Object? activeProgressValue = null,
  }) {
    return _then(_value.copyWith(
      appbarTitle: null == appbarTitle
          ? _value.appbarTitle
          : appbarTitle // ignore: cast_nullable_to_non_nullable
              as String,
      activeExercise: null == activeExercise
          ? _value.activeExercise
          : activeExercise // ignore: cast_nullable_to_non_nullable
              as ExerciseModel,
      activeProgressValue: null == activeProgressValue
          ? _value.activeProgressValue
          : activeProgressValue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExerciseModelCopyWith<$Res> get activeExercise {
    return $ExerciseModelCopyWith<$Res>(_value.activeExercise, (value) {
      return _then(_value.copyWith(activeExercise: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExerciseFormStateCopyWith<$Res>
    implements $ExerciseFormStateCopyWith<$Res> {
  factory _$$_ExerciseFormStateCopyWith(_$_ExerciseFormState value,
          $Res Function(_$_ExerciseFormState) then) =
      __$$_ExerciseFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String appbarTitle,
      ExerciseModel activeExercise,
      double activeProgressValue});

  @override
  $ExerciseModelCopyWith<$Res> get activeExercise;
}

/// @nodoc
class __$$_ExerciseFormStateCopyWithImpl<$Res>
    extends _$ExerciseFormStateCopyWithImpl<$Res, _$_ExerciseFormState>
    implements _$$_ExerciseFormStateCopyWith<$Res> {
  __$$_ExerciseFormStateCopyWithImpl(
      _$_ExerciseFormState _value, $Res Function(_$_ExerciseFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appbarTitle = null,
    Object? activeExercise = null,
    Object? activeProgressValue = null,
  }) {
    return _then(_$_ExerciseFormState(
      appbarTitle: null == appbarTitle
          ? _value.appbarTitle
          : appbarTitle // ignore: cast_nullable_to_non_nullable
              as String,
      activeExercise: null == activeExercise
          ? _value.activeExercise
          : activeExercise // ignore: cast_nullable_to_non_nullable
              as ExerciseModel,
      activeProgressValue: null == activeProgressValue
          ? _value.activeProgressValue
          : activeProgressValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ExerciseFormState implements _ExerciseFormState {
  const _$_ExerciseFormState(
      {required this.appbarTitle,
      required this.activeExercise,
      this.activeProgressValue = 0.0});

  @override
  final String appbarTitle;
  @override
  final ExerciseModel activeExercise;
  @override
  @JsonKey()
  final double activeProgressValue;

  @override
  String toString() {
    return 'ExerciseFormState(appbarTitle: $appbarTitle, activeExercise: $activeExercise, activeProgressValue: $activeProgressValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseFormState &&
            (identical(other.appbarTitle, appbarTitle) ||
                other.appbarTitle == appbarTitle) &&
            (identical(other.activeExercise, activeExercise) ||
                other.activeExercise == activeExercise) &&
            (identical(other.activeProgressValue, activeProgressValue) ||
                other.activeProgressValue == activeProgressValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, appbarTitle, activeExercise, activeProgressValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseFormStateCopyWith<_$_ExerciseFormState> get copyWith =>
      __$$_ExerciseFormStateCopyWithImpl<_$_ExerciseFormState>(
          this, _$identity);
}

abstract class _ExerciseFormState implements ExerciseFormState {
  const factory _ExerciseFormState(
      {required final String appbarTitle,
      required final ExerciseModel activeExercise,
      final double activeProgressValue}) = _$_ExerciseFormState;

  @override
  String get appbarTitle;
  @override
  ExerciseModel get activeExercise;
  @override
  double get activeProgressValue;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseFormStateCopyWith<_$_ExerciseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
