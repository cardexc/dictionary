// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_alphabet_soup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseAlphabetSoupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextWord,
    required TResult Function(Pair<UniqueId, String> pairChar) charChosen,
    required TResult Function() charRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextWord,
    TResult? Function(Pair<UniqueId, String> pairChar)? charChosen,
    TResult? Function()? charRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextWord,
    TResult Function(Pair<UniqueId, String> pairChar)? charChosen,
    TResult Function()? charRemoved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(NextWord value) nextWord,
    required TResult Function(CharChosen value) charChosen,
    required TResult Function(CharRemoved value) charRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(NextWord value)? nextWord,
    TResult? Function(CharChosen value)? charChosen,
    TResult? Function(CharRemoved value)? charRemoved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NextWord value)? nextWord,
    TResult Function(CharChosen value)? charChosen,
    TResult Function(CharRemoved value)? charRemoved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseAlphabetSoupEventCopyWith<$Res> {
  factory $ExerciseAlphabetSoupEventCopyWith(ExerciseAlphabetSoupEvent value,
          $Res Function(ExerciseAlphabetSoupEvent) then) =
      _$ExerciseAlphabetSoupEventCopyWithImpl<$Res, ExerciseAlphabetSoupEvent>;
}

/// @nodoc
class _$ExerciseAlphabetSoupEventCopyWithImpl<$Res,
        $Val extends ExerciseAlphabetSoupEvent>
    implements $ExerciseAlphabetSoupEventCopyWith<$Res> {
  _$ExerciseAlphabetSoupEventCopyWithImpl(this._value, this._then);

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
    extends _$ExerciseAlphabetSoupEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ExerciseAlphabetSoupEvent.started()';
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
    required TResult Function(Pair<UniqueId, String> pairChar) charChosen,
    required TResult Function() charRemoved,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextWord,
    TResult? Function(Pair<UniqueId, String> pairChar)? charChosen,
    TResult? Function()? charRemoved,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextWord,
    TResult Function(Pair<UniqueId, String> pairChar)? charChosen,
    TResult Function()? charRemoved,
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
    required TResult Function(CharChosen value) charChosen,
    required TResult Function(CharRemoved value) charRemoved,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(NextWord value)? nextWord,
    TResult? Function(CharChosen value)? charChosen,
    TResult? Function(CharRemoved value)? charRemoved,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NextWord value)? nextWord,
    TResult Function(CharChosen value)? charChosen,
    TResult Function(CharRemoved value)? charRemoved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ExerciseAlphabetSoupEvent {
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
    extends _$ExerciseAlphabetSoupEventCopyWithImpl<$Res, _$NextWord>
    implements _$$NextWordCopyWith<$Res> {
  __$$NextWordCopyWithImpl(_$NextWord _value, $Res Function(_$NextWord) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextWord implements NextWord {
  const _$NextWord();

  @override
  String toString() {
    return 'ExerciseAlphabetSoupEvent.nextWord()';
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
    required TResult Function(Pair<UniqueId, String> pairChar) charChosen,
    required TResult Function() charRemoved,
  }) {
    return nextWord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextWord,
    TResult? Function(Pair<UniqueId, String> pairChar)? charChosen,
    TResult? Function()? charRemoved,
  }) {
    return nextWord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextWord,
    TResult Function(Pair<UniqueId, String> pairChar)? charChosen,
    TResult Function()? charRemoved,
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
    required TResult Function(CharChosen value) charChosen,
    required TResult Function(CharRemoved value) charRemoved,
  }) {
    return nextWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(NextWord value)? nextWord,
    TResult? Function(CharChosen value)? charChosen,
    TResult? Function(CharRemoved value)? charRemoved,
  }) {
    return nextWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NextWord value)? nextWord,
    TResult Function(CharChosen value)? charChosen,
    TResult Function(CharRemoved value)? charRemoved,
    required TResult orElse(),
  }) {
    if (nextWord != null) {
      return nextWord(this);
    }
    return orElse();
  }
}

abstract class NextWord implements ExerciseAlphabetSoupEvent {
  const factory NextWord() = _$NextWord;
}

/// @nodoc
abstract class _$$CharChosenCopyWith<$Res> {
  factory _$$CharChosenCopyWith(
          _$CharChosen value, $Res Function(_$CharChosen) then) =
      __$$CharChosenCopyWithImpl<$Res>;
  @useResult
  $Res call({Pair<UniqueId, String> pairChar});
}

