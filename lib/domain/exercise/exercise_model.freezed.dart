// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExerciseModel {
  IconData get iconData => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  ExerciseType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        flashcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        scratchcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        multipleChoice,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        matchMaker,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        alphabetSoup,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        writing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        writing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        writing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Flashcards value) flashcards,
    required TResult Function(ScratchCards value) scratchcards,
    required TResult Function(MultipleChoice value) multipleChoice,
    required TResult Function(MatchMaker value) matchMaker,
    required TResult Function(AlphabetSoup value) alphabetSoup,
    required TResult Function(Writing value) writing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Flashcards value)? flashcards,
    TResult? Function(ScratchCards value)? scratchcards,
    TResult? Function(MultipleChoice value)? multipleChoice,
    TResult? Function(MatchMaker value)? matchMaker,
    TResult? Function(AlphabetSoup value)? alphabetSoup,
    TResult? Function(Writing value)? writing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Flashcards value)? flashcards,
    TResult Function(ScratchCards value)? scratchcards,
    TResult Function(MultipleChoice value)? multipleChoice,
    TResult Function(MatchMaker value)? matchMaker,
    TResult Function(AlphabetSoup value)? alphabetSoup,
    TResult Function(Writing value)? writing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseModelCopyWith<ExerciseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseModelCopyWith<$Res> {
  factory $ExerciseModelCopyWith(
          ExerciseModel value, $Res Function(ExerciseModel) then) =
      _$ExerciseModelCopyWithImpl<$Res, ExerciseModel>;
  @useResult
  $Res call({IconData iconData, String title, ExerciseType type});
}

/// @nodoc
class _$ExerciseModelCopyWithImpl<$Res, $Val extends ExerciseModel>
    implements $ExerciseModelCopyWith<$Res> {
  _$ExerciseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconData = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashcardsCopyWith<$Res>
    implements $ExerciseModelCopyWith<$Res> {
  factory _$$FlashcardsCopyWith(
          _$Flashcards value, $Res Function(_$Flashcards) then) =
      __$$FlashcardsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData iconData, String title, ExerciseType type});
}

/// @nodoc
class __$$FlashcardsCopyWithImpl<$Res>
    extends _$ExerciseModelCopyWithImpl<$Res, _$Flashcards>
    implements _$$FlashcardsCopyWith<$Res> {
  __$$FlashcardsCopyWithImpl(
      _$Flashcards _value, $Res Function(_$Flashcards) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconData = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_$Flashcards(
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
    ));
  }
}

/// @nodoc

class _$Flashcards implements Flashcards {
  _$Flashcards(
      {this.iconData = CupertinoIcons.headphones,
      required this.title,
      this.type = ExerciseType.flashcards});

  @override
  @JsonKey()
  final IconData iconData;
  @override
  final String title;
  @override
  @JsonKey()
  final ExerciseType type;

  @override
  String toString() {
    return 'ExerciseModel.flashcards(iconData: $iconData, title: $title, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Flashcards &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iconData, title, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashcardsCopyWith<_$Flashcards> get copyWith =>
      __$$FlashcardsCopyWithImpl<_$Flashcards>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        flashcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        scratchcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        multipleChoice,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        matchMaker,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        alphabetSoup,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        writing,
  }) {
    return flashcards(iconData, title, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        writing,
  }) {
    return flashcards?.call(iconData, title, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        writing,
    required TResult orElse(),
  }) {
    if (flashcards != null) {
      return flashcards(iconData, title, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Flashcards value) flashcards,
    required TResult Function(ScratchCards value) scratchcards,
    required TResult Function(MultipleChoice value) multipleChoice,
    required TResult Function(MatchMaker value) matchMaker,
    required TResult Function(AlphabetSoup value) alphabetSoup,
    required TResult Function(Writing value) writing,
  }) {
    return flashcards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Flashcards value)? flashcards,
    TResult? Function(ScratchCards value)? scratchcards,
    TResult? Function(MultipleChoice value)? multipleChoice,
    TResult? Function(MatchMaker value)? matchMaker,
    TResult? Function(AlphabetSoup value)? alphabetSoup,
    TResult? Function(Writing value)? writing,
  }) {
    return flashcards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Flashcards value)? flashcards,
    TResult Function(ScratchCards value)? scratchcards,
    TResult Function(MultipleChoice value)? multipleChoice,
    TResult Function(MatchMaker value)? matchMaker,
    TResult Function(AlphabetSoup value)? alphabetSoup,
    TResult Function(Writing value)? writing,
    required TResult orElse(),
  }) {
    if (flashcards != null) {
      return flashcards(this);
    }
    return orElse();
  }
}

