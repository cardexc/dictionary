// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_matchmaker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseMatchmakerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(WordModel wordModel, int column) optionChosen,
    required TResult Function() nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(WordModel wordModel, int column)? optionChosen,
    TResult? Function()? nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(WordModel wordModel, int column)? optionChosen,
    TResult Function()? nextWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExerciseMatchmakerEventStart value) started,
    required TResult Function(OptionChosen value) optionChosen,
    required TResult Function(NextWord value) nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExerciseMatchmakerEventStart value)? started,
    TResult? Function(OptionChosen value)? optionChosen,
    TResult? Function(NextWord value)? nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExerciseMatchmakerEventStart value)? started,
    TResult Function(OptionChosen value)? optionChosen,
    TResult Function(NextWord value)? nextWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseMatchmakerEventCopyWith<$Res> {
  factory $ExerciseMatchmakerEventCopyWith(ExerciseMatchmakerEvent value,
          $Res Function(ExerciseMatchmakerEvent) then) =
      _$ExerciseMatchmakerEventCopyWithImpl<$Res, ExerciseMatchmakerEvent>;
}

/// @nodoc
class _$ExerciseMatchmakerEventCopyWithImpl<$Res,
        $Val extends ExerciseMatchmakerEvent>
    implements $ExerciseMatchmakerEventCopyWith<$Res> {
  _$ExerciseMatchmakerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExerciseMatchmakerEventStartCopyWith<$Res> {
  factory _$$ExerciseMatchmakerEventStartCopyWith(
          _$ExerciseMatchmakerEventStart value,
          $Res Function(_$ExerciseMatchmakerEventStart) then) =
      __$$ExerciseMatchmakerEventStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExerciseMatchmakerEventStartCopyWithImpl<$Res>
    extends _$ExerciseMatchmakerEventCopyWithImpl<$Res,
        _$ExerciseMatchmakerEventStart>
    implements _$$ExerciseMatchmakerEventStartCopyWith<$Res> {
  __$$ExerciseMatchmakerEventStartCopyWithImpl(
      _$ExerciseMatchmakerEventStart _value,
      $Res Function(_$ExerciseMatchmakerEventStart) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExerciseMatchmakerEventStart implements ExerciseMatchmakerEventStart {
  const _$ExerciseMatchmakerEventStart();

  @override
  String toString() {
    return 'ExerciseMatchmakerEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseMatchmakerEventStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(WordModel wordModel, int column) optionChosen,
    required TResult Function() nextWord,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(WordModel wordModel, int column)? optionChosen,
    TResult? Function()? nextWord,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(WordModel wordModel, int column)? optionChosen,
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
    required TResult Function(ExerciseMatchmakerEventStart value) started,
    required TResult Function(OptionChosen value) optionChosen,
    required TResult Function(NextWord value) nextWord,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExerciseMatchmakerEventStart value)? started,
    TResult? Function(OptionChosen value)? optionChosen,
    TResult? Function(NextWord value)? nextWord,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExerciseMatchmakerEventStart value)? started,
    TResult Function(OptionChosen value)? optionChosen,
    TResult Function(NextWord value)? nextWord,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ExerciseMatchmakerEventStart implements ExerciseMatchmakerEvent {
  const factory ExerciseMatchmakerEventStart() = _$ExerciseMatchmakerEventStart;
}

/// @nodoc
abstract class _$$OptionChosenCopyWith<$Res> {
  factory _$$OptionChosenCopyWith(
          _$OptionChosen value, $Res Function(_$OptionChosen) then) =
      __$$OptionChosenCopyWithImpl<$Res>;
  @useResult
  $Res call({WordModel wordModel, int column});

  $WordModelCopyWith<$Res> get wordModel;
}

/// @nodoc
class __$$OptionChosenCopyWithImpl<$Res>
    extends _$ExerciseMatchmakerEventCopyWithImpl<$Res, _$OptionChosen>
    implements _$$OptionChosenCopyWith<$Res> {
  __$$OptionChosenCopyWithImpl(
      _$OptionChosen _value, $Res Function(_$OptionChosen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordModel = null,
    Object? column = null,
  }) {
    return _then(_$OptionChosen(
      null == wordModel
          ? _value.wordModel
          : wordModel // ignore: cast_nullable_to_non_nullable
              as WordModel,
      null == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WordModelCopyWith<$Res> get wordModel {
    return $WordModelCopyWith<$Res>(_value.wordModel, (value) {
      return _then(_value.copyWith(wordModel: value));
    });
  }
}

/// @nodoc

class _$OptionChosen implements OptionChosen {
  const _$OptionChosen(this.wordModel, this.column);

  @override
  final WordModel wordModel;
  @override
  final int column;

  @override
  String toString() {
    return 'ExerciseMatchmakerEvent.optionChosen(wordModel: $wordModel, column: $column)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionChosen &&
            (identical(other.wordModel, wordModel) ||
                other.wordModel == wordModel) &&
            (identical(other.column, column) || other.column == column));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wordModel, column);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionChosenCopyWith<_$OptionChosen> get copyWith =>
      __$$OptionChosenCopyWithImpl<_$OptionChosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(WordModel wordModel, int column) optionChosen,
    required TResult Function() nextWord,
  }) {
    return optionChosen(wordModel, column);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(WordModel wordModel, int column)? optionChosen,
    TResult? Function()? nextWord,
  }) {
    return optionChosen?.call(wordModel, column);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(WordModel wordModel, int column)? optionChosen,
    TResult Function()? nextWord,
    required TResult orElse(),
  }) {
    if (optionChosen != null) {
      return optionChosen(wordModel, column);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExerciseMatchmakerEventStart value) started,
    required TResult Function(OptionChosen value) optionChosen,
    required TResult Function(NextWord value) nextWord,
  }) {
    return optionChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExerciseMatchmakerEventStart value)? started,
    TResult? Function(OptionChosen value)? optionChosen,
    TResult? Function(NextWord value)? nextWord,
  }) {
    return optionChosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExerciseMatchmakerEventStart value)? started,
    TResult Function(OptionChosen value)? optionChosen,
    TResult Function(NextWord value)? nextWord,
    required TResult orElse(),
  }) {
    if (optionChosen != null) {
      return optionChosen(this);
    }
    return orElse();
  }
}

