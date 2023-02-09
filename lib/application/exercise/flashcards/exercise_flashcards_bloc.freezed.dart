// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_flashcards_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseFlashcardsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cardFlipped,
    required TResult Function() nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cardFlipped,
    TResult? Function()? nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cardFlipped,
    TResult Function()? nextWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(CardFlipped value) cardFlipped,
    required TResult Function(NextWord value) nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CardFlipped value)? cardFlipped,
    TResult? Function(NextWord value)? nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CardFlipped value)? cardFlipped,
    TResult Function(NextWord value)? nextWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseFlashcardsEventCopyWith<$Res> {
  factory $ExerciseFlashcardsEventCopyWith(ExerciseFlashcardsEvent value,
          $Res Function(ExerciseFlashcardsEvent) then) =
      _$ExerciseFlashcardsEventCopyWithImpl<$Res, ExerciseFlashcardsEvent>;
}

/// @nodoc
class _$ExerciseFlashcardsEventCopyWithImpl<$Res,
        $Val extends ExerciseFlashcardsEvent>
    implements $ExerciseFlashcardsEventCopyWith<$Res> {
  _$ExerciseFlashcardsEventCopyWithImpl(this._value, this._then);

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
    extends _$ExerciseFlashcardsEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ExerciseFlashcardsEvent.started()';
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
    required TResult Function() cardFlipped,
    required TResult Function() nextWord,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cardFlipped,
    TResult? Function()? nextWord,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cardFlipped,
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
    required TResult Function(CardFlipped value) cardFlipped,
    required TResult Function(NextWord value) nextWord,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CardFlipped value)? cardFlipped,
    TResult? Function(NextWord value)? nextWord,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CardFlipped value)? cardFlipped,
    TResult Function(NextWord value)? nextWord,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ExerciseFlashcardsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$CardFlippedCopyWith<$Res> {
  factory _$$CardFlippedCopyWith(
          _$CardFlipped value, $Res Function(_$CardFlipped) then) =
      __$$CardFlippedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardFlippedCopyWithImpl<$Res>
    extends _$ExerciseFlashcardsEventCopyWithImpl<$Res, _$CardFlipped>
    implements _$$CardFlippedCopyWith<$Res> {
  __$$CardFlippedCopyWithImpl(
      _$CardFlipped _value, $Res Function(_$CardFlipped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CardFlipped implements CardFlipped {
  const _$CardFlipped();

  @override
  String toString() {
    return 'ExerciseFlashcardsEvent.cardFlipped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CardFlipped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() cardFlipped,
    required TResult Function() nextWord,
  }) {
    return cardFlipped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cardFlipped,
    TResult? Function()? nextWord,
  }) {
    return cardFlipped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cardFlipped,
    TResult Function()? nextWord,
    required TResult orElse(),
  }) {
    if (cardFlipped != null) {
      return cardFlipped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(CardFlipped value) cardFlipped,
    required TResult Function(NextWord value) nextWord,
  }) {
    return cardFlipped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CardFlipped value)? cardFlipped,
    TResult? Function(NextWord value)? nextWord,
  }) {
    return cardFlipped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CardFlipped value)? cardFlipped,
    TResult Function(NextWord value)? nextWord,
    required TResult orElse(),
  }) {
    if (cardFlipped != null) {
      return cardFlipped(this);
    }
    return orElse();
  }
}

abstract class CardFlipped implements ExerciseFlashcardsEvent {
  const factory CardFlipped() = _$CardFlipped;
}

/// @nodoc
abstract class _$$NextWordCopyWith<$Res> {
  factory _$$NextWordCopyWith(
          _$NextWord value, $Res Function(_$NextWord) then) =
      __$$NextWordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextWordCopyWithImpl<$Res>
    extends _$ExerciseFlashcardsEventCopyWithImpl<$Res, _$NextWord>
    implements _$$NextWordCopyWith<$Res> {
  __$$NextWordCopyWithImpl(_$NextWord _value, $Res Function(_$NextWord) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextWord implements NextWord {
  const _$NextWord();

  @override
  String toString() {
    return 'ExerciseFlashcardsEvent.nextWord()';
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
    required TResult Function() cardFlipped,
    required TResult Function() nextWord,
  }) {
    return nextWord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? cardFlipped,
    TResult? Function()? nextWord,
  }) {
    return nextWord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? cardFlipped,
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
    required TResult Function(CardFlipped value) cardFlipped,
    required TResult Function(NextWord value) nextWord,
  }) {
    return nextWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CardFlipped value)? cardFlipped,
    TResult? Function(NextWord value)? nextWord,
  }) {
    return nextWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CardFlipped value)? cardFlipped,
    TResult Function(NextWord value)? nextWord,
    required TResult orElse(),
  }) {
    if (nextWord != null) {
      return nextWord(this);
    }
    return orElse();
  }
}