abstract class Flashcards implements ExerciseModel {
  factory Flashcards(
      {final IconData iconData,
      required final String title,
      final ExerciseType type}) = _$Flashcards;

  @override
  IconData get iconData;
  @override
  String get title;
  @override
  ExerciseType get type;
  @override
  @JsonKey(ignore: true)
  _$$FlashcardsCopyWith<_$Flashcards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScratchCardsCopyWith<$Res>
    implements $ExerciseModelCopyWith<$Res> {
  factory _$$ScratchCardsCopyWith(
          _$ScratchCards value, $Res Function(_$ScratchCards) then) =
      __$$ScratchCardsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData iconData, String title, ExerciseType type});
}

/// @nodoc
class __$$ScratchCardsCopyWithImpl<$Res>
    extends _$ExerciseModelCopyWithImpl<$Res, _$ScratchCards>
    implements _$$ScratchCardsCopyWith<$Res> {
  __$$ScratchCardsCopyWithImpl(
      _$ScratchCards _value, $Res Function(_$ScratchCards) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconData = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_$ScratchCards(
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
    ));
  }
}

/// @nodoc

class _$ScratchCards implements ScratchCards {
  _$ScratchCards(
      {this.iconData = CupertinoIcons.hand_draw,
      required this.title,
      this.type = ExerciseType.scratchcards});

  @override
  @JsonKey()
  final IconData iconData;
  @override
  final String title;
  @override
  @JsonKey()
  final ExerciseType type;

  @override
  String toString() {
    return 'ExerciseModel.scratchcards(iconData: $iconData, title: $title, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScratchCards &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iconData, title, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScratchCardsCopyWith<_$ScratchCards> get copyWith =>
      __$$ScratchCardsCopyWithImpl<_$ScratchCards>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        flashcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        scratchcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        multipleChoice,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        matchMaker,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        alphabetSoup,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        writing,
  }) {
    return scratchcards(iconData, title, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        writing,
  }) {
    return scratchcards?.call(iconData, title, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        writing,
    required TResult orElse(),
  }) {
    if (scratchcards != null) {
      return scratchcards(iconData, title, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Flashcards value) flashcards,
    required TResult Function(ScratchCards value) scratchcards,
    required TResult Function(MultipleChoice value) multipleChoice,
    required TResult Function(MatchMaker value) matchMaker,
    required TResult Function(AlphabetSoup value) alphabetSoup,
    required TResult Function(Writing value) writing,
  }) {
    return scratchcards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Flashcards value)? flashcards,
    TResult? Function(ScratchCards value)? scratchcards,
    TResult? Function(MultipleChoice value)? multipleChoice,
    TResult? Function(MatchMaker value)? matchMaker,
    TResult? Function(AlphabetSoup value)? alphabetSoup,
    TResult? Function(Writing value)? writing,
  }) {
    return scratchcards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Flashcards value)? flashcards,
    TResult Function(ScratchCards value)? scratchcards,
    TResult Function(MultipleChoice value)? multipleChoice,
    TResult Function(MatchMaker value)? matchMaker,
    TResult Function(AlphabetSoup value)? alphabetSoup,
    TResult Function(Writing value)? writing,
    required TResult orElse(),
  }) {
    if (scratchcards != null) {
      return scratchcards(this);
    }
    return orElse();
  }
}

abstract class ScratchCards implements ExerciseModel {
  factory ScratchCards(
      {final IconData iconData,
      required final String title,
      final ExerciseType type}) = _$ScratchCards;

  @override
  IconData get iconData;
  @override
  String get title;
  @override
  ExerciseType get type;
  @override
  @JsonKey(ignore: true)
  _$$ScratchCardsCopyWith<_$ScratchCards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultipleChoiceCopyWith<$Res>
    implements $ExerciseModelCopyWith<$Res> {
  factory _$$MultipleChoiceCopyWith(
          _$MultipleChoice value, $Res Function(_$MultipleChoice) then) =
      __$$MultipleChoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData iconData, String title, ExerciseType type});
}

