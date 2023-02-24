// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsState {
  String get defaultLanguageDirection => throw _privateConstructorUsedError;
  int get languageChooseDialogShown => throw _privateConstructorUsedError;
  Map<String, bool> get boolMap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {String defaultLanguageDirection,
      int languageChooseDialogShown,
      Map<String, bool> boolMap});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultLanguageDirection = null,
    Object? languageChooseDialogShown = null,
    Object? boolMap = null,
  }) {
    return _then(_value.copyWith(
      defaultLanguageDirection: null == defaultLanguageDirection
          ? _value.defaultLanguageDirection
          : defaultLanguageDirection // ignore: cast_nullable_to_non_nullable
              as String,
      languageChooseDialogShown: null == languageChooseDialogShown
          ? _value.languageChooseDialogShown
          : languageChooseDialogShown // ignore: cast_nullable_to_non_nullable
              as int,
      boolMap: null == boolMap
          ? _value.boolMap
          : boolMap // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String defaultLanguageDirection,
      int languageChooseDialogShown,
      Map<String, bool> boolMap});
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_SettingsState>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultLanguageDirection = null,
    Object? languageChooseDialogShown = null,
    Object? boolMap = null,
  }) {
    return _then(_$_SettingsState(
      defaultLanguageDirection: null == defaultLanguageDirection
          ? _value.defaultLanguageDirection
          : defaultLanguageDirection // ignore: cast_nullable_to_non_nullable
              as String,
      languageChooseDialogShown: null == languageChooseDialogShown
          ? _value.languageChooseDialogShown
          : languageChooseDialogShown // ignore: cast_nullable_to_non_nullable
              as int,
      boolMap: null == boolMap
          ? _value._boolMap
          : boolMap // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {required this.defaultLanguageDirection,
      this.languageChooseDialogShown = 0,
      required final Map<String, bool> boolMap})
      : _boolMap = boolMap;

  @override
  final String defaultLanguageDirection;
  @override
  @JsonKey()
  final int languageChooseDialogShown;
  final Map<String, bool> _boolMap;
  @override
  Map<String, bool> get boolMap {
    if (_boolMap is EqualUnmodifiableMapView) return _boolMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_boolMap);
  }

  @override
  String toString() {
    return 'SettingsState(defaultLanguageDirection: $defaultLanguageDirection, languageChooseDialogShown: $languageChooseDialogShown, boolMap: $boolMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
            (identical(
                    other.defaultLanguageDirection, defaultLanguageDirection) ||
                other.defaultLanguageDirection == defaultLanguageDirection) &&
            (identical(other.languageChooseDialogShown,
                    languageChooseDialogShown) ||
                other.languageChooseDialogShown == languageChooseDialogShown) &&
            const DeepCollectionEquality().equals(other._boolMap, _boolMap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, defaultLanguageDirection,
      languageChooseDialogShown, const DeepCollectionEquality().hash(_boolMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required final String defaultLanguageDirection,
      final int languageChooseDialogShown,
      required final Map<String, bool> boolMap}) = _$_SettingsState;

  @override
  String get defaultLanguageDirection;
  @override
  int get languageChooseDialogShown;
  @override
  Map<String, bool> get boolMap;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
