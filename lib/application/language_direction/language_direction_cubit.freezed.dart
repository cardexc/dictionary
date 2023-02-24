// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_direction_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LanguageDirectionState {
  LanguageDirection get direction => throw _privateConstructorUsedError;
  bool get alwaysUseSelectedDirection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageDirectionStateCopyWith<LanguageDirectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageDirectionStateCopyWith<$Res> {
  factory $LanguageDirectionStateCopyWith(LanguageDirectionState value,
          $Res Function(LanguageDirectionState) then) =
      _$LanguageDirectionStateCopyWithImpl<$Res, LanguageDirectionState>;
  @useResult
  $Res call({LanguageDirection direction, bool alwaysUseSelectedDirection});

  $LanguageDirectionCopyWith<$Res> get direction;
}

/// @nodoc
class _$LanguageDirectionStateCopyWithImpl<$Res,
        $Val extends LanguageDirectionState>
    implements $LanguageDirectionStateCopyWith<$Res> {
  _$LanguageDirectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? alwaysUseSelectedDirection = null,
  }) {
    return _then(_value.copyWith(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as LanguageDirection,
      alwaysUseSelectedDirection: null == alwaysUseSelectedDirection
          ? _value.alwaysUseSelectedDirection
          : alwaysUseSelectedDirection // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageDirectionCopyWith<$Res> get direction {
    return $LanguageDirectionCopyWith<$Res>(_value.direction, (value) {
      return _then(_value.copyWith(direction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LanguageDirectionStateCopyWith<$Res>
    implements $LanguageDirectionStateCopyWith<$Res> {
  factory _$$_LanguageDirectionStateCopyWith(_$_LanguageDirectionState value,
          $Res Function(_$_LanguageDirectionState) then) =
      __$$_LanguageDirectionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LanguageDirection direction, bool alwaysUseSelectedDirection});

  @override
  $LanguageDirectionCopyWith<$Res> get direction;
}

/// @nodoc
class __$$_LanguageDirectionStateCopyWithImpl<$Res>
    extends _$LanguageDirectionStateCopyWithImpl<$Res,
        _$_LanguageDirectionState>
    implements _$$_LanguageDirectionStateCopyWith<$Res> {
  __$$_LanguageDirectionStateCopyWithImpl(_$_LanguageDirectionState _value,
      $Res Function(_$_LanguageDirectionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? alwaysUseSelectedDirection = null,
  }) {
    return _then(_$_LanguageDirectionState(
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as LanguageDirection,
      alwaysUseSelectedDirection: null == alwaysUseSelectedDirection
          ? _value.alwaysUseSelectedDirection
          : alwaysUseSelectedDirection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LanguageDirectionState implements _LanguageDirectionState {
  const _$_LanguageDirectionState(
      {required this.direction, required this.alwaysUseSelectedDirection});

  @override
  final LanguageDirection direction;
  @override
  final bool alwaysUseSelectedDirection;

  @override
  String toString() {
    return 'LanguageDirectionState(direction: $direction, alwaysUseSelectedDirection: $alwaysUseSelectedDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageDirectionState &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.alwaysUseSelectedDirection,
                    alwaysUseSelectedDirection) ||
                other.alwaysUseSelectedDirection ==
                    alwaysUseSelectedDirection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, direction, alwaysUseSelectedDirection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageDirectionStateCopyWith<_$_LanguageDirectionState> get copyWith =>
      __$$_LanguageDirectionStateCopyWithImpl<_$_LanguageDirectionState>(
          this, _$identity);
}

abstract class _LanguageDirectionState implements LanguageDirectionState {
  const factory _LanguageDirectionState(
          {required final LanguageDirection direction,
          required final bool alwaysUseSelectedDirection}) =
      _$_LanguageDirectionState;

  @override
  LanguageDirection get direction;
  @override
  bool get alwaysUseSelectedDirection;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageDirectionStateCopyWith<_$_LanguageDirectionState> get copyWith =>
      throw _privateConstructorUsedError;
}
