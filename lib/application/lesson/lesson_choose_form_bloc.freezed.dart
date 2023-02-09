// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_choose_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LessonChooseFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool newValue) selectAllSwitchToggled,
    required TResult Function(WordModel model) updateWordItem,
    required TResult Function(bool newValue) changeSelectionMode,
    required TResult Function(String value) searchByPattern,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool newValue)? selectAllSwitchToggled,
    TResult? Function(WordModel model)? updateWordItem,
    TResult? Function(bool newValue)? changeSelectionMode,
    TResult? Function(String value)? searchByPattern,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool newValue)? selectAllSwitchToggled,
    TResult Function(WordModel model)? updateWordItem,
    TResult Function(bool newValue)? changeSelectionMode,
    TResult Function(String value)? searchByPattern,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectAllSwitchToggled value)
        selectAllSwitchToggled,
    required TResult Function(_UpdateWordItem value) updateWordItem,
    required TResult Function(_ChangeSelectionMode value) changeSelectionMode,
    required TResult Function(SearchByPattern value) searchByPattern,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectAllSwitchToggled value)? selectAllSwitchToggled,
    TResult? Function(_UpdateWordItem value)? updateWordItem,
    TResult? Function(_ChangeSelectionMode value)? changeSelectionMode,
    TResult? Function(SearchByPattern value)? searchByPattern,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectAllSwitchToggled value)? selectAllSwitchToggled,
    TResult Function(_UpdateWordItem value)? updateWordItem,
    TResult Function(_ChangeSelectionMode value)? changeSelectionMode,
    TResult Function(SearchByPattern value)? searchByPattern,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonChooseFormEventCopyWith<$Res> {
  factory $LessonChooseFormEventCopyWith(LessonChooseFormEvent value,
          $Res Function(LessonChooseFormEvent) then) =
      _$LessonChooseFormEventCopyWithImpl<$Res, LessonChooseFormEvent>;
}

/// @nodoc
class _$LessonChooseFormEventCopyWithImpl<$Res,
        $Val extends LessonChooseFormEvent>
    implements $LessonChooseFormEventCopyWith<$Res> {
  _$LessonChooseFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SelectAllSwitchToggledCopyWith<$Res> {
  factory _$$_SelectAllSwitchToggledCopyWith(_$_SelectAllSwitchToggled value,
          $Res Function(_$_SelectAllSwitchToggled) then) =
      __$$_SelectAllSwitchToggledCopyWithImpl<$Res>;
  @useResult
  $Res call({bool newValue});
}

/// @nodoc
class __$$_SelectAllSwitchToggledCopyWithImpl<$Res>
    extends _$LessonChooseFormEventCopyWithImpl<$Res, _$_SelectAllSwitchToggled>
    implements _$$_SelectAllSwitchToggledCopyWith<$Res> {
  __$$_SelectAllSwitchToggledCopyWithImpl(_$_SelectAllSwitchToggled _value,
      $Res Function(_$_SelectAllSwitchToggled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = null,
  }) {
    return _then(_$_SelectAllSwitchToggled(
      null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SelectAllSwitchToggled implements _SelectAllSwitchToggled {
  const _$_SelectAllSwitchToggled(this.newValue);

  @override
  final bool newValue;

  @override
  String toString() {
    return 'LessonChooseFormEvent.selectAllSwitchToggled(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectAllSwitchToggled &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectAllSwitchToggledCopyWith<_$_SelectAllSwitchToggled> get copyWith =>
      __$$_SelectAllSwitchToggledCopyWithImpl<_$_SelectAllSwitchToggled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool newValue) selectAllSwitchToggled,
    required TResult Function(WordModel model) updateWordItem,
    required TResult Function(bool newValue) changeSelectionMode,
    required TResult Function(String value) searchByPattern,
  }) {
    return selectAllSwitchToggled(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool newValue)? selectAllSwitchToggled,
    TResult? Function(WordModel model)? updateWordItem,
    TResult? Function(bool newValue)? changeSelectionMode,
    TResult? Function(String value)? searchByPattern,
  }) {
    return selectAllSwitchToggled?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool newValue)? selectAllSwitchToggled,
    TResult Function(WordModel model)? updateWordItem,
    TResult Function(bool newValue)? changeSelectionMode,
    TResult Function(String value)? searchByPattern,
    required TResult orElse(),
  }) {
    if (selectAllSwitchToggled != null) {
      return selectAllSwitchToggled(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectAllSwitchToggled value)
        selectAllSwitchToggled,
    required TResult Function(_UpdateWordItem value) updateWordItem,
    required TResult Function(_ChangeSelectionMode value) changeSelectionMode,
    required TResult Function(SearchByPattern value) searchByPattern,
  }) {
    return selectAllSwitchToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectAllSwitchToggled value)? selectAllSwitchToggled,
    TResult? Function(_UpdateWordItem value)? updateWordItem,
    TResult? Function(_ChangeSelectionMode value)? changeSelectionMode,
    TResult? Function(SearchByPattern value)? searchByPattern,
  }) {
    return selectAllSwitchToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectAllSwitchToggled value)? selectAllSwitchToggled,
    TResult Function(_UpdateWordItem value)? updateWordItem,
    TResult Function(_ChangeSelectionMode value)? changeSelectionMode,
    TResult Function(SearchByPattern value)? searchByPattern,
    required TResult orElse(),
  }) {
    if (selectAllSwitchToggled != null) {
      return selectAllSwitchToggled(this);
    }
    return orElse();
  }
}