/// @nodoc
class __$$CharChosenCopyWithImpl<$Res>
    extends _$ExerciseAlphabetSoupEventCopyWithImpl<$Res, _$CharChosen>
    implements _$$CharChosenCopyWith<$Res> {
  __$$CharChosenCopyWithImpl(
      _$CharChosen _value, $Res Function(_$CharChosen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pairChar = null,
  }) {
    return _then(_$CharChosen(
      null == pairChar
          ? _value.pairChar
          : pairChar // ignore: cast_nullable_to_non_nullable
              as Pair<UniqueId, String>,
    ));
  }
}

/// @nodoc

class _$CharChosen implements CharChosen {
  const _$CharChosen(this.pairChar);

  @override
  final Pair<UniqueId, String> pairChar;

  @override
  String toString() {
    return 'ExerciseAlphabetSoupEvent.charChosen(pairChar: $pairChar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharChosen &&
            (identical(other.pairChar, pairChar) ||
                other.pairChar == pairChar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pairChar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharChosenCopyWith<_$CharChosen> get copyWith =>
      __$$CharChosenCopyWithImpl<_$CharChosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextWord,
    required TResult Function(Pair<UniqueId, String> pairChar) charChosen,
    required TResult Function() charRemoved,
  }) {
    return charChosen(pairChar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextWord,
    TResult? Function(Pair<UniqueId, String> pairChar)? charChosen,
    TResult? Function()? charRemoved,
  }) {
    return charChosen?.call(pairChar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextWord,
    TResult Function(Pair<UniqueId, String> pairChar)? charChosen,
    TResult Function()? charRemoved,
    required TResult orElse(),
  }) {
    if (charChosen != null) {
      return charChosen(pairChar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(NextWord value) nextWord,
    required TResult Function(CharChosen value) charChosen,
    required TResult Function(CharRemoved value) charRemoved,
  }) {
    return charChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(NextWord value)? nextWord,
    TResult? Function(CharChosen value)? charChosen,
    TResult? Function(CharRemoved value)? charRemoved,
  }) {
    return charChosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NextWord value)? nextWord,
    TResult Function(CharChosen value)? charChosen,
    TResult Function(CharRemoved value)? charRemoved,
    required TResult orElse(),
  }) {
    if (charChosen != null) {
      return charChosen(this);
    }
    return orElse();
  }
}

abstract class CharChosen implements ExerciseAlphabetSoupEvent {
  const factory CharChosen(final Pair<UniqueId, String> pairChar) =
      _$CharChosen;

  Pair<UniqueId, String> get pairChar;
  @JsonKey(ignore: true)
  _$$CharChosenCopyWith<_$CharChosen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharRemovedCopyWith<$Res> {
  factory _$$CharRemovedCopyWith(
          _$CharRemoved value, $Res Function(_$CharRemoved) then) =
      __$$CharRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharRemovedCopyWithImpl<$Res>
    extends _$ExerciseAlphabetSoupEventCopyWithImpl<$Res, _$CharRemoved>
    implements _$$CharRemovedCopyWith<$Res> {
  __$$CharRemovedCopyWithImpl(
      _$CharRemoved _value, $Res Function(_$CharRemoved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharRemoved implements CharRemoved {
  const _$CharRemoved();

  @override
  String toString() {
    return 'ExerciseAlphabetSoupEvent.charRemoved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CharRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() nextWord,
    required TResult Function(Pair<UniqueId, String> pairChar) charChosen,
    required TResult Function() charRemoved,
  }) {
    return charRemoved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? nextWord,
    TResult? Function(Pair<UniqueId, String> pairChar)? charChosen,
    TResult? Function()? charRemoved,
  }) {
    return charRemoved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? nextWord,
    TResult Function(Pair<UniqueId, String> pairChar)? charChosen,
    TResult Function()? charRemoved,
    required TResult orElse(),
  }) {
    if (charRemoved != null) {
      return charRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(NextWord value) nextWord,
    required TResult Function(CharChosen value) charChosen,
    required TResult Function(CharRemoved value) charRemoved,
  }) {
    return charRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(NextWord value)? nextWord,
    TResult? Function(CharChosen value)? charChosen,
    TResult? Function(CharRemoved value)? charRemoved,
  }) {
    return charRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NextWord value)? nextWord,
    TResult Function(CharChosen value)? charChosen,
    TResult Function(CharRemoved value)? charRemoved,
    required TResult orElse(),
  }) {
    if (charRemoved != null) {
      return charRemoved(this);
    }
    return orElse();
  }
}

abstract class CharRemoved implements ExerciseAlphabetSoupEvent {
  const factory CharRemoved() = _$CharRemoved;
}

