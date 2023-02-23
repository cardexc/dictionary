part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required String defaultLanguageDirection,
    @Default(0) int languageChooseDialogShown,
    required Map<String, bool> boolMap,
  }) = _SettingsState;

  factory SettingsState.initial(Box<dynamic> box) => SettingsState(
        defaultLanguageDirection:
            box.get(HiveConst.defaultLanguageDirectionKey, defaultValue: HiveConst.defaultLanguageDirectionValue),
        boolMap: {
          "askLanguageDirection" : box.get(HiveConst.askLanguageDirectionKey, defaultValue: HiveConst.askLanguageDirectionDefaultValue),
          "useSentenceInExercises" : box.get(HiveConst.useSentenceInExercisesKey, defaultValue: HiveConst.useSentenceInExercisesDefaultValue),
          "exerciseFlashcardDefaultUse" : box.get(HiveConst.exerciseFlashcardDefaultUseKey, defaultValue: HiveConst.exerciseFlashcardDefaultUseDefaultValue),
          "exerciseScratchCardsDefaultUse" : box.get(HiveConst.exerciseScratchCardsDefaultUseKey, defaultValue: HiveConst.exerciseScratchCardsDefaultUseDefaultValue),
          "exerciseMultipleChoiceDefaultUse" : box.get(HiveConst.exerciseMultipleChoiceDefaultUseKey, defaultValue: HiveConst.exerciseMultipleChoiceDefaultUseDefaultValue),
          "exerciseMatchMakerDefaultUse" : box.get(HiveConst.exerciseMatchMakerDefaultUseKey, defaultValue: HiveConst.exerciseMatchMakerDefaultUseDefaultValue),
          "exerciseAlphabetSoupDefaultUse" : box.get(HiveConst.exerciseAlphabetSoupDefaultUseKey, defaultValue: HiveConst.exerciseAlphabetSoupDefaultUseDefaultValue),
          "exerciseWritingDefaultUse" : box.get(HiveConst.exerciseWritingDefaultUseKey, defaultValue: HiveConst.exerciseWritingDefaultUseDefaultValue),
          "exerciseListenTypeDefaultUse" : box.get(HiveConst.exerciseListenTypeDefaultUseKey, defaultValue: HiveConst.exerciseListenTypeDefaultUseDefaultValue),
        }

      );
}
