// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SectionModel {
  String get title => throw _privateConstructorUsedError;
  SectionType get sectionType => throw _privateConstructorUsedError;
  IconData get iconData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectionModelCopyWith<SectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionModelCopyWith<$Res> {
  factory $SectionModelCopyWith(
          SectionModel value, $Res Function(SectionModel) then) =
      _$SectionModelCopyWithImpl<$Res, SectionModel>;
  @useResult
  $Res call({String title, SectionType sectionType, IconData iconData});
}

/// @nodoc
class _$SectionModelCopyWithImpl<$Res, $Val extends SectionModel>
    implements $SectionModelCopyWith<$Res> {
  _$SectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? sectionType = null,
    Object? iconData = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sectionType: null == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as SectionType,
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SectionModelCopyWith<$Res>
    implements $SectionModelCopyWith<$Res> {
  factory _$$_SectionModelCopyWith(
          _$_SectionModel value, $Res Function(_$_SectionModel) then) =
      __$$_SectionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, SectionType sectionType, IconData iconData});
}

/// @nodoc
class __$$_SectionModelCopyWithImpl<$Res>
    extends _$SectionModelCopyWithImpl<$Res, _$_SectionModel>
    implements _$$_SectionModelCopyWith<$Res> {
  __$$_SectionModelCopyWithImpl(
      _$_SectionModel _value, $Res Function(_$_SectionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? sectionType = null,
    Object? iconData = null,
  }) {
    return _then(_$_SectionModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sectionType: null == sectionType
          ? _value.sectionType
          : sectionType // ignore: cast_nullable_to_non_nullable
              as SectionType,
      iconData: null == iconData
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc

class _$_SectionModel implements _SectionModel {
  const _$_SectionModel(
      {required this.title, required this.sectionType, required this.iconData});

  @override
  final String title;
  @override
  final SectionType sectionType;
  @override
  final IconData iconData;

  @override
  String toString() {
    return 'SectionModel(title: $title, sectionType: $sectionType, iconData: $iconData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectionModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sectionType, sectionType) ||
                other.sectionType == sectionType) &&
            (identical(other.iconData, iconData) ||
                other.iconData == iconData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, sectionType, iconData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectionModelCopyWith<_$_SectionModel> get copyWith =>
      __$$_SectionModelCopyWithImpl<_$_SectionModel>(this, _$identity);
}

abstract class _SectionModel implements SectionModel {
  const factory _SectionModel(
      {required final String title,
      required final SectionType sectionType,
      required final IconData iconData}) = _$_SectionModel;

  @override
  String get title;
  @override
  SectionType get sectionType;
  @override
  IconData get iconData;
  @override
  @JsonKey(ignore: true)
  _$$_SectionModelCopyWith<_$_SectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
