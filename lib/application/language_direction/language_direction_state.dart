part of 'language_direction_cubit.dart';

@freezed
class LanguageDirectionState with _$LanguageDirectionState {
  const factory LanguageDirectionState({
    required LanguageDirection direction,
  }) = _LanguageDirectionState;

  factory LanguageDirectionState.initial() => LanguageDirectionState(direction: LanguageDirection.uaToPl());
}
