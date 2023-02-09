// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_direction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LanguageDirection {
  String get firstAsset => throw _privateConstructorUsedError;
  String get secondAsset => throw _privateConstructorUsedError;
  Languages get languageFrom => throw _privateConstructorUsedError;
  Languages get languageTo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageDirectionCopyWith<LanguageDirection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageDirectionCopyWith<$Res> {
  factory $LanguageDirectionCopyWith(
          LanguageDirection value, $Res Function(LanguageDirection) then) =
      _$LanguageDirectionCopyWithImpl<$Res, LanguageDirection>;
  @useResult
  $Res call(
      {String firstAsset,
      String secondAsset,
      Languages languageFrom,
      Languages languageTo});
}

/// @nodoc
class _$LanguageDirectionCopyWithImpl<$Res, $Val extends LanguageDirection>
    implements $LanguageDirectionCopyWith<$Res> {
  _$LanguageDirectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstAsset = null,
    Object? secondAsset = null,
    Object? languageFrom = null,
    Object? languageTo = null,
  }) {
    return _then(_value.copyWith(
      firstAsset: null == firstAsset
          ? _value.firstAsset
          : firstAsset // ignore: cast_nullable_to_non_nullable
              as String,
      secondAsset: null == secondAsset
          ? _value.secondAsset
          : secondAsset // ignore: cast_nullable_to_non_nullable
              as String,
      languageFrom: null == languageFrom
          ? _value.languageFrom
          : languageFrom // ignore: cast_nullable_to_non_nullable
              as Languages,
      languageTo: null == languageTo
          ? _value.languageTo
          : languageTo // ignore: cast_nullable_to_non_nullable
              as Languages,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguageDirectionCopyWith<$Res>
    implements $LanguageDirectionCopyWith<$Res> {
  factory _$$_LanguageDirectionCopyWith(_$_LanguageDirection value,
          $Res Function(_$_LanguageDirection) then) =
      __$$_LanguageDirectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstAsset,
      String secondAsset,
      Languages languageFrom,
      Languages languageTo});
}

/// @nodoc
class __$$_LanguageDirectionCopyWithImpl<$Res>
    extends _$LanguageDirectionCopyWithImpl<$Res, _$_LanguageDirection>
    implements _$$_LanguageDirectionCopyWith<$Res> {
  __$$_LanguageDirectionCopyWithImpl(
      _$_LanguageDirection _value, $Res Function(_$_LanguageDirection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstAsset = null,
    Object? secondAsset = null,
    Object? languageFrom = null,
    Object? languageTo = null,
  }) {
    return _then(_$_LanguageDirection(
      firstAsset: null == firstAsset
          ? _value.firstAsset
          : firstAsset // ignore: cast_nullable_to_non_nullable
              as String,
      secondAsset: null == secondAsset
          ? _value.secondAsset
          : secondAsset // ignore: cast_nullable_to_non_nullable
              as String,
      languageFrom: null == languageFrom
          ? _value.languageFrom
          : languageFrom // ignore: cast_nullable_to_non_nullable
              as Languages,
      languageTo: null == languageTo
          ? _value.languageTo
          : languageTo // ignore: cast_nullable_to_non_nullable
              as Languages,
    ));
  }
}

/// @nodoc

class _$_LanguageDirection extends _LanguageDirection {
  _$_LanguageDirection(
      {required this.firstAsset,
      required this.secondAsset,
      required this.languageFrom,
      required this.languageTo})
      : super._();

  @override
  final String firstAsset;
  @override
  final String secondAsset;
  @override
  final Languages languageFrom;
  @override
  final Languages languageTo;

  @override
  String toString() {
    return 'LanguageDirection(firstAsset: $firstAsset, secondAsset: $secondAsset, languageFrom: $languageFrom, languageTo: $languageTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageDirection &&
            (identical(other.firstAsset, firstAsset) ||
                other.firstAsset == firstAsset) &&
            (identical(other.secondAsset, secondAsset) ||
                other.secondAsset == secondAsset) &&
            (identical(other.languageFrom, languageFrom) ||
                other.languageFrom == languageFrom) &&
            (identical(other.languageTo, languageTo) ||
                other.languageTo == languageTo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, firstAsset, secondAsset, languageFrom, languageTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageDirectionCopyWith<_$_LanguageDirection> get copyWith =>
      __$$_LanguageDirectionCopyWithImpl<_$_LanguageDirection>(
          this, _$identity);
}

abstract class _LanguageDirection extends LanguageDirection {
  factory _LanguageDirection(
      {required final String firstAsset,
      required final String secondAsset,
      required final Languages languageFrom,
      required final Languages languageTo}) = _$_LanguageDirection;
  _LanguageDirection._() : super._();

  @override
  String get firstAsset;
  @override
  String get secondAsset;
  @override
  Languages get languageFrom;
  @override
  Languages get languageTo;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageDirectionCopyWith<_$_LanguageDirection> get copyWith =>
      throw _privateConstructorUsedError;
}
