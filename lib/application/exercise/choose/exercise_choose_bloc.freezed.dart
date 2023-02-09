// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_choose_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseChooseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ExerciseType type, bool newState) exerciseChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ExerciseType type, bool newState)? exerciseChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ExerciseType type, bool newState)? exerciseChosen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ExerciseChosen value) exerciseChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ExerciseChosen value)? exerciseChosen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ExerciseChosen value)? exerciseChosen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseChooseEventCopyWith<$Res> {
  factory $ExerciseChooseEventCopyWith(
          ExerciseChooseEvent value, $Res Function(ExerciseChooseEvent) then) =
      _$ExerciseChooseEventCopyWithImpl<$Res, ExerciseChooseEvent>;
}

/// @nodoc
class _$ExerciseChooseEventCopyWithImpl<$Res, $Val extends ExerciseChooseEvent>
    implements $ExerciseChooseEventCopyWith<$Res> {
  _$ExerciseChooseEventCopyWithImpl(this._value, this._then);

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
    extends _$ExerciseChooseEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ExerciseChooseEvent.started()';
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
    required TResult Function(ExerciseType type, bool newState) exerciseChosen,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ExerciseType type, bool newState)? exerciseChosen,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ExerciseType type, bool newState)? exerciseChosen,
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
    required TResult Function(ExerciseChosen value) exerciseChosen,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ExerciseChosen value)? exerciseChosen,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ExerciseChosen value)? exerciseChosen,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ExerciseChooseEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$ExerciseChosenCopyWith<$Res> {
  factory _$$ExerciseChosenCopyWith(
          _$ExerciseChosen value, $Res Function(_$ExerciseChosen) then) =
      __$$ExerciseChosenCopyWithImpl<$Res>;
  @useResult
  $Res call({ExerciseType type, bool newState});
}

/// @nodoc
class __$$ExerciseChosenCopyWithImpl<$Res>
    extends _$ExerciseChooseEventCopyWithImpl<$Res, _$ExerciseChosen>
    implements _$$ExerciseChosenCopyWith<$Res> {
  __$$ExerciseChosenCopyWithImpl(
      _$ExerciseChosen _value, $Res Function(_$ExerciseChosen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? newState = null,
  }) {
    return _then(_$ExerciseChosen(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
      null == newState
          ? _value.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ExerciseChosen implements ExerciseChosen {
  const _$ExerciseChosen(this.type, this.newState);

  @override
  final ExerciseType type;
  @override
  final bool newState;

  @override
  String toString() {
    return 'ExerciseChooseEvent.exerciseChosen(type: $type, newState: $newState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseChosen &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.newState, newState) ||
                other.newState == newState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, newState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseChosenCopyWith<_$ExerciseChosen> get copyWith =>
      __$$ExerciseChosenCopyWithImpl<_$ExerciseChosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ExerciseType type, bool newState) exerciseChosen,
  }) {
    return exerciseChosen(type, newState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ExerciseType type, bool newState)? exerciseChosen,
  }) {
    return exerciseChosen?.call(type, newState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ExerciseType type, bool newState)? exerciseChosen,
    required TResult orElse(),
  }) {
    if (exerciseChosen != null) {
      return exerciseChosen(type, newState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ExerciseChosen value) exerciseChosen,
  }) {
    return exerciseChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ExerciseChosen value)? exerciseChosen,
  }) {
    return exerciseChosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ExerciseChosen value)? exerciseChosen,
    required TResult orElse(),
  }) {
    if (exerciseChosen != null) {
      return exerciseChosen(this);
    }
    return orElse();
  }
}

abstract class ExerciseChosen implements ExerciseChooseEvent {
  const factory ExerciseChosen(final ExerciseType type, final bool newState) =
      _$ExerciseChosen;

