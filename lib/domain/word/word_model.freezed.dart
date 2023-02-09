// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WordModel {
  UniqueId get id => throw _privateConstructorUsedError;
  String get uk => throw _privateConstructorUsedError;
  String get ru => throw _privateConstructorUsedError;
  String get pl => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordModelCopyWith<WordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordModelCopyWith<$Res> {
  factory $WordModelCopyWith(WordModel value, $Res Function(WordModel) then) =
      _$WordModelCopyWithImpl<$Res, WordModel>;
  @useResult
  $Res call({UniqueId id, String uk, String ru, String pl, bool selected});
}

/// @nodoc
class _$WordModelCopyWithImpl<$Res, $Val extends WordModel>
    implements $WordModelCopyWith<$Res> {
  _$WordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uk = null,
    Object? ru = null,
    Object? pl = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      uk: null == uk
          ? _value.uk
          : uk // ignore: cast_nullable_to_non_nullable
              as String,
      ru: null == ru
          ? _value.ru
          : ru // ignore: cast_nullable_to_non_nullable
              as String,
      pl: null == pl
          ? _value.pl
          : pl // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WordModelCopyWith<$Res> implements $WordModelCopyWith<$Res> {
  factory _$$_WordModelCopyWith(
          _$_WordModel value, $Res Function(_$_WordModel) then) =
      __$$_WordModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id, String uk, String ru, String pl, bool selected});
}

/// @nodoc
class __$$_WordModelCopyWithImpl<$Res>
    extends _$WordModelCopyWithImpl<$Res, _$_WordModel>
    implements _$$_WordModelCopyWith<$Res> {
  __$$_WordModelCopyWithImpl(
      _$_WordModel _value, $Res Function(_$_WordModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uk = null,
    Object? ru = null,
    Object? pl = null,
    Object? selected = null,
  }) {
    return _then(_$_WordModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      uk: null == uk
          ? _value.uk
          : uk // ignore: cast_nullable_to_non_nullable
              as String,
      ru: null == ru
          ? _value.ru
          : ru // ignore: cast_nullable_to_non_nullable
              as String,
      pl: null == pl
          ? _value.pl
          : pl // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WordModel extends _WordModel {
  _$_WordModel(
      {required this.id,
      required this.uk,
      required this.ru,
      required this.pl,
      this.selected = false})
      : super._();

  @override
  final UniqueId id;
  @override
  final String uk;
  @override
  final String ru;
  @override
  final String pl;
  @override
  @JsonKey()
  final bool selected;

  @override
  String toString() {
    return 'WordModel(id: $id, uk: $uk, ru: $ru, pl: $pl, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uk, uk) || other.uk == uk) &&
            (identical(other.ru, ru) || other.ru == ru) &&
            (identical(other.pl, pl) || other.pl == pl) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, uk, ru, pl, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WordModelCopyWith<_$_WordModel> get copyWith =>
      __$$_WordModelCopyWithImpl<_$_WordModel>(this, _$identity);
}

abstract class _WordModel extends WordModel {
  factory _WordModel(
      {required final UniqueId id,
      required final String uk,
      required final String ru,
      required final String pl,
      final bool selected}) = _$_WordModel;
  _WordModel._() : super._();

  @override
  UniqueId get id;
  @override
  String get uk;
  @override
  String get ru;
  @override
  String get pl;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$_WordModelCopyWith<_$_WordModel> get copyWith =>
      throw _privateConstructorUsedError;
}