abstract class _SelectAllSwitchToggled implements LessonChooseFormEvent {
  const factory _SelectAllSwitchToggled(final bool newValue) =
      _$_SelectAllSwitchToggled;

  bool get newValue;
  @JsonKey(ignore: true)
  _$$_SelectAllSwitchToggledCopyWith<_$_SelectAllSwitchToggled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateWordItemCopyWith<$Res> {
  factory _$$_UpdateWordItemCopyWith(
          _$_UpdateWordItem value, $Res Function(_$_UpdateWordItem) then) =
      __$$_UpdateWordItemCopyWithImpl<$Res>;
  @useResult
  $Res call({WordModel model});

  $WordModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_UpdateWordItemCopyWithImpl<$Res>
    extends _$LessonChooseFormEventCopyWithImpl<$Res, _$_UpdateWordItem>
    implements _$$_UpdateWordItemCopyWith<$Res> {
  __$$_UpdateWordItemCopyWithImpl(
      _$_UpdateWordItem _value, $Res Function(_$_UpdateWordItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_UpdateWordItem(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as WordModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WordModelCopyWith<$Res> get model {
    return $WordModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$_UpdateWordItem implements _UpdateWordItem {
  const _$_UpdateWordItem(this.model);

  @override
  final WordModel model;

  @override
  String toString() {
    return 'LessonChooseFormEvent.updateWordItem(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateWordItem &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateWordItemCopyWith<_$_UpdateWordItem> get copyWith =>
      __$$_UpdateWordItemCopyWithImpl<_$_UpdateWordItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool newValue) selectAllSwitchToggled,
    required TResult Function(WordModel model) updateWordItem,
    required TResult Function(bool newValue) changeSelectionMode,
    required TResult Function(String value) searchByPattern,
  }) {
    return updateWordItem(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool newValue)? selectAllSwitchToggled,
    TResult? Function(WordModel model)? updateWordItem,
    TResult? Function(bool newValue)? changeSelectionMode,
    TResult? Function(String value)? searchByPattern,
  }) {
    return updateWordItem?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool newValue)? selectAllSwitchToggled,
    TResult Function(WordModel model)? updateWordItem,
    TResult Function(bool newValue)? changeSelectionMode,
    TResult Function(String value)? searchByPattern,
    required TResult orElse(),
  }) {
    if (updateWordItem != null) {
      return updateWordItem(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectAllSwitchToggled value)
        selectAllSwitchToggled,
    required TResult Function(_UpdateWordItem value) updateWordItem,
    required TResult Function(_ChangeSelectionMode value) changeSelectionMode,
    required TResult Function(SearchByPattern value) searchByPattern,
  }) {
    return updateWordItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectAllSwitchToggled value)? selectAllSwitchToggled,
    TResult? Function(_UpdateWordItem value)? updateWordItem,
    TResult? Function(_ChangeSelectionMode value)? changeSelectionMode,
    TResult? Function(SearchByPattern value)? searchByPattern,
  }) {
    return updateWordItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectAllSwitchToggled value)? selectAllSwitchToggled,
    TResult Function(_UpdateWordItem value)? updateWordItem,
    TResult Function(_ChangeSelectionMode value)? changeSelectionMode,
    TResult Function(SearchByPattern value)? searchByPattern,
    required TResult orElse(),
  }) {
    if (updateWordItem != null) {
      return updateWordItem(this);
    }
    return orElse();
  }
}

