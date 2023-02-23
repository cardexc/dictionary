part of 'language_direction_cubit.dart';

@freezed
class LanguageDirectionState with _$LanguageDirectionState {
  const factory LanguageDirectionState({
    required LanguageDirection direction,
    required bool alwaysUseSelectedDirection,
  }) = _LanguageDirectionState;

  factory LanguageDirectionState.initial(Box box) => LanguageDirectionState(
      direction: LanguageDirection.getFromString(box.get(
        HiveConst.defaultLanguageDirectionKey,
        defaultValue: HiveConst.defaultLanguageDirectionValue,
      ) as String),
      alwaysUseSelectedDirection: !box.get(
        HiveConst.askLanguageDirectionKey,
        defaultValue: HiveConst.askLanguageDirectionDefaultValue,
      ));
}
