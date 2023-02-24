// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VoiceModel {
  String get name => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  List<String> get languageCodes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VoiceModelCopyWith<VoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoiceModelCopyWith<$Res> {
  factory $VoiceModelCopyWith(
          VoiceModel value, $Res Function(VoiceModel) then) =
      _$VoiceModelCopyWithImpl<$Res, VoiceModel>;
  @useResult
  $Res call({String name, String gender, List<String> languageCodes});
}

/// @nodoc
class _$VoiceModelCopyWithImpl<$Res, $Val extends VoiceModel>
    implements $VoiceModelCopyWith<$Res> {
  _$VoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? languageCodes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      languageCodes: null == languageCodes
          ? _value.languageCodes
          : languageCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VoiceModelCopyWith<$Res>
    implements $VoiceModelCopyWith<$Res> {
  factory _$$_VoiceModelCopyWith(
          _$_VoiceModel value, $Res Function(_$_VoiceModel) then) =
      __$$_VoiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String gender, List<String> languageCodes});
}

/// @nodoc
class __$$_VoiceModelCopyWithImpl<$Res>
    extends _$VoiceModelCopyWithImpl<$Res, _$_VoiceModel>
    implements _$$_VoiceModelCopyWith<$Res> {
  __$$_VoiceModelCopyWithImpl(
      _$_VoiceModel _value, $Res Function(_$_VoiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? languageCodes = null,
  }) {
    return _then(_$_VoiceModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      languageCodes: null == languageCodes
          ? _value._languageCodes
          : languageCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_VoiceModel extends _VoiceModel {
  _$_VoiceModel(
      {required this.name,
      required this.gender,
      required final List<String> languageCodes})
      : _languageCodes = languageCodes,
        super._();

  @override
  final String name;
  @override
  final String gender;
  final List<String> _languageCodes;
  @override
  List<String> get languageCodes {
    if (_languageCodes is EqualUnmodifiableListView) return _languageCodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languageCodes);
  }

  @override
  String toString() {
    return 'VoiceModel(name: $name, gender: $gender, languageCodes: $languageCodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VoiceModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality()
                .equals(other._languageCodes, _languageCodes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, gender,
      const DeepCollectionEquality().hash(_languageCodes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VoiceModelCopyWith<_$_VoiceModel> get copyWith =>
      __$$_VoiceModelCopyWithImpl<_$_VoiceModel>(this, _$identity);
}

abstract class _VoiceModel extends VoiceModel {
  factory _VoiceModel(
      {required final String name,
      required final String gender,
      required final List<String> languageCodes}) = _$_VoiceModel;
  _VoiceModel._() : super._();

  @override
  String get name;
  @override
  String get gender;
  @override
  List<String> get languageCodes;
  @override
  @JsonKey(ignore: true)
  _$$_VoiceModelCopyWith<_$_VoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