abstract class NextWord implements ExerciseFlashcardsEvent {
  const factory NextWord() = _$NextWord;
}

/// @nodoc
mixin _$ExerciseFlashcardsState {
  int get position => throw _privateConstructorUsedError;
  bool get wasFlipped => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  List<WordModel> get words => throw _privateConstructorUsedError;
  LanguageDirection get languageDirection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseFlashcardsStateCopyWith<ExerciseFlashcardsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseFlashcardsStateCopyWith<$Res> {
  factory $ExerciseFlashcardsStateCopyWith(ExerciseFlashcardsState value,
          $Res Function(ExerciseFlashcardsState) then) =
      _$ExerciseFlashcardsStateCopyWithImpl<$Res, ExerciseFlashcardsState>;
  @useResult
  $Res call(
      {int position,
      bool wasFlipped,
      bool isFinished,
      List<WordModel> words,
      LanguageDirection languageDirection});

  $LanguageDirectionCopyWith<$Res> get languageDirection;
}

/// @nodoc
class _$ExerciseFlashcardsStateCopyWithImpl<$Res,
        $Val extends ExerciseFlashcardsState>
    implements $ExerciseFlashcardsStateCopyWith<$Res> {
  _$ExerciseFlashcardsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? wasFlipped = null,
    Object? isFinished = null,
    Object? words = null,
    Object? languageDirection = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      wasFlipped: null == wasFlipped
          ? _value.wasFlipped
          : wasFlipped // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ExerciseFlashcardsStateCopyWith<$Res>
    implements $ExerciseFlashcardsStateCopyWith<$Res> {
  factory _$$_ExerciseFlashcardsStateCopyWith(_$_ExerciseFlashcardsState value,
          $Res Function(_$_ExerciseFlashcardsState) then) =
      __$$_ExerciseFlashcardsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int position,
      bool wasFlipped,
      bool isFinished,
      List<WordModel> words,
      LanguageDirection languageDirection});

  @override
  $LanguageDirectionCopyWith<$Res> get languageDirection;
}

/// @nodoc
class __$$_ExerciseFlashcardsStateCopyWithImpl<$Res>
    extends _$ExerciseFlashcardsStateCopyWithImpl<$Res,
        _$_ExerciseFlashcardsState>
    implements _$$_ExerciseFlashcardsStateCopyWith<$Res> {
  __$$_ExerciseFlashcardsStateCopyWithImpl(_$_ExerciseFlashcardsState _value,
      $Res Function(_$_ExerciseFlashcardsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? wasFlipped = null,
    Object? isFinished = null,
    Object? words = null,
    Object? languageDirection = null,
  }) {
    return _then(_$_ExerciseFlashcardsState(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      wasFlipped: null == wasFlipped
          ? _value.wasFlipped
          : wasFlipped // ignore: cast_nullable_to_non_nullable
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

class _$_ExerciseFlashcardsState extends _ExerciseFlashcardsState {
  _$_ExerciseFlashcardsState(
      {required this.position,
      required this.wasFlipped,
      this.isFinished = false,
      required final List<WordModel> words,
      required this.languageDirection})
      : _words = words,
        super._();

  @override
  final int position;
  @override
  final bool wasFlipped;
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
    return 'ExerciseFlashcardsState(position: $position, wasFlipped: $wasFlipped, isFinished: $isFinished, words: $words, languageDirection: $languageDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseFlashcardsState &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.wasFlipped, wasFlipped) ||
                other.wasFlipped == wasFlipped) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.languageDirection, languageDirection) ||
                other.languageDirection == languageDirection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, wasFlipped, isFinished,
      const DeepCollectionEquality().hash(_words), languageDirection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseFlashcardsStateCopyWith<_$_ExerciseFlashcardsState>
      get copyWith =>
          __$$_ExerciseFlashcardsStateCopyWithImpl<_$_ExerciseFlashcardsState>(
              this, _$identity);
}

abstract class _ExerciseFlashcardsState extends ExerciseFlashcardsState {
  factory _ExerciseFlashcardsState(
          {required final int position,
          required final bool wasFlipped,
          final bool isFinished,
          required final List<WordModel> words,
          required final LanguageDirection languageDirection}) =
      _$_ExerciseFlashcardsState;
  _ExerciseFlashcardsState._() : super._();

  @override
  int get position;
  @override
  bool get wasFlipped;
  @override
  bool get isFinished;
  @override
  List<WordModel> get words;
  @override
  LanguageDirection get languageDirection;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseFlashcardsStateCopyWith<_$_ExerciseFlashcardsState>
      get copyWith => throw _privateConstructorUsedError;
}