abstract class OptionChosen implements ExerciseMatchmakerEvent {
  const factory OptionChosen(final WordModel wordModel, final int column) =
      _$OptionChosen;

  WordModel get wordModel;
  int get column;
  @JsonKey(ignore: true)
  _$$OptionChosenCopyWith<_$OptionChosen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextWordCopyWith<$Res> {
  factory _$$NextWordCopyWith(
          _$NextWord value, $Res Function(_$NextWord) then) =
      __$$NextWordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextWordCopyWithImpl<$Res>
    extends _$ExerciseMatchmakerEventCopyWithImpl<$Res, _$NextWord>
    implements _$$NextWordCopyWith<$Res> {
  __$$NextWordCopyWithImpl(_$NextWord _value, $Res Function(_$NextWord) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextWord implements NextWord {
  const _$NextWord();

  @override
  String toString() {
    return 'ExerciseMatchmakerEvent.nextWord()';
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
    required TResult Function(WordModel wordModel, int column) optionChosen,
    required TResult Function() nextWord,
  }) {
    return nextWord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(WordModel wordModel, int column)? optionChosen,
    TResult? Function()? nextWord,
  }) {
    return nextWord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(WordModel wordModel, int column)? optionChosen,
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
    required TResult Function(ExerciseMatchmakerEventStart value) started,
    required TResult Function(OptionChosen value) optionChosen,
    required TResult Function(NextWord value) nextWord,
  }) {
    return nextWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExerciseMatchmakerEventStart value)? started,
    TResult? Function(OptionChosen value)? optionChosen,
    TResult? Function(NextWord value)? nextWord,
  }) {
    return nextWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExerciseMatchmakerEventStart value)? started,
    TResult Function(OptionChosen value)? optionChosen,
    TResult Function(NextWord value)? nextWord,
    required TResult orElse(),
  }) {
    if (nextWord != null) {
      return nextWord(this);
    }
    return orElse();
  }
}

abstract class NextWord implements ExerciseMatchmakerEvent {
  const factory NextWord() = _$NextWord;
}

