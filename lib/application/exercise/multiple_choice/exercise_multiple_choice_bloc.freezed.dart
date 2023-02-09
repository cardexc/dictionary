// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_multiple_choice_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseMultipleChoiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(WordModel wordModel) optionChosen,
    required TResult Function() nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(WordModel wordModel)? optionChosen,
    TResult? Function()? nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(WordModel wordModel)? optionChosen,
    TResult Function()? nextWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OptionChosen value) optionChosen,
    required TResult Function(NextWord value) nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OptionChosen value)? optionChosen,
    TResult? Function(NextWord value)? nextWord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OptionChosen value)? optionChosen,
    TResult Function(NextWord value)? nextWord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseMultipleChoiceEventCopyWith<$Res> {
  factory $ExerciseMultipleChoiceEventCopyWith(
          ExerciseMultipleChoiceEvent value,
          $Res Function(ExerciseMultipleChoiceEvent) then) =
      _$ExerciseMultipleChoiceEventCopyWithImpl<$Res,
          ExerciseMultipleChoiceEvent>;
}

/// @nodoc
class _$ExerciseMultipleChoiceEventCopyWithImpl<$Res,
        $Val extends ExerciseMultipleChoiceEvent>
    implements $ExerciseMultipleChoiceEventCopyWith<$Res> {
  _$ExerciseMultipleChoiceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$ExerciseMultipleChoiceEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'ExerciseMultipleChoiceEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(WordModel wordModel) optionChosen,
    required TResult Function() nextWord,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(WordModel wordModel)? optionChosen,
    TResult? Function()? nextWord,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(WordModel wordModel)? optionChosen,
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
    required TResult Function(Started value) started,
    required TResult Function(OptionChosen value) optionChosen,
    required TResult Function(NextWord value) nextWord,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OptionChosen value)? optionChosen,
    TResult? Function(NextWord value)? nextWord,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
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

abstract class Started implements ExerciseMultipleChoiceEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$OptionChosenCopyWith<$Res> {
  factory _$$OptionChosenCopyWith(
          _$OptionChosen value, $Res Function(_$OptionChosen) then) =
      __$$OptionChosenCopyWithImpl<$Res>;
  @useResult
  $Res call({WordModel wordModel});

  $WordModelCopyWith<$Res> get wordModel;
}