/// @nodoc
class __$$MultipleChoiceCopyWithImpl<$Res>
    extends _$ExerciseModelCopyWithImpl<$Res, _$MultipleChoice>
    implements _$$MultipleChoiceCopyWith<$Res> {
  __$$MultipleChoiceCopyWithImpl(
      _$MultipleChoice _value, $Res Function(_$MultipleChoice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconData = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_$MultipleChoice(
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
    ));
  }
}

/// @nodoc

class _$MultipleChoice implements MultipleChoice {
  _$MultipleChoice(
      {this.iconData = CupertinoIcons.square_grid_2x2,
      required this.title,
      this.type = ExerciseType.multipleChoice});

  @override
  @JsonKey()
  final IconData iconData;
  @override
  final String title;
  @override
  @JsonKey()
  final ExerciseType type;

  @override
  String toString() {
    return 'ExerciseModel.multipleChoice(iconData: $iconData, title: $title, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultipleChoice &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iconData, title, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultipleChoiceCopyWith<_$MultipleChoice> get copyWith =>
      __$$MultipleChoiceCopyWithImpl<_$MultipleChoice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        flashcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        scratchcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        multipleChoice,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        matchMaker,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        alphabetSoup,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        writing,
  }) {
    return multipleChoice(iconData, title, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        writing,
  }) {
    return multipleChoice?.call(iconData, title, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        writing,
    required TResult orElse(),
  }) {
    if (multipleChoice != null) {
      return multipleChoice(iconData, title, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Flashcards value) flashcards,
    required TResult Function(ScratchCards value) scratchcards,
    required TResult Function(MultipleChoice value) multipleChoice,
    required TResult Function(MatchMaker value) matchMaker,
    required TResult Function(AlphabetSoup value) alphabetSoup,
    required TResult Function(Writing value) writing,
  }) {
    return multipleChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Flashcards value)? flashcards,
    TResult? Function(ScratchCards value)? scratchcards,
    TResult? Function(MultipleChoice value)? multipleChoice,
    TResult? Function(MatchMaker value)? matchMaker,
    TResult? Function(AlphabetSoup value)? alphabetSoup,
    TResult? Function(Writing value)? writing,
  }) {
    return multipleChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Flashcards value)? flashcards,
    TResult Function(ScratchCards value)? scratchcards,
    TResult Function(MultipleChoice value)? multipleChoice,
    TResult Function(MatchMaker value)? matchMaker,
    TResult Function(AlphabetSoup value)? alphabetSoup,
    TResult Function(Writing value)? writing,
    required TResult orElse(),
  }) {
    if (multipleChoice != null) {
      return multipleChoice(this);
    }
    return orElse();
  }
}

abstract class MultipleChoice implements ExerciseModel {
  factory MultipleChoice(
      {final IconData iconData,
      required final String title,
      final ExerciseType type}) = _$MultipleChoice;

  @override
  IconData get iconData;
  @override
  String get title;
  @override
  ExerciseType get type;
  @override
  @JsonKey(ignore: true)
  _$$MultipleChoiceCopyWith<_$MultipleChoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MatchMakerCopyWith<$Res>
    implements $ExerciseModelCopyWith<$Res> {
  factory _$$MatchMakerCopyWith(
          _$MatchMaker value, $Res Function(_$MatchMaker) then) =
      __$$MatchMakerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData iconData, String title, ExerciseType type});
}

/// @nodoc
class __$$MatchMakerCopyWithImpl<$Res>
    extends _$ExerciseModelCopyWithImpl<$Res, _$MatchMaker>
    implements _$$MatchMakerCopyWith<$Res> {
  __$$MatchMakerCopyWithImpl(
      _$MatchMaker _value, $Res Function(_$MatchMaker) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconData = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_$MatchMaker(
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
    ));
  }
}

/// @nodoc

class _$MatchMaker implements MatchMaker {
  _$MatchMaker(
      {this.iconData = CupertinoIcons.arrow_branch,
      required this.title,
      this.type = ExerciseType.matchMaker});

  @override
  @JsonKey()
  final IconData iconData;
  @override
  final String title;
  @override
  @JsonKey()
  final ExerciseType type;