abstract class _UpdateWordItem implements LessonChooseFormEvent {
  const factory _UpdateWordItem(final WordModel model) = _$_UpdateWordItem;

  WordModel get model;
  @JsonKey(ignore: true)
  _$$_UpdateWordItemCopyWith<_$_UpdateWordItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeSelectionModeCopyWith<$Res> {
  factory _$$_ChangeSelectionModeCopyWith(_$_ChangeSelectionMode value,
          $Res Function(_$_ChangeSelectionMode) then) =
      __$$_ChangeSelectionModeCopyWithImpl<$Res>;
  @useResult
  $Res call({bool newValue});
}

/// @nodoc
class __$$_ChangeSelectionModeCopyWithImpl<$Res>
    extends _$LessonChooseFormEventCopyWithImpl<$Res, _$_ChangeSelectionMode>
    implements _$$_ChangeSelectionModeCopyWith<$Res> {
  __$$_ChangeSelectionModeCopyWithImpl(_$_ChangeSelectionMode _value,
      $Res Function(_$_ChangeSelectionMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newValue = null,
  }) {
    return _then(_$_ChangeSelectionMode(
      null == newValue
          ? _value.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangeSelectionMode implements _ChangeSelectionMode {
  const _$_ChangeSelectionMode(this.newValue);

  @override
  final bool newValue;

  @override
  String toString() {
    return 'LessonChooseFormEvent.changeSelectionMode(newValue: $newValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeSelectionMode &&
            (identical(other.newValue, newValue) ||
                other.newValue == newValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeSelectionModeCopyWith<_$_ChangeSelectionMode> get copyWith =>
      __$$_ChangeSelectionModeCopyWithImpl<_$_ChangeSelectionMode>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool newValue) selectAllSwitchToggled,
    required TResult Function(WordModel model) updateWordItem,
    required TResult Function(bool newValue) changeSelectionMode,
    required TResult Function(String value) searchByPattern,
  }) {
    return changeSelectionMode(newValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool newValue)? selectAllSwitchToggled,
    TResult? Function(WordModel model)? updateWordItem,
    TResult? Function(bool newValue)? changeSelectionMode,
    TResult? Function(String value)? searchByPattern,
  }) {
    return changeSelectionMode?.call(newValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool newValue)? selectAllSwitchToggled,
    TResult Function(WordModel model)? updateWordItem,
    TResult Function(bool newValue)? changeSelectionMode,
    TResult Function(String value)? searchByPattern,
    required TResult orElse(),
  }) {
    if (changeSelectionMode != null) {
      return changeSelectionMode(newValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectAllSwitchToggled value)
        selectAllSwitchToggled,
    required TResult Function(_UpdateWordItem value) updateWordItem,
    required TResult Function(_ChangeSelectionMode value) changeSelectionMode,
    required TResult Function(SearchByPattern value) searchByPattern,
  }) {
    return changeSelectionMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectAllSwitchToggled value)? selectAllSwitchToggled,
    TResult? Function(_UpdateWordItem value)? updateWordItem,
    TResult? Function(_ChangeSelectionMode value)? changeSelectionMode,
    TResult? Function(SearchByPattern value)? searchByPattern,
  }) {
    return changeSelectionMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectAllSwitchToggled value)? selectAllSwitchToggled,
    TResult Function(_UpdateWordItem value)? updateWordItem,
    TResult Function(_ChangeSelectionMode value)? changeSelectionMode,
    TResult Function(SearchByPattern value)? searchByPattern,
    required TResult orElse(),
  }) {
    if (changeSelectionMode != null) {
      return changeSelectionMode(this);
    }
    return orElse();
  }
}