  ExerciseType get type;
  bool get newState;
  @JsonKey(ignore: true)
  _$$ExerciseChosenCopyWith<_$ExerciseChosen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExerciseChooseState {
  int get totalWords => throw _privateConstructorUsedError;
  Map<ExerciseType, bool> get exercisesStates =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseChooseStateCopyWith<ExerciseChooseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseChooseStateCopyWith<$Res> {
  factory $ExerciseChooseStateCopyWith(
          ExerciseChooseState value, $Res Function(ExerciseChooseState) then) =
      _$ExerciseChooseStateCopyWithImpl<$Res, ExerciseChooseState>;
  @useResult
  $Res call({int totalWords, Map<ExerciseType, bool> exercisesStates});
}

/// @nodoc
class _$ExerciseChooseStateCopyWithImpl<$Res, $Val extends ExerciseChooseState>
    implements $ExerciseChooseStateCopyWith<$Res> {
  _$ExerciseChooseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalWords = null,
    Object? exercisesStates = null,
  }) {
    return _then(_value.copyWith(
      totalWords: null == totalWords
          ? _value.totalWords
          : totalWords // ignore: cast_nullable_to_non_nullable
              as int,
      exercisesStates: null == exercisesStates
          ? _value.exercisesStates
          : exercisesStates // ignore: cast_nullable_to_non_nullable
              as Map<ExerciseType, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExerciseChooseStateCopyWith<$Res>
    implements $ExerciseChooseStateCopyWith<$Res> {
  factory _$$_ExerciseChooseStateCopyWith(_$_ExerciseChooseState value,
          $Res Function(_$_ExerciseChooseState) then) =
      __$$_ExerciseChooseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalWords, Map<ExerciseType, bool> exercisesStates});
}

/// @nodoc
class __$$_ExerciseChooseStateCopyWithImpl<$Res>
    extends _$ExerciseChooseStateCopyWithImpl<$Res, _$_ExerciseChooseState>
    implements _$$_ExerciseChooseStateCopyWith<$Res> {
  __$$_ExerciseChooseStateCopyWithImpl(_$_ExerciseChooseState _value,
      $Res Function(_$_ExerciseChooseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalWords = null,
    Object? exercisesStates = null,
  }) {
    return _then(_$_ExerciseChooseState(
      totalWords: null == totalWords
          ? _value.totalWords
          : totalWords // ignore: cast_nullable_to_non_nullable
              as int,
      exercisesStates: null == exercisesStates
          ? _value.exercisesStates
          : exercisesStates // ignore: cast_nullable_to_non_nullable
              as Map<ExerciseType, bool>,
    ));
  }
}

/// @nodoc

class _$_ExerciseChooseState implements _ExerciseChooseState {
  const _$_ExerciseChooseState(
      {required this.totalWords, required this.exercisesStates});

  @override
  final int totalWords;
  @override
  final Map<ExerciseType, bool> exercisesStates;

  @override
  String toString() {
    return 'ExerciseChooseState(totalWords: $totalWords, exercisesStates: $exercisesStates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseChooseState &&
            (identical(other.totalWords, totalWords) ||
                other.totalWords == totalWords) &&
            const DeepCollectionEquality()
                .equals(other.exercisesStates, exercisesStates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalWords,
      const DeepCollectionEquality().hash(exercisesStates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseChooseStateCopyWith<_$_ExerciseChooseState> get copyWith =>
      __$$_ExerciseChooseStateCopyWithImpl<_$_ExerciseChooseState>(
          this, _$identity);
}

abstract class _ExerciseChooseState implements ExerciseChooseState {
  const factory _ExerciseChooseState(
          {required final int totalWords,
          required final Map<ExerciseType, bool> exercisesStates}) =
      _$_ExerciseChooseState;

  @override
  int get totalWords;
  @override
  Map<ExerciseType, bool> get exercisesStates;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseChooseStateCopyWith<_$_ExerciseChooseState> get copyWith =>
      throw _privateConstructorUsedError;
}
