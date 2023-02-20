// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_writing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseWritingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextWord,
    required TResult Function(String value) wordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextWord,
    TResult? Function(String value)? wordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextWord,
    TResult Function(String value)? wordSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(NextWord value) nextWord,
    required TResult Function(WordSubmitted value) wordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(NextWord value)? nextWord,
    TResult? Function(WordSubmitted value)? wordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NextWord value)? nextWord,
    TResult Function(WordSubmitted value)? wordSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseWritingEventCopyWith<$Res> {
  factory $ExerciseWritingEventCopyWith(ExerciseWritingEvent value,
          $Res Function(ExerciseWritingEvent) then) =
      _$ExerciseWritingEventCopyWithImpl<$Res, ExerciseWritingEvent>;
}

/// @nodoc
class _$ExerciseWritingEventCopyWithImpl<$Res,
        $Val extends ExerciseWritingEvent>
    implements $ExerciseWritingEventCopyWith<$Res> {
  _$ExerciseWritingEventCopyWithImpl(this._value, this._then);

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
    extends _$ExerciseWritingEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ExerciseWritingEvent.started()';
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
    required TResult Function() nextWord,
    required TResult Function(String value) wordSubmitted,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextWord,
    TResult? Function(String value)? wordSubmitted,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextWord,
    TResult Function(String value)? wordSubmitted,
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
    required TResult Function(NextWord value) nextWord,
    required TResult Function(WordSubmitted value) wordSubmitted,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(NextWord value)? nextWord,
    TResult? Function(WordSubmitted value)? wordSubmitted,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NextWord value)? nextWord,
    TResult Function(WordSubmitted value)? wordSubmitted,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ExerciseWritingEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$NextWordCopyWith<$Res> {
  factory _$$NextWordCopyWith(
          _$NextWord value, $Res Function(_$NextWord) then) =
      __$$NextWordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextWordCopyWithImpl<$Res>
    extends _$ExerciseWritingEventCopyWithImpl<$Res, _$NextWord>
    implements _$$NextWordCopyWith<$Res> {
  __$$NextWordCopyWithImpl(_$NextWord _value, $Res Function(_$NextWord) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextWord implements NextWord {
  const _$NextWord();

  @override
  String toString() {
    return 'ExerciseWritingEvent.nextWord()';
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
    required TResult Function() nextWord,
    required TResult Function(String value) wordSubmitted,
  }) {
    return nextWord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextWord,
    TResult? Function(String value)? wordSubmitted,
  }) {
    return nextWord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextWord,
    TResult Function(String value)? wordSubmitted,
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
    required TResult Function(NextWord value) nextWord,
    required TResult Function(WordSubmitted value) wordSubmitted,
  }) {
    return nextWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(NextWord value)? nextWord,
    TResult? Function(WordSubmitted value)? wordSubmitted,
  }) {
    return nextWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NextWord value)? nextWord,
    TResult Function(WordSubmitted value)? wordSubmitted,
    required TResult orElse(),
  }) {
    if (nextWord != null) {
      return nextWord(this);
    }
    return orElse();
  }
}

abstract class NextWord implements ExerciseWritingEvent {
  const factory NextWord() = _$NextWord;
}