abstract class _ChangeSelectionMode implements LessonChooseFormEvent {
  const factory _ChangeSelectionMode(final bool newValue) =
      _$_ChangeSelectionMode;

  bool get newValue;
  @JsonKey(ignore: true)
  _$$_ChangeSelectionModeCopyWith<_$_ChangeSelectionMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchByPatternCopyWith<$Res> {
  factory _$$SearchByPatternCopyWith(
          _$SearchByPattern value, $Res Function(_$SearchByPattern) then) =
      __$$SearchByPatternCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SearchByPatternCopyWithImpl<$Res>
    extends _$LessonChooseFormEventCopyWithImpl<$Res, _$SearchByPattern>
    implements _$$SearchByPatternCopyWith<$Res> {
  __$$SearchByPatternCopyWithImpl(
      _$SearchByPattern _value, $Res Function(_$SearchByPattern) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SearchByPattern(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchByPattern implements SearchByPattern {
  const _$SearchByPattern(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'LessonChooseFormEvent.searchByPattern(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchByPattern &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchByPatternCopyWith<_$SearchByPattern> get copyWith =>
      __$$SearchByPatternCopyWithImpl<_$SearchByPattern>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool newValue) selectAllSwitchToggled,
    required TResult Function(WordModel model) updateWordItem,
    required TResult Function(bool newValue) changeSelectionMode,
    required TResult Function(String value) searchByPattern,
  }) {
    return searchByPattern(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool newValue)? selectAllSwitchToggled,
    TResult? Function(WordModel model)? updateWordItem,
    TResult? Function(bool newValue)? changeSelectionMode,
    TResult? Function(String value)? searchByPattern,
  }) {
    return searchByPattern?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool newValue)? selectAllSwitchToggled,
    TResult Function(WordModel model)? updateWordItem,
    TResult Function(bool newValue)? changeSelectionMode,
    TResult Function(String value)? searchByPattern,
    required TResult orElse(),
  }) {
    if (searchByPattern != null) {
      return searchByPattern(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectAllSwitchToggled value)
        selectAllSwitchToggled,
    required TResult Function(_UpdateWordItem value) updateWordItem,
    required TResult Function(_ChangeSelectionMode value) changeSelectionMode,
    required TResult Function(SearchByPattern value) searchByPattern,
  }) {
    return searchByPattern(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectAllSwitchToggled value)? selectAllSwitchToggled,
    TResult? Function(_UpdateWordItem value)? updateWordItem,
    TResult? Function(_ChangeSelectionMode value)? changeSelectionMode,
    TResult? Function(SearchByPattern value)? searchByPattern,
  }) {
    return searchByPattern?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectAllSwitchToggled value)? selectAllSwitchToggled,
    TResult Function(_UpdateWordItem value)? updateWordItem,
    TResult Function(_ChangeSelectionMode value)? changeSelectionMode,
    TResult Function(SearchByPattern value)? searchByPattern,
    required TResult orElse(),
  }) {
    if (searchByPattern != null) {
      return searchByPattern(this);
    }
    return orElse();
  }
}

abstract class SearchByPattern implements LessonChooseFormEvent {
  const factory SearchByPattern(final String value) = _$SearchByPattern;