/// @nodoc
class __$$OptionChosenCopyWithImpl<$Res>
    extends _$ExerciseMultipleChoiceEventCopyWithImpl<$Res, _$OptionChosen>
    implements _$$OptionChosenCopyWith<$Res> {
  __$$OptionChosenCopyWithImpl(
      _$OptionChosen _value, $Res Function(_$OptionChosen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordModel = null,
  }) {
    return _then(_$OptionChosen(
      null == wordModel
          ? _value.wordModel
          : wordModel // ignore: cast_nullable_to_non_nullable
              as WordModel,
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
  const _$OptionChosen(this.wordModel);

  @override
  final WordModel wordModel;

  @override
  String toString() {
    return 'ExerciseMultipleChoiceEvent.optionChosen(wordModel: $wordModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionChosen &&
            (identical(other.wordModel, wordModel) ||
                other.wordModel == wordModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wordModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionChosenCopyWith<_$OptionChosen> get copyWith =>
      __$$OptionChosenCopyWithImpl<_$OptionChosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(WordModel wordModel) optionChosen,
    required TResult Function() nextWord,
  }) {
    return optionChosen(wordModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(WordModel wordModel)? optionChosen,
    TResult? Function()? nextWord,
  }) {
    return optionChosen?.call(wordModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(WordModel wordModel)? optionChosen,
    TResult Function()? nextWord,
    required TResult orElse(),
  }) {
    if (optionChosen != null) {
      return optionChosen(wordModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OptionChosen value) optionChosen,
    required TResult Function(NextWord value) nextWord,
  }) {
    return optionChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OptionChosen value)? optionChosen,
    TResult? Function(NextWord value)? nextWord,
  }) {
    return optionChosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
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

abstract class OptionChosen implements ExerciseMultipleChoiceEvent {
  const factory OptionChosen(final WordModel wordModel) = _$OptionChosen;

  WordModel get wordModel;
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
    extends _$ExerciseMultipleChoiceEventCopyWithImpl<$Res, _$NextWord>
    implements _$$NextWordCopyWith<$Res> {
  __$$NextWordCopyWithImpl(_$NextWord _value, $Res Function(_$NextWord) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextWord implements NextWord {
  const _$NextWord();

  @override
  String toString() {
    return 'ExerciseMultipleChoiceEvent.nextWord()';
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
    required TResult Function(WordModel wordModel) optionChosen,
    required TResult Function() nextWord,
  }) {
    return nextWord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(WordModel wordModel)? optionChosen,
    TResult? Function()? nextWord,
  }) {
    return nextWord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(WordModel wordModel)? optionChosen,
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
    required TResult Function(Started value) started,
    required TResult Function(OptionChosen value) optionChosen,
    required TResult Function(NextWord value) nextWord,
  }) {
    return nextWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(OptionChosen value)? optionChosen,
    TResult? Function(NextWord value)? nextWord,
  }) {
    return nextWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
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

abstract class NextWord implements ExerciseMultipleChoiceEvent {
  const factory NextWord() = _$NextWord;
}

/// @nodoc
mixin _$ExerciseMultipleChoiceState {
  bool get isFinished => throw _privateConstructorUsedError;
  bool get showNextButton => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  List<Pair<WordModel, List<WordModel>>> get collection =>
      throw _privateConstructorUsedError;
  LanguageDirection get languageDirection => throw _privateConstructorUsedError;
  WordModel? get wordChosen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseMultipleChoiceStateCopyWith<ExerciseMultipleChoiceState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseMultipleChoiceStateCopyWith<$Res> {
  factory $ExerciseMultipleChoiceStateCopyWith(
          ExerciseMultipleChoiceState value,
          $Res Function(ExerciseMultipleChoiceState) then) =
      _$ExerciseMultipleChoiceStateCopyWithImpl<$Res,
          ExerciseMultipleChoiceState>;
  @useResult
  $Res call(
      {bool isFinished,
      bool showNextButton,
      int position,
      List<Pair<WordModel, List<WordModel>>> collection,
      LanguageDirection languageDirection,
      WordModel? wordChosen});

  $LanguageDirectionCopyWith<$Res> get languageDirection;
  $WordModelCopyWith<$Res>? get wordChosen;
}

/// @nodoc
class _$ExerciseMultipleChoiceStateCopyWithImpl<$Res,
        $Val extends ExerciseMultipleChoiceState>
    implements $ExerciseMultipleChoiceStateCopyWith<$Res> {
  _$ExerciseMultipleChoiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFinished = null,
    Object? showNextButton = null,
    Object? position = null,
    Object? collection = null,
    Object? languageDirection = null,
    Object? wordChosen = freezed,
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
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as List<Pair<WordModel, List<WordModel>>>,
      languageDirection: null == languageDirection
          ? _value.languageDirection
          : languageDirection // ignore: cast_nullable_to_non_nullable
              as LanguageDirection,
      wordChosen: freezed == wordChosen
          ? _value.wordChosen
          : wordChosen // ignore: cast_nullable_to_non_nullable
              as WordModel?,
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
  $WordModelCopyWith<$Res>? get wordChosen {
    if (_value.wordChosen == null) {
      return null;
    }

    return $WordModelCopyWith<$Res>(_value.wordChosen!, (value) {
      return _then(_value.copyWith(wordChosen: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExerciseMultipleChoiceStateCopyWith<$Res>
    implements $ExerciseMultipleChoiceStateCopyWith<$Res> {
  factory _$$_ExerciseMultipleChoiceStateCopyWith(
          _$_ExerciseMultipleChoiceState value,
          $Res Function(_$_ExerciseMultipleChoiceState) then) =
      __$$_ExerciseMultipleChoiceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFinished,
      bool showNextButton,
      int position,
      List<Pair<WordModel, List<WordModel>>> collection,
      LanguageDirection languageDirection,
      WordModel? wordChosen});

  @override
  $LanguageDirectionCopyWith<$Res> get languageDirection;
  @override
  $WordModelCopyWith<$Res>? get wordChosen;
}

/// @nodoc
class __$$_ExerciseMultipleChoiceStateCopyWithImpl<$Res>
    extends _$ExerciseMultipleChoiceStateCopyWithImpl<$Res,
        _$_ExerciseMultipleChoiceState>
    implements _$$_ExerciseMultipleChoiceStateCopyWith<$Res> {
  __$$_ExerciseMultipleChoiceStateCopyWithImpl(
      _$_ExerciseMultipleChoiceState _value,
      $Res Function(_$_ExerciseMultipleChoiceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFinished = null,
    Object? showNextButton = null,
    Object? position = null,
    Object? collection = null,
    Object? languageDirection = null,
    Object? wordChosen = freezed,
  }) {
    return _then(_$_ExerciseMultipleChoiceState(
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
      showNextButton: null == showNextButton
          ? _value.showNextButton
          : showNextButton // ignore: cast_nullable_to_non_nullable
              as bool,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      collection: null == collection
          ? _value._collection
          : collection // ignore: cast_nullable_to_non_nullable
              as List<Pair<WordModel, List<WordModel>>>,
      languageDirection: null == languageDirection
          ? _value.languageDirection
          : languageDirection // ignore: cast_nullable_to_non_nullable
              as LanguageDirection,
      wordChosen: freezed == wordChosen
          ? _value.wordChosen
          : wordChosen // ignore: cast_nullable_to_non_nullable
              as WordModel?,
    ));
  }
}

/// @nodoc

class _$_ExerciseMultipleChoiceState implements _ExerciseMultipleChoiceState {
  _$_ExerciseMultipleChoiceState(
      {this.isFinished = false,
      this.showNextButton = false,
      required this.position,
      required final List<Pair<WordModel, List<WordModel>>> collection,
      required this.languageDirection,
      this.wordChosen})
      : _collection = collection;

  @override
  @JsonKey()
  final bool isFinished;
  @override
  @JsonKey()
  final bool showNextButton;
  @override
  final int position;
  final List<Pair<WordModel, List<WordModel>>> _collection;
  @override
  List<Pair<WordModel, List<WordModel>>> get collection {
    if (_collection is EqualUnmodifiableListView) return _collection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collection);
  }

  @override
  final LanguageDirection languageDirection;
  @override
  final WordModel? wordChosen;

  @override
  String toString() {
    return 'ExerciseMultipleChoiceState(isFinished: $isFinished, showNextButton: $showNextButton, position: $position, collection: $collection, languageDirection: $languageDirection, wordChosen: $wordChosen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExerciseMultipleChoiceState &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished) &&
            (identical(other.showNextButton, showNextButton) ||
                other.showNextButton == showNextButton) &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality()
                .equals(other._collection, _collection) &&
            (identical(other.languageDirection, languageDirection) ||
                other.languageDirection == languageDirection) &&
            (identical(other.wordChosen, wordChosen) ||
                other.wordChosen == wordChosen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isFinished,
      showNextButton,
      position,
      const DeepCollectionEquality().hash(_collection),
      languageDirection,
      wordChosen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExerciseMultipleChoiceStateCopyWith<_$_ExerciseMultipleChoiceState>
      get copyWith => __$$_ExerciseMultipleChoiceStateCopyWithImpl<
          _$_ExerciseMultipleChoiceState>(this, _$identity);
}

abstract class _ExerciseMultipleChoiceState
    implements ExerciseMultipleChoiceState {
  factory _ExerciseMultipleChoiceState(
      {final bool isFinished,
      final bool showNextButton,
      required final int position,
      required final List<Pair<WordModel, List<WordModel>>> collection,
      required final LanguageDirection languageDirection,
      final WordModel? wordChosen}) = _$_ExerciseMultipleChoiceState;

  @override
  bool get isFinished;
  @override
  bool get showNextButton;
  @override
  int get position;
  @override
  List<Pair<WordModel, List<WordModel>>> get collection;
  @override
  LanguageDirection get languageDirection;
  @override
  WordModel? get wordChosen;
  @override
  @JsonKey(ignore: true)
  _$$_ExerciseMultipleChoiceStateCopyWith<_$_ExerciseMultipleChoiceState>
      get copyWith => throw _privateConstructorUsedError;
}
