// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LessonModel {
  int get sortValue => throw _privateConstructorUsedError;
  UniqueId get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<WordModel> get words => throw _privateConstructorUsedError;
  set words(List<WordModel> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonModelCopyWith<LessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonModelCopyWith<$Res> {
  factory $LessonModelCopyWith(
          LessonModel value, $Res Function(LessonModel) then) =
      _$LessonModelCopyWithImpl<$Res, LessonModel>;
  @useResult
  $Res call({int sortValue, UniqueId id, String title, List<WordModel> words});
}

/// @nodoc
class _$LessonModelCopyWithImpl<$Res, $Val extends LessonModel>
    implements $LessonModelCopyWith<$Res> {
  _$LessonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortValue = null,
    Object? id = null,
    Object? title = null,
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      sortValue: null == sortValue
          ? _value.sortValue
          : sortValue // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonModelCopyWith<$Res>
    implements $LessonModelCopyWith<$Res> {
  factory _$$_LessonModelCopyWith(
          _$_LessonModel value, $Res Function(_$_LessonModel) then) =
      __$$_LessonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int sortValue, UniqueId id, String title, List<WordModel> words});
}

/// @nodoc
class __$$_LessonModelCopyWithImpl<$Res>
    extends _$LessonModelCopyWithImpl<$Res, _$_LessonModel>
    implements _$$_LessonModelCopyWith<$Res> {
  __$$_LessonModelCopyWithImpl(
      _$_LessonModel _value, $Res Function(_$_LessonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortValue = null,
    Object? id = null,
    Object? title = null,
    Object? words = null,
  }) {
    return _then(_$_LessonModel(
      sortValue: null == sortValue
          ? _value.sortValue
          : sortValue // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<WordModel>,
    ));
  }
}

/// @nodoc

class _$_LessonModel implements _LessonModel {
  _$_LessonModel(
      {required this.sortValue,
      required this.id,
      required this.title,
      required this.words});

  @override
  final int sortValue;
  @override
  final UniqueId id;
  @override
  final String title;
  @override
  List<WordModel> words;

  @override
  String toString() {
    return 'LessonModel(sortValue: $sortValue, id: $id, title: $title, words: $words)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonModelCopyWith<_$_LessonModel> get copyWith =>
      __$$_LessonModelCopyWithImpl<_$_LessonModel>(this, _$identity);
}

abstract class _LessonModel implements LessonModel {
  factory _LessonModel(
      {required final int sortValue,
      required final UniqueId id,
      required final String title,
      required List<WordModel> words}) = _$_LessonModel;

  @override
  int get sortValue;
  @override
  UniqueId get id;
  @override
  String get title;
  @override
  List<WordModel> get words;
  set words(List<WordModel> value);
  @override
  @JsonKey(ignore: true)
  _$$_LessonModelCopyWith<_$_LessonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