  String get value;
  @JsonKey(ignore: true)
  _$$SearchByPatternCopyWith<_$SearchByPattern> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LessonChooseFormState {
  String get title => throw _privateConstructorUsedError;
  List<WordModel> get words => throw _privateConstructorUsedError;
  bool get selectionMode => throw _privateConstructorUsedError;
  bool get selectAllSwitchState => throw _privateConstructorUsedError;
  bool get searchIsActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonChooseFormStateCopyWith<LessonChooseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonChooseFormStateCopyWith<$Res> {
  factory $LessonChooseFormStateCopyWith(LessonChooseFormState value,
          $Res Function(LessonChooseFormState) then) =
      _$LessonChooseFormStateCopyWithImpl<$Res, LessonChooseFormState>;
  @useResult
  $Res call(
      {String title,
      List<WordModel> words,
      bool selectionMode,
      bool selectAllSwitchState,
      bool searchIsActive});
}

/// @nodoc
class _$LessonChooseFormStateCopyWithImpl<$Res,
        $Val extends LessonChooseFormState>
    implements $LessonChooseFormStateCopyWith<$Res> {
  _$LessonChooseFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? words = null,
    Object? selectionMode = null,
    Object? selectAllSwitchState = null,
    Object? searchIsActive = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
      selectionMode: null == selectionMode
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
      selectAllSwitchState: null == selectAllSwitchState
          ? _value.selectAllSwitchState
          : selectAllSwitchState // ignore: cast_nullable_to_non_nullable
              as bool,
      searchIsActive: null == searchIsActive
          ? _value.searchIsActive
          : searchIsActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonChooseFormStateCopyWith<$Res>
    implements $LessonChooseFormStateCopyWith<$Res> {
  factory _$$_LessonChooseFormStateCopyWith(_$_LessonChooseFormState value,
          $Res Function(_$_LessonChooseFormState) then) =
      __$$_LessonChooseFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      List<WordModel> words,
      bool selectionMode,
      bool selectAllSwitchState,
      bool searchIsActive});
}

/// @nodoc
class __$$_LessonChooseFormStateCopyWithImpl<$Res>
    extends _$LessonChooseFormStateCopyWithImpl<$Res, _$_LessonChooseFormState>
    implements _$$_LessonChooseFormStateCopyWith<$Res> {
  __$$_LessonChooseFormStateCopyWithImpl(_$_LessonChooseFormState _value,
      $Res Function(_$_LessonChooseFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? words = null,
    Object? selectionMode = null,
    Object? selectAllSwitchState = null,
    Object? searchIsActive = null,
  }) {
    return _then(_$_LessonChooseFormState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
      selectionMode: null == selectionMode
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
      selectAllSwitchState: null == selectAllSwitchState
          ? _value.selectAllSwitchState
          : selectAllSwitchState // ignore: cast_nullable_to_non_nullable
              as bool,
      searchIsActive: null == searchIsActive
          ? _value.searchIsActive
          : searchIsActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LessonChooseFormState implements _LessonChooseFormState {
  _$_LessonChooseFormState(
      {required this.title,
      required final List<WordModel> words,
      this.selectionMode = false,
      this.selectAllSwitchState = false,
      this.searchIsActive = false})
      : _words = words;

  @override
  final String title;
  final List<WordModel> _words;
  @override
  List<WordModel> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  @JsonKey()
  final bool selectionMode;
  @override
  @JsonKey()
  final bool selectAllSwitchState;
  @override
  @JsonKey()
  final bool searchIsActive;

  @override
  String toString() {
    return 'LessonChooseFormState(title: $title, words: $words, selectionMode: $selectionMode, selectAllSwitchState: $selectAllSwitchState, searchIsActive: $searchIsActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonChooseFormState &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.selectionMode, selectionMode) ||
                other.selectionMode == selectionMode) &&
            (identical(other.selectAllSwitchState, selectAllSwitchState) ||
                other.selectAllSwitchState == selectAllSwitchState) &&
            (identical(other.searchIsActive, searchIsActive) ||
                other.searchIsActive == searchIsActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_words),
      selectionMode,
      selectAllSwitchState,
      searchIsActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonChooseFormStateCopyWith<_$_LessonChooseFormState> get copyWith =>
      __$$_LessonChooseFormStateCopyWithImpl<_$_LessonChooseFormState>(
          this, _$identity);
}

abstract class _LessonChooseFormState implements LessonChooseFormState {
  factory _LessonChooseFormState(
      {required final String title,
      required final List<WordModel> words,
      final bool selectionMode,
      final bool selectAllSwitchState,
      final bool searchIsActive}) = _$_LessonChooseFormState;

  @override
  String get title;
  @override
  List<WordModel> get words;
  @override
  bool get selectionMode;
  @override
  bool get selectAllSwitchState;
  @override
  bool get searchIsActive;
  @override
  @JsonKey(ignore: true)
  _$$_LessonChooseFormStateCopyWith<_$_LessonChooseFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
