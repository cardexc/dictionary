// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_scratchcards_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseScratchcardsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cardScratched,
    required TResult Function() nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cardScratched,
    TResult? Function()? nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cardScratched,
    TResult Function()? nextWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(CardScratched value) cardScratched,
    required TResult Function(NextWord value) nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CardScratched value)? cardScratched,
    TResult? Function(NextWord value)? nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CardScratched value)? cardScratched,
    TResult Function(NextWord value)? nextWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseScratchcardsEventCopyWith<$Res> {
  factory $ExerciseScratchcardsEventCopyWith(ExerciseScratchcardsEvent value,
          $Res Function(ExerciseScratchcardsEvent) then) =
      _$ExerciseScratchcardsEventCopyWithImpl<$Res, ExerciseScratchcardsEvent>;
}

/// @nodoc
class _$ExerciseScratchcardsEventCopyWithImpl<$Res,
        $Val extends ExerciseScratchcardsEvent>
    implements $ExerciseScratchcardsEventCopyWith<$Res> {
  _$ExerciseScratchcardsEventCopyWithImpl(this._value, this._then);

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
    extends _$ExerciseScratchcardsEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ExerciseScratchcardsEvent.started()';
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
    required TResult Function() cardScratched,
    required TResult Function() nextWord,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cardScratched,
    TResult? Function()? nextWord,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cardScratched,
    TResult Function()? nextWord,
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
    required TResult Function(CardScratched value) cardScratched,
    required TResult Function(NextWord value) nextWord,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CardScratched value)? cardScratched,
    TResult? Function(NextWord value)? nextWord,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CardScratched value)? cardScratched,
    TResult Function(NextWord value)? nextWord,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ExerciseScratchcardsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$CardScratchedCopyWith<$Res> {
  factory _$$CardScratchedCopyWith(
          _$CardScratched value, $Res Function(_$CardScratched) then) =
      __$$CardScratchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardScratchedCopyWithImpl<$Res>
    extends _$ExerciseScratchcardsEventCopyWithImpl<$Res, _$CardScratched>
    implements _$$CardScratchedCopyWith<$Res> {
  __$$CardScratchedCopyWithImpl(
      _$CardScratched _value, $Res Function(_$CardScratched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CardScratched implements CardScratched {
  const _$CardScratched();

  @override
  String toString() {
    return 'ExerciseScratchcardsEvent.cardScratched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CardScratched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cardScratched,
    required TResult Function() nextWord,
  }) {
    return cardScratched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cardScratched,
    TResult? Function()? nextWord,
  }) {
    return cardScratched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cardScratched,
    TResult Function()? nextWord,
    required TResult orElse(),
  }) {
    if (cardScratched != null) {
      return cardScratched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(CardScratched value) cardScratched,
    required TResult Function(NextWord value) nextWord,
  }) {
    return cardScratched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CardScratched value)? cardScratched,
    TResult? Function(NextWord value)? nextWord,
  }) {
    return cardScratched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CardScratched value)? cardScratched,
    TResult Function(NextWord value)? nextWord,
    required TResult orElse(),
  }) {
    if (cardScratched != null) {
      return cardScratched(this);
    }
    return orElse();
  }
}

abstract class CardScratched implements ExerciseScratchcardsEvent {
  const factory CardScratched() = _$CardScratched;
}

/// @nodoc
abstract class _$$NextWordCopyWith<$Res> {
  factory _$$NextWordCopyWith(
          _$NextWord value, $Res Function(_$NextWord) then) =
      __$$NextWordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextWordCopyWithImpl<$Res>
    extends _$ExerciseScratchcardsEventCopyWithImpl<$Res, _$NextWord>
    implements _$$NextWordCopyWith<$Res> {
  __$$NextWordCopyWithImpl(_$NextWord _value, $Res Function(_$NextWord) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextWord implements NextWord {
  const _$NextWord();

  @override
  String toString() {
    return 'ExerciseScratchcardsEvent.nextWord()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextWord);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cardScratched,
    required TResult Function() nextWord,
  }) {
    return nextWord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cardScratched,
    TResult? Function()? nextWord,
  }) {
    return nextWord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cardScratched,
    TResult Function()? nextWord,
    required TResult orElse(),
  }) {
    if (nextWord != null) {
      return nextWord();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(CardScratched value) cardScratched,
    required TResult Function(NextWord value) nextWord,
  }) {
    return nextWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CardScratched value)? cardScratched,
    TResult? Function(NextWord value)? nextWord,
  }) {
    return nextWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CardScratched value)? cardScratched,
    TResult Function(NextWord value)? nextWord,
    required TResult orElse(),
  }) {
    if (nextWord != null) {
      return nextWord(this);
    }
    return orElse();
  }
}

abstract class NextWord implements ExerciseScratchcardsEvent {
  const factory NextWord() = _$NextWord;
}