/// @nodoc
mixin _$ExerciseAlphabetSoupState {
  bool get isFinished => throw _privateConstructorUsedError;
  bool get showNextButton => throw _privateConstructorUsedError;
  bool get wordConstructionError => throw _privateConstructorUsedError;
  bool get wordFinished => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  List<UniqueId> get usedChars => throw _privateConstructorUsedError;
  LanguageDirection get languageDirection => throw _privateConstructorUsedError;
  List<Pair<WordModel, List<Pair<UniqueId, String>>>> get letters =>
      throw _privateConstructorUsedError;
  String get constructedWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseAlphabetSoupStateCopyWith<ExerciseAlphabetSoupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseAlphabetSoupStateCopyWith<$Res> {
  factory $ExerciseAlphabetSoupStateCopyWith(ExerciseAlphabetSoupState value,
          $Res Function(ExerciseAlphabetSoupState) then) =
      _$ExerciseAlphabetSoupStateCopyWithImpl<$Res, ExerciseAlphabetSoupState>;
  @useResult
  $Res call(
      {bool isFinished,
      bool showNextButton,
      bool wordConstructionError,
      bool wordFinished,
      int position,
      List<UniqueId> usedChars,
      LanguageDirection languageDirection,
      List<Pair<WordModel, List<Pair<UniqueId, String>>>> letters,
      String constructedWord});

  $LanguageDirectionCopyWith<$Res> get languageDirection;
}

/// @nodoc
class _$ExerciseAlphabetSoupStateCopyWithImpl<$Res,
        $Val extends ExerciseAlphabetSoupState>
    implements $ExerciseAlphabetSoupStateCopyWith<$Res> {
  _$ExerciseAlphabetSoupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFinished = null,
    Object? showNextButton = null,
    Object? wordConstructionError = null,
    Object? wordFinished = null,
    Object? position = null,
    Object? usedChars = null,
    Object? languageDirection = null,
    Object? letters = null,
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
      wordConstructionError: null == wordConstructionError
          ? _value.wordConstructionError
          : wordConstructionError // ignore: cast_nullable_to_non_nullable
              as bool,
      wordFinished: null == wordFinished
          ? _value.wordFinished
          : wordFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      usedChars: null == usedChars
          ? _value.usedChars
          : usedChars // ignore: cast_nullable_to_non_nullable
              as List<UniqueId>,
      languageDirection: null == languageDirection
          ? _value.languageDirection
          : languageDirection // ignore: cast_nullable_to_non_nullable
              as LanguageDirection,
      letters: null == letters
          ? _value.letters
          : letters // ignore: cast_nullable_to_non_nullable
              as List<Pair<WordModel, List<Pair<UniqueId, String>>>>,
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
abstract class _$$_ExerciseAlphabetSoupStateCopyWith<$Res>
    implements $ExerciseAlphabetSoupStateCopyWith<$Res> {
  factory _$$_ExerciseAlphabetSoupStateCopyWith(
          _$_ExerciseAlphabetSoupState value,
          $Res Function(_$_ExerciseAlphabetSoupState) then) =
      __$$_ExerciseAlphabetSoupStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFinished,
      bool showNextButton,
      bool wordConstructionError,
      bool wordFinished,
      int position,
      List<UniqueId> usedChars,
      LanguageDirection languageDirection,
      List<Pair<WordModel, List<Pair<UniqueId, String>>>> letters,
      String constructedWord});

  @override
  $LanguageDirectionCopyWith<$Res> get languageDirection;
}