  @override
  String toString() {
    return 'ExerciseModel.matchMaker(iconData: $iconData, title: $title, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchMaker &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iconData, title, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchMakerCopyWith<_$MatchMaker> get copyWith =>
      __$$MatchMakerCopyWithImpl<_$MatchMaker>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        flashcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        scratchcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        multipleChoice,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        matchMaker,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        alphabetSoup,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        writing,
  }) {
    return matchMaker(iconData, title, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        writing,
  }) {
    return matchMaker?.call(iconData, title, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        writing,
    required TResult orElse(),
  }) {
    if (matchMaker != null) {
      return matchMaker(iconData, title, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Flashcards value) flashcards,
    required TResult Function(ScratchCards value) scratchcards,
    required TResult Function(MultipleChoice value) multipleChoice,
    required TResult Function(MatchMaker value) matchMaker,
    required TResult Function(AlphabetSoup value) alphabetSoup,
    required TResult Function(Writing value) writing,
  }) {
    return matchMaker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Flashcards value)? flashcards,
    TResult? Function(ScratchCards value)? scratchcards,
    TResult? Function(MultipleChoice value)? multipleChoice,
    TResult? Function(MatchMaker value)? matchMaker,
    TResult? Function(AlphabetSoup value)? alphabetSoup,
    TResult? Function(Writing value)? writing,
  }) {
    return matchMaker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Flashcards value)? flashcards,
    TResult Function(ScratchCards value)? scratchcards,
    TResult Function(MultipleChoice value)? multipleChoice,
    TResult Function(MatchMaker value)? matchMaker,
    TResult Function(AlphabetSoup value)? alphabetSoup,
    TResult Function(Writing value)? writing,
    required TResult orElse(),
  }) {
    if (matchMaker != null) {
      return matchMaker(this);
    }
    return orElse();
  }
}

abstract class MatchMaker implements ExerciseModel {
  factory MatchMaker(
      {final IconData iconData,
      required final String title,
      final ExerciseType type}) = _$MatchMaker;

  @override
  IconData get iconData;
  @override
  String get title;
  @override
  ExerciseType get type;
  @override
  @JsonKey(ignore: true)
  _$$MatchMakerCopyWith<_$MatchMaker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlphabetSoupCopyWith<$Res>
    implements $ExerciseModelCopyWith<$Res> {
  factory _$$AlphabetSoupCopyWith(
          _$AlphabetSoup value, $Res Function(_$AlphabetSoup) then) =
      __$$AlphabetSoupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData iconData, String title, ExerciseType type});
}

/// @nodoc
class __$$AlphabetSoupCopyWithImpl<$Res>
    extends _$ExerciseModelCopyWithImpl<$Res, _$AlphabetSoup>
    implements _$$AlphabetSoupCopyWith<$Res> {
  __$$AlphabetSoupCopyWithImpl(
      _$AlphabetSoup _value, $Res Function(_$AlphabetSoup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconData = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_$AlphabetSoup(
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
    ));
  }
}

/// @nodoc

class _$AlphabetSoup implements AlphabetSoup {
  _$AlphabetSoup(
      {this.iconData = CupertinoIcons.arrow_swap,
      required this.title,
      this.type = ExerciseType.alphabetSoup});

  @override
  @JsonKey()
  final IconData iconData;
  @override
  final String title;
  @override
  @JsonKey()
  final ExerciseType type;

  @override
  String toString() {
    return 'ExerciseModel.alphabetSoup(iconData: $iconData, title: $title, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlphabetSoup &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iconData, title, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlphabetSoupCopyWith<_$AlphabetSoup> get copyWith =>
      __$$AlphabetSoupCopyWithImpl<_$AlphabetSoup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        flashcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        scratchcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        multipleChoice,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        matchMaker,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        alphabetSoup,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        writing,
  }) {
    return alphabetSoup(iconData, title, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        writing,
  }) {
    return alphabetSoup?.call(iconData, title, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        writing,
    required TResult orElse(),
  }) {
    if (alphabetSoup != null) {
      return alphabetSoup(iconData, title, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Flashcards value) flashcards,
    required TResult Function(ScratchCards value) scratchcards,
    required TResult Function(MultipleChoice value) multipleChoice,
    required TResult Function(MatchMaker value) matchMaker,
    required TResult Function(AlphabetSoup value) alphabetSoup,
    required TResult Function(Writing value) writing,
  }) {
    return alphabetSoup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Flashcards value)? flashcards,
    TResult? Function(ScratchCards value)? scratchcards,
    TResult? Function(MultipleChoice value)? multipleChoice,
    TResult? Function(MatchMaker value)? matchMaker,
    TResult? Function(AlphabetSoup value)? alphabetSoup,
    TResult? Function(Writing value)? writing,
  }) {
    return alphabetSoup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Flashcards value)? flashcards,
    TResult Function(ScratchCards value)? scratchcards,
    TResult Function(MultipleChoice value)? multipleChoice,
    TResult Function(MatchMaker value)? matchMaker,
    TResult Function(AlphabetSoup value)? alphabetSoup,
    TResult Function(Writing value)? writing,
    required TResult orElse(),
  }) {
    if (alphabetSoup != null) {
      return alphabetSoup(this);
    }
    return orElse();
  }
}