/// @nodoc
abstract class _$$WordSubmittedCopyWith<$Res> {
  factory _$$WordSubmittedCopyWith(
          _$WordSubmitted value, $Res Function(_$WordSubmitted) then) =
      __$$WordSubmittedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$WordSubmittedCopyWithImpl<$Res>
    extends _$ExerciseWritingEventCopyWithImpl<$Res, _$WordSubmitted>
    implements _$$WordSubmittedCopyWith<$Res> {
  __$$WordSubmittedCopyWithImpl(
      _$WordSubmitted _value, $Res Function(_$WordSubmitted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$WordSubmitted(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WordSubmitted implements WordSubmitted {
  const _$WordSubmitted(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ExerciseWritingEvent.wordSubmitted(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordSubmitted &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordSubmittedCopyWith<_$WordSubmitted> get copyWith =>
      __$$WordSubmittedCopyWithImpl<_$WordSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextWord,
    required TResult Function(String value) wordSubmitted,
  }) {
    return wordSubmitted(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextWord,
    TResult? Function(String value)? wordSubmitted,
  }) {
    return wordSubmitted?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextWord,
    TResult Function(String value)? wordSubmitted,
    required TResult orElse(),
  }) {
    if (wordSubmitted != null) {
      return wordSubmitted(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(NextWord value) nextWord,
    required TResult Function(WordSubmitted value) wordSubmitted,
  }) {
    return wordSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(NextWord value)? nextWord,
    TResult? Function(WordSubmitted value)? wordSubmitted,
  }) {
    return wordSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NextWord value)? nextWord,
    TResult Function(WordSubmitted value)? wordSubmitted,
    required TResult orElse(),
  }) {
    if (wordSubmitted != null) {
      return wordSubmitted(this);
    }
    return orElse();
  }
}

abstract class WordSubmitted implements ExerciseWritingEvent {
  const factory WordSubmitted(final String value) = _$WordSubmitted;

  String get value;
  @JsonKey(ignore: true)
  _$$WordSubmittedCopyWith<_$WordSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExerciseWritingState {
  bool get isFinished => throw _privateConstructorUsedError;
  bool get showNextButton => throw _privateConstructorUsedError;
  bool get wordIsCorrect => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  LanguageDirection get languageDirection => throw _privateConstructorUsedError;
  List<WordModel> get words => throw _privateConstructorUsedError;
  String get constructedWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseWritingStateCopyWith<ExerciseWritingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseWritingStateCopyWith<$Res> {
  factory $ExerciseWritingStateCopyWith(ExerciseWritingState value,
          $Res Function(ExerciseWritingState) then) =
      _$ExerciseWritingStateCopyWithImpl<$Res, ExerciseWritingState>;
  @useResult
  $Res call(
      {bool isFinished,
      bool showNextButton,
      bool wordIsCorrect,
      int position,
      LanguageDirection languageDirection,
      List<WordModel> words,
      String constructedWord});

  $LanguageDirectionCopyWith<$Res> get languageDirection;
}

/// @nodoc
class _$ExerciseWritingStateCopyWithImpl<$Res,
        $Val extends ExerciseWritingState>
    implements $ExerciseWritingStateCopyWith<$Res> {
  _$ExerciseWritingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFinished = null,
    Object? showNextButton = null,
    Object? wordIsCorrect = null,
    Object? position = null,
    Object? languageDirection = null,
    Object? words = null,
    Object? constructedWord = null,
  }) {
    return _then(_value.copyWith(
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      showNextButton: null == showNextButton
          ? _value.showNextButton
          : showNextButton // ignore: cast_nullable_to_non_nullable
              as bool,
      wordIsCorrect: null == wordIsCorrect
          ? _value.wordIsCorrect
          : wordIsCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      languageDirection: null == languageDirection
          ? _value.languageDirection
          : languageDirection // ignore: cast_nullable_to_non_nullable
              as LanguageDirection,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
      constructedWord: null == constructedWord
          ? _value.constructedWord
          : constructedWord // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_ExerciseWritingStateCopyWith<$Res>
    implements $ExerciseWritingStateCopyWith<$Res> {
  factory _$$_ExerciseWritingStateCopyWith(_$_ExerciseWritingState value,
          $Res Function(_$_ExerciseWritingState) then) =
      __$$_ExerciseWritingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFinished,
      bool showNextButton,
      bool wordIsCorrect,
      int position,
      LanguageDirection languageDirection,
      List<WordModel> words,
      String constructedWord});

  @override
  $LanguageDirectionCopyWith<$Res> get languageDirection;
}

/// @nodoc
class __$$_ExerciseWritingStateCopyWithImpl<$Res>
    extends _$ExerciseWritingStateCopyWithImpl<$Res, _$_ExerciseWritingState>
    implements _$$_ExerciseWritingStateCopyWith<$Res> {
  __$$_ExerciseWritingStateCopyWithImpl(_$_ExerciseWritingState _value,
      $Res Function(_$_ExerciseWritingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFinished = null,
    Object? showNextButton = null,
    Object? wordIsCorrect = null,
    Object? position = null,
    Object? languageDirection = null,
    Object? words = null,
    Object? constructedWord = null,
  }) {
    return _then(_$_ExerciseWritingState(
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      showNextButton: null == showNextButton
          ? _value.showNextButton
          : showNextButton // ignore: cast_nullable_to_non_nullable
              as bool,
      wordIsCorrect: null == wordIsCorrect
          ? _value.wordIsCorrect
          : wordIsCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      languageDirection: null == languageDirection
          ? _value.languageDirection
          : languageDirection // ignore: cast_nullable_to_non_nullable
              as LanguageDirection,
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
      constructedWord: null == constructedWord
          ? _value.constructedWord
          : constructedWord // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExerciseWritingState implements _ExerciseWritingState {
  _$_ExerciseWritingState(
      {this.isFinished = false,
      this.showNextButton = false,
      this.wordIsCorrect = false,
      this.position = 0,
      required this.languageDirection,
      required final List<WordModel> words,
      this.constructedWord = ""})
      : _words = words;

  @override
  @JsonKey()
  final bool isFinished;
  @override
  @JsonKey()
  final bool showNextButton;
  @override
  @JsonKey()
  final bool wordIsCorrect;
  @override
  @JsonKey()
  final int position;
  @override
  final LanguageDirection languageDirection;
  final List<WordModel> _words;
  @override
  List<WordModel> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  @JsonKey()
  final String constructedWord;

  @override
  String toString() {
    return 'ExerciseWritingState(isFinished: $isFinished, showNextButton: $showNextButton, wordIsCorrect: $wordIsCorrect, position: $position, languageDirection: $languageDirection, words: $words, constructedWord: $constructedWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseWritingState &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.showNextButton, showNextButton) ||
                other.showNextButton == showNextButton) &&
            (identical(other.wordIsCorrect, wordIsCorrect) ||
                other.wordIsCorrect == wordIsCorrect) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.languageDirection, languageDirection) ||
                other.languageDirection == languageDirection) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.constructedWord, constructedWord) ||
                other.constructedWord == constructedWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isFinished,
      showNextButton,
      wordIsCorrect,
      position,
      languageDirection,
      const DeepCollectionEquality().hash(_words),
      constructedWord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseWritingStateCopyWith<_$_ExerciseWritingState> get copyWith =>
      __$$_ExerciseWritingStateCopyWithImpl<_$_ExerciseWritingState>(
          this, _$identity);
}

abstract class _ExerciseWritingState implements ExerciseWritingState {
  factory _ExerciseWritingState(
      {final bool isFinished,
      final bool showNextButton,
      final bool wordIsCorrect,
      final int position,
      required final LanguageDirection languageDirection,
      required final List<WordModel> words,
      final String constructedWord}) = _$_ExerciseWritingState;

  @override
  bool get isFinished;
  @override
  bool get showNextButton;
  @override
  bool get wordIsCorrect;
  @override
  int get position;
  @override
  LanguageDirection get languageDirection;
  @override
  List<WordModel> get words;
  @override
  String get constructedWord;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseWritingStateCopyWith<_$_ExerciseWritingState> get copyWith =>
      throw _privateConstructorUsedError;
}