/// @nodoc
mixin _$ExerciseScratchcardsState {
  int get position => throw _privateConstructorUsedError;
  bool get wasScratched => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  List<WordModel> get words => throw _privateConstructorUsedError;
  LanguageDirection get languageDirection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseScratchcardsStateCopyWith<ExerciseScratchcardsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseScratchcardsStateCopyWith<$Res> {
  factory $ExerciseScratchcardsStateCopyWith(ExerciseScratchcardsState value,
          $Res Function(ExerciseScratchcardsState) then) =
      _$ExerciseScratchcardsStateCopyWithImpl<$Res, ExerciseScratchcardsState>;
  @useResult
  $Res call(
      {int position,
      bool wasScratched,
      bool isFinished,
      List<WordModel> words,
      LanguageDirection languageDirection});

  $LanguageDirectionCopyWith<$Res> get languageDirection;
}

/// @nodoc
class _$ExerciseScratchcardsStateCopyWithImpl<$Res,
        $Val extends ExerciseScratchcardsState>
    implements $ExerciseScratchcardsStateCopyWith<$Res> {
  _$ExerciseScratchcardsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? wasScratched = null,
    Object? isFinished = null,
    Object? words = null,
    Object? languageDirection = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      wasScratched: null == wasScratched
          ? _value.wasScratched
          : wasScratched // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
      languageDirection: null == languageDirection
          ? _value.languageDirection
          : languageDirection // ignore: cast_nullable_to_non_nullable
              as LanguageDirection,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageDirectionCopyWith<$Res> get languageDirection {
    return $LanguageDirectionCopyWith<$Res>(_value.languageDirection, (value) {
      return _then(_value.copyWith(languageDirection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExerciseScratchcardsStateCopyWith<$Res>
    implements $ExerciseScratchcardsStateCopyWith<$Res> {
  factory _$$_ExerciseScratchcardsStateCopyWith(
          _$_ExerciseScratchcardsState value,
          $Res Function(_$_ExerciseScratchcardsState) then) =
      __$$_ExerciseScratchcardsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int position,
      bool wasScratched,
      bool isFinished,
      List<WordModel> words,
      LanguageDirection languageDirection});

  @override
  $LanguageDirectionCopyWith<$Res> get languageDirection;
}

/// @nodoc
class __$$_ExerciseScratchcardsStateCopyWithImpl<$Res>
    extends _$ExerciseScratchcardsStateCopyWithImpl<$Res,
        _$_ExerciseScratchcardsState>
    implements _$$_ExerciseScratchcardsStateCopyWith<$Res> {
  __$$_ExerciseScratchcardsStateCopyWithImpl(
      _$_ExerciseScratchcardsState _value,
      $Res Function(_$_ExerciseScratchcardsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? wasScratched = null,
    Object? isFinished = null,
    Object? words = null,
    Object? languageDirection = null,
  }) {
    return _then(_$_ExerciseScratchcardsState(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      wasScratched: null == wasScratched
          ? _value.wasScratched
          : wasScratched // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
      languageDirection: null == languageDirection
          ? _value.languageDirection
          : languageDirection // ignore: cast_nullable_to_non_nullable
              as LanguageDirection,
    ));
  }
}

/// @nodoc

class _$_ExerciseScratchcardsState extends _ExerciseScratchcardsState {
  _$_ExerciseScratchcardsState(
      {required this.position,
      required this.wasScratched,
      this.isFinished = false,
      required final List<WordModel> words,
      required this.languageDirection})
      : _words = words,
        super._();

  @override
  final int position;
  @override
  final bool wasScratched;
  @override
  @JsonKey()
  final bool isFinished;
  final List<WordModel> _words;
  @override
  List<WordModel> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  final LanguageDirection languageDirection;

  @override
  String toString() {
    return 'ExerciseScratchcardsState(position: $position, wasScratched: $wasScratched, isFinished: $isFinished, words: $words, languageDirection: $languageDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseScratchcardsState &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.wasScratched, wasScratched) ||
                other.wasScratched == wasScratched) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.languageDirection, languageDirection) ||
                other.languageDirection == languageDirection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      position,
      wasScratched,
      isFinished,
      const DeepCollectionEquality().hash(_words),
      languageDirection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseScratchcardsStateCopyWith<_$_ExerciseScratchcardsState>
      get copyWith => __$$_ExerciseScratchcardsStateCopyWithImpl<
          _$_ExerciseScratchcardsState>(this, _$identity);
}

abstract class _ExerciseScratchcardsState extends ExerciseScratchcardsState {
  factory _ExerciseScratchcardsState(
          {required final int position,
          required final bool wasScratched,
          final bool isFinished,
          required final List<WordModel> words,
          required final LanguageDirection languageDirection}) =
      _$_ExerciseScratchcardsState;
  _ExerciseScratchcardsState._() : super._();

  @override
  int get position;
  @override
  bool get wasScratched;
  @override
  bool get isFinished;
  @override
  List<WordModel> get words;
  @override
  LanguageDirection get languageDirection;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseScratchcardsStateCopyWith<_$_ExerciseScratchcardsState>
      get copyWith => throw _privateConstructorUsedError;
}