/// @nodoc
class __$$_ExerciseAlphabetSoupStateCopyWithImpl<$Res>
    extends _$ExerciseAlphabetSoupStateCopyWithImpl<$Res,
        _$_ExerciseAlphabetSoupState>
    implements _$$_ExerciseAlphabetSoupStateCopyWith<$Res> {
  __$$_ExerciseAlphabetSoupStateCopyWithImpl(
      _$_ExerciseAlphabetSoupState _value,
      $Res Function(_$_ExerciseAlphabetSoupState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFinished = null,
    Object? showNextButton = null,
    Object? wordConstructionError = null,
    Object? wordFinished = null,
    Object? position = null,
    Object? usedChars = null,
    Object? languageDirection = null,
    Object? letters = null,
    Object? constructedWord = null,
  }) {
    return _then(_$_ExerciseAlphabetSoupState(
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      showNextButton: null == showNextButton
          ? _value.showNextButton
          : showNextButton // ignore: cast_nullable_to_non_nullable
              as bool,
      wordConstructionError: null == wordConstructionError
          ? _value.wordConstructionError
          : wordConstructionError // ignore: cast_nullable_to_non_nullable
              as bool,
      wordFinished: null == wordFinished
          ? _value.wordFinished
          : wordFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      usedChars: null == usedChars
          ? _value._usedChars
          : usedChars // ignore: cast_nullable_to_non_nullable
              as List<UniqueId>,
      languageDirection: null == languageDirection
          ? _value.languageDirection
          : languageDirection // ignore: cast_nullable_to_non_nullable
              as LanguageDirection,
      letters: null == letters
          ? _value._letters
          : letters // ignore: cast_nullable_to_non_nullable
              as List<Pair<WordModel, List<Pair<UniqueId, String>>>>,
      constructedWord: null == constructedWord
          ? _value.constructedWord
          : constructedWord // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExerciseAlphabetSoupState implements _ExerciseAlphabetSoupState {
  _$_ExerciseAlphabetSoupState(
      {this.isFinished = false,
      this.showNextButton = false,
      this.wordConstructionError = false,
      this.wordFinished = false,
      this.position = 0,
      final List<UniqueId> usedChars = const [],
      required this.languageDirection,
      required final List<Pair<WordModel, List<Pair<UniqueId, String>>>>
          letters,
      this.constructedWord = ""})
      : _usedChars = usedChars,
        _letters = letters;

  @override
  @JsonKey()
  final bool isFinished;
  @override
  @JsonKey()
  final bool showNextButton;
  @override
  @JsonKey()
  final bool wordConstructionError;
  @override
  @JsonKey()
  final bool wordFinished;
  @override
  @JsonKey()
  final int position;
  final List<UniqueId> _usedChars;
  @override
  @JsonKey()
  List<UniqueId> get usedChars {
    if (_usedChars is EqualUnmodifiableListView) return _usedChars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usedChars);
  }

  @override
  final LanguageDirection languageDirection;
  final List<Pair<WordModel, List<Pair<UniqueId, String>>>> _letters;
  @override
  List<Pair<WordModel, List<Pair<UniqueId, String>>>> get letters {
    if (_letters is EqualUnmodifiableListView) return _letters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_letters);
  }

  @override
  @JsonKey()
  final String constructedWord;

  @override
  String toString() {
    return 'ExerciseAlphabetSoupState(isFinished: $isFinished, showNextButton: $showNextButton, wordConstructionError: $wordConstructionError, wordFinished: $wordFinished, position: $position, usedChars: $usedChars, languageDirection: $languageDirection, letters: $letters, constructedWord: $constructedWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseAlphabetSoupState &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.showNextButton, showNextButton) ||
                other.showNextButton == showNextButton) &&
            (identical(other.wordConstructionError, wordConstructionError) ||
                other.wordConstructionError == wordConstructionError) &&
            (identical(other.wordFinished, wordFinished) ||
                other.wordFinished == wordFinished) &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality()
                .equals(other._usedChars, _usedChars) &&
            (identical(other.languageDirection, languageDirection) ||
                other.languageDirection == languageDirection) &&
            const DeepCollectionEquality().equals(other._letters, _letters) &&
            (identical(other.constructedWord, constructedWord) ||
                other.constructedWord == constructedWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isFinished,
      showNextButton,
      wordConstructionError,
      wordFinished,
      position,
      const DeepCollectionEquality().hash(_usedChars),
      languageDirection,
      const DeepCollectionEquality().hash(_letters),
      constructedWord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseAlphabetSoupStateCopyWith<_$_ExerciseAlphabetSoupState>
      get copyWith => __$$_ExerciseAlphabetSoupStateCopyWithImpl<
          _$_ExerciseAlphabetSoupState>(this, _$identity);
}

abstract class _ExerciseAlphabetSoupState implements ExerciseAlphabetSoupState {
  factory _ExerciseAlphabetSoupState(
      {final bool isFinished,
      final bool showNextButton,
      final bool wordConstructionError,
      final bool wordFinished,
      final int position,
      final List<UniqueId> usedChars,
      required final LanguageDirection languageDirection,
      required final List<Pair<WordModel, List<Pair<UniqueId, String>>>>
          letters,
      final String constructedWord}) = _$_ExerciseAlphabetSoupState;

  @override
  bool get isFinished;
  @override
  bool get showNextButton;
  @override
  bool get wordConstructionError;
  @override
  bool get wordFinished;
  @override
  int get position;
  @override
  List<UniqueId> get usedChars;
  @override
  LanguageDirection get languageDirection;
  @override
  List<Pair<WordModel, List<Pair<UniqueId, String>>>> get letters;
  @override
  String get constructedWord;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseAlphabetSoupStateCopyWith<_$_ExerciseAlphabetSoupState>
      get copyWith => throw _privateConstructorUsedError;
}