/// @nodoc
mixin _$ExerciseMatchmakerState {
  bool get isFinished => throw _privateConstructorUsedError;
  bool get showNextButton => throw _privateConstructorUsedError;
  int get correctWords => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  Pair<List<WordModel>, List<WordModel>> get collectionToDisplayPair =>
      throw _privateConstructorUsedError;
  LanguageDirection get languageDirection => throw _privateConstructorUsedError;
  List<WordModel> get matchedWords => throw _privateConstructorUsedError;
  Color? get highlightColor => throw _privateConstructorUsedError;
  WordModel? get wordChosenFirst => throw _privateConstructorUsedError;
  WordModel? get wordChosenSecond => throw _privateConstructorUsedError;
  int? get firstWordColumn => throw _privateConstructorUsedError;
  int? get secondWordColumn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseMatchmakerStateCopyWith<ExerciseMatchmakerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseMatchmakerStateCopyWith<$Res> {
  factory $ExerciseMatchmakerStateCopyWith(ExerciseMatchmakerState value,
          $Res Function(ExerciseMatchmakerState) then) =
      _$ExerciseMatchmakerStateCopyWithImpl<$Res, ExerciseMatchmakerState>;
  @useResult
  $Res call(
      {bool isFinished,
      bool showNextButton,
      int correctWords,
      int page,
      Pair<List<WordModel>, List<WordModel>> collectionToDisplayPair,
      LanguageDirection languageDirection,
      List<WordModel> matchedWords,
      Color? highlightColor,
      WordModel? wordChosenFirst,
      WordModel? wordChosenSecond,
      int? firstWordColumn,
      int? secondWordColumn});

  $LanguageDirectionCopyWith<$Res> get languageDirection;
  $WordModelCopyWith<$Res>? get wordChosenFirst;
  $WordModelCopyWith<$Res>? get wordChosenSecond;
}

/// @nodoc
class _$ExerciseMatchmakerStateCopyWithImpl<$Res,
        $Val extends ExerciseMatchmakerState>
    implements $ExerciseMatchmakerStateCopyWith<$Res> {
  _$ExerciseMatchmakerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFinished = null,
    Object? showNextButton = null,
    Object? correctWords = null,
    Object? page = null,
    Object? collectionToDisplayPair = null,
    Object? languageDirection = null,
    Object? matchedWords = null,
    Object? highlightColor = freezed,
    Object? wordChosenFirst = freezed,
    Object? wordChosenSecond = freezed,
    Object? firstWordColumn = freezed,
    Object? secondWordColumn = freezed,
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
      correctWords: null == correctWords
          ? _value.correctWords
          : correctWords // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      collectionToDisplayPair: null == collectionToDisplayPair
          ? _value.collectionToDisplayPair
          : collectionToDisplayPair // ignore: cast_nullable_to_non_nullable
              as Pair<List<WordModel>, List<WordModel>>,
      languageDirection: null == languageDirection
          ? _value.languageDirection
          : languageDirection // ignore: cast_nullable_to_non_nullable
              as LanguageDirection,
      matchedWords: null == matchedWords
          ? _value.matchedWords
          : matchedWords // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
      highlightColor: freezed == highlightColor
          ? _value.highlightColor
          : highlightColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      wordChosenFirst: freezed == wordChosenFirst
          ? _value.wordChosenFirst
          : wordChosenFirst // ignore: cast_nullable_to_non_nullable
              as WordModel?,
      wordChosenSecond: freezed == wordChosenSecond
          ? _value.wordChosenSecond
          : wordChosenSecond // ignore: cast_nullable_to_non_nullable
              as WordModel?,
      firstWordColumn: freezed == firstWordColumn
          ? _value.firstWordColumn
          : firstWordColumn // ignore: cast_nullable_to_non_nullable
              as int?,
      secondWordColumn: freezed == secondWordColumn
          ? _value.secondWordColumn
          : secondWordColumn // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageDirectionCopyWith<$Res> get languageDirection {
    return $LanguageDirectionCopyWith<$Res>(_value.languageDirection, (value) {
      return _then(_value.copyWith(languageDirection: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WordModelCopyWith<$Res>? get wordChosenFirst {
    if (_value.wordChosenFirst == null) {
      return null;
    }

    return $WordModelCopyWith<$Res>(_value.wordChosenFirst!, (value) {
      return _then(_value.copyWith(wordChosenFirst: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WordModelCopyWith<$Res>? get wordChosenSecond {
    if (_value.wordChosenSecond == null) {
      return null;
    }

    return $WordModelCopyWith<$Res>(_value.wordChosenSecond!, (value) {
      return _then(_value.copyWith(wordChosenSecond: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExerciseMatchmakerStateCopyWith<$Res>
    implements $ExerciseMatchmakerStateCopyWith<$Res> {
  factory _$$_ExerciseMatchmakerStateCopyWith(_$_ExerciseMatchmakerState value,
          $Res Function(_$_ExerciseMatchmakerState) then) =
      __$$_ExerciseMatchmakerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFinished,
      bool showNextButton,
      int correctWords,
      int page,
      Pair<List<WordModel>, List<WordModel>> collectionToDisplayPair,
      LanguageDirection languageDirection,
      List<WordModel> matchedWords,
      Color? highlightColor,
      WordModel? wordChosenFirst,
      WordModel? wordChosenSecond,
      int? firstWordColumn,
      int? secondWordColumn});

  @override
  $LanguageDirectionCopyWith<$Res> get languageDirection;
  @override
  $WordModelCopyWith<$Res>? get wordChosenFirst;
  @override
  $WordModelCopyWith<$Res>? get wordChosenSecond;
}

/// @nodoc
class __$$_ExerciseMatchmakerStateCopyWithImpl<$Res>
    extends _$ExerciseMatchmakerStateCopyWithImpl<$Res,
        _$_ExerciseMatchmakerState>
    implements _$$_ExerciseMatchmakerStateCopyWith<$Res> {
  __$$_ExerciseMatchmakerStateCopyWithImpl(_$_ExerciseMatchmakerState _value,
      $Res Function(_$_ExerciseMatchmakerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFinished = null,
    Object? showNextButton = null,
    Object? correctWords = null,
    Object? page = null,
    Object? collectionToDisplayPair = null,
    Object? languageDirection = null,
    Object? matchedWords = null,
    Object? highlightColor = freezed,
    Object? wordChosenFirst = freezed,
    Object? wordChosenSecond = freezed,
    Object? firstWordColumn = freezed,
    Object? secondWordColumn = freezed,
  }) {
    return _then(_$_ExerciseMatchmakerState(
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      showNextButton: null == showNextButton
          ? _value.showNextButton
          : showNextButton // ignore: cast_nullable_to_non_nullable
              as bool,
      correctWords: null == correctWords
          ? _value.correctWords
          : correctWords // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      collectionToDisplayPair: null == collectionToDisplayPair
          ? _value.collectionToDisplayPair
          : collectionToDisplayPair // ignore: cast_nullable_to_non_nullable
              as Pair<List<WordModel>, List<WordModel>>,
      languageDirection: null == languageDirection
          ? _value.languageDirection
          : languageDirection // ignore: cast_nullable_to_non_nullable
              as LanguageDirection,
      matchedWords: null == matchedWords
          ? _value._matchedWords
          : matchedWords // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
      highlightColor: freezed == highlightColor
          ? _value.highlightColor
          : highlightColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      wordChosenFirst: freezed == wordChosenFirst
          ? _value.wordChosenFirst
          : wordChosenFirst // ignore: cast_nullable_to_non_nullable
              as WordModel?,
      wordChosenSecond: freezed == wordChosenSecond
          ? _value.wordChosenSecond
          : wordChosenSecond // ignore: cast_nullable_to_non_nullable
              as WordModel?,
      firstWordColumn: freezed == firstWordColumn
          ? _value.firstWordColumn
          : firstWordColumn // ignore: cast_nullable_to_non_nullable
              as int?,
      secondWordColumn: freezed == secondWordColumn
          ? _value.secondWordColumn
          : secondWordColumn // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ExerciseMatchmakerState implements _ExerciseMatchmakerState {
  _$_ExerciseMatchmakerState(
      {this.isFinished = false,
      this.showNextButton = false,
      this.correctWords = 0,
      required this.page,
      required this.collectionToDisplayPair,
      required this.languageDirection,
      required final List<WordModel> matchedWords,
      this.highlightColor,
      this.wordChosenFirst,
      this.wordChosenSecond,
      this.firstWordColumn,
      this.secondWordColumn})
      : _matchedWords = matchedWords;

  @override
  @JsonKey()
  final bool isFinished;
  @override
  @JsonKey()
  final bool showNextButton;
  @override
  @JsonKey()
  final int correctWords;
  @override
  final int page;
  @override
  final Pair<List<WordModel>, List<WordModel>> collectionToDisplayPair;
  @override
  final LanguageDirection languageDirection;
  final List<WordModel> _matchedWords;
  @override
  List<WordModel> get matchedWords {
    if (_matchedWords is EqualUnmodifiableListView) return _matchedWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matchedWords);
  }

  @override
  final Color? highlightColor;
  @override
  final WordModel? wordChosenFirst;
  @override
  final WordModel? wordChosenSecond;
  @override
  final int? firstWordColumn;
  @override
  final int? secondWordColumn;

  @override
  String toString() {
    return 'ExerciseMatchmakerState(isFinished: $isFinished, showNextButton: $showNextButton, correctWords: $correctWords, page: $page, collectionToDisplayPair: $collectionToDisplayPair, languageDirection: $languageDirection, matchedWords: $matchedWords, highlightColor: $highlightColor, wordChosenFirst: $wordChosenFirst, wordChosenSecond: $wordChosenSecond, firstWordColumn: $firstWordColumn, secondWordColumn: $secondWordColumn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseMatchmakerState &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.showNextButton, showNextButton) ||
                other.showNextButton == showNextButton) &&
            (identical(other.correctWords, correctWords) ||
                other.correctWords == correctWords) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(
                    other.collectionToDisplayPair, collectionToDisplayPair) ||
                other.collectionToDisplayPair == collectionToDisplayPair) &&
            (identical(other.languageDirection, languageDirection) ||
                other.languageDirection == languageDirection) &&
            const DeepCollectionEquality()
                .equals(other._matchedWords, _matchedWords) &&
            (identical(other.highlightColor, highlightColor) ||
                other.highlightColor == highlightColor) &&
            (identical(other.wordChosenFirst, wordChosenFirst) ||
                other.wordChosenFirst == wordChosenFirst) &&
            (identical(other.wordChosenSecond, wordChosenSecond) ||
                other.wordChosenSecond == wordChosenSecond) &&
            (identical(other.firstWordColumn, firstWordColumn) ||
                other.firstWordColumn == firstWordColumn) &&
            (identical(other.secondWordColumn, secondWordColumn) ||
                other.secondWordColumn == secondWordColumn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isFinished,
      showNextButton,
      correctWords,
      page,
      collectionToDisplayPair,
      languageDirection,
      const DeepCollectionEquality().hash(_matchedWords),
      highlightColor,
      wordChosenFirst,
      wordChosenSecond,
      firstWordColumn,
      secondWordColumn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseMatchmakerStateCopyWith<_$_ExerciseMatchmakerState>
      get copyWith =>
          __$$_ExerciseMatchmakerStateCopyWithImpl<_$_ExerciseMatchmakerState>(
              this, _$identity);
}

abstract class _ExerciseMatchmakerState implements ExerciseMatchmakerState {
  factory _ExerciseMatchmakerState(
      {final bool isFinished,
      final bool showNextButton,
      final int correctWords,
      required final int page,
      required final Pair<List<WordModel>, List<WordModel>>
          collectionToDisplayPair,
      required final LanguageDirection languageDirection,
      required final List<WordModel> matchedWords,
      final Color? highlightColor,
      final WordModel? wordChosenFirst,
      final WordModel? wordChosenSecond,
      final int? firstWordColumn,
      final int? secondWordColumn}) = _$_ExerciseMatchmakerState;

  @override
  bool get isFinished;
  @override
  bool get showNextButton;
  @override
  int get correctWords;
  @override
  int get page;
  @override
  Pair<List<WordModel>, List<WordModel>> get collectionToDisplayPair;
  @override
  LanguageDirection get languageDirection;
  @override
  List<WordModel> get matchedWords;
  @override
  Color? get highlightColor;
  @override
  WordModel? get wordChosenFirst;
  @override
  WordModel? get wordChosenSecond;
  @override
  int? get firstWordColumn;
  @override
  int? get secondWordColumn;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseMatchmakerStateCopyWith<_$_ExerciseMatchmakerState>
      get copyWith => throw _privateConstructorUsedError;
}