abstract class AlphabetSoup implements ExerciseModel {
  factory AlphabetSoup(
      {final IconData iconData,
      required final String title,
      final ExerciseType type}) = _$AlphabetSoup;

  @override
  IconData get iconData;
  @override
  String get title;
  @override
  ExerciseType get type;
  @override
  @JsonKey(ignore: true)
  _$$AlphabetSoupCopyWith<_$AlphabetSoup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WritingCopyWith<$Res>
    implements $ExerciseModelCopyWith<$Res> {
  factory _$$WritingCopyWith(_$Writing value, $Res Function(_$Writing) then) =
      __$$WritingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData iconData, String title, ExerciseType type});
}

/// @nodoc
class __$$WritingCopyWithImpl<$Res>
    extends _$ExerciseModelCopyWithImpl<$Res, _$Writing>
    implements _$$WritingCopyWith<$Res> {
  __$$WritingCopyWithImpl(_$Writing _value, $Res Function(_$Writing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconData = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_$Writing(
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ExerciseType,
    ));
  }
}

/// @nodoc

class _$Writing implements Writing {
  _$Writing(
      {this.iconData = CupertinoIcons.pencil_slash,
      required this.title,
      this.type = ExerciseType.writing});

  @override
  @JsonKey()
  final IconData iconData;
  @override
  final String title;
  @override
  @JsonKey()
  final ExerciseType type;

  @override
  String toString() {
    return 'ExerciseModel.writing(iconData: $iconData, title: $title, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Writing &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iconData, title, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WritingCopyWith<_$Writing> get copyWith =>
      __$$WritingCopyWithImpl<_$Writing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        flashcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        scratchcards,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        multipleChoice,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        matchMaker,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        alphabetSoup,
    required TResult Function(
            IconData iconData, String title, ExerciseType type)
        writing,
  }) {
    return writing(iconData, title, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult? Function(IconData iconData, String title, ExerciseType type)?
        writing,
  }) {
    return writing?.call(iconData, title, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IconData iconData, String title, ExerciseType type)?
        flashcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        scratchcards,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        multipleChoice,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        matchMaker,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        alphabetSoup,
    TResult Function(IconData iconData, String title, ExerciseType type)?
        writing,
    required TResult orElse(),
  }) {
    if (writing != null) {
      return writing(iconData, title, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Flashcards value) flashcards,
    required TResult Function(ScratchCards value) scratchcards,
    required TResult Function(MultipleChoice value) multipleChoice,
    required TResult Function(MatchMaker value) matchMaker,
    required TResult Function(AlphabetSoup value) alphabetSoup,
    required TResult Function(Writing value) writing,
  }) {
    return writing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Flashcards value)? flashcards,
    TResult? Function(ScratchCards value)? scratchcards,
    TResult? Function(MultipleChoice value)? multipleChoice,
    TResult? Function(MatchMaker value)? matchMaker,
    TResult? Function(AlphabetSoup value)? alphabetSoup,
    TResult? Function(Writing value)? writing,
  }) {
    return writing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Flashcards value)? flashcards,
    TResult Function(ScratchCards value)? scratchcards,
    TResult Function(MultipleChoice value)? multipleChoice,
    TResult Function(MatchMaker value)? matchMaker,
    TResult Function(AlphabetSoup value)? alphabetSoup,
    TResult Function(Writing value)? writing,
    required TResult orElse(),
  }) {
    if (writing != null) {
      return writing(this);
    }
    return orElse();
  }
}

abstract class Writing implements ExerciseModel {
  factory Writing(
      {final IconData iconData,
      required final String title,
      final ExerciseType type}) = _$Writing;

  @override
  IconData get iconData;
  @override
  String get title;
  @override
  ExerciseType get type;
  @override
  @JsonKey(ignore: true)
  _$$WritingCopyWith<_$Writing> get copyWith =>
      throw _privateConstructorUsedError;
}
