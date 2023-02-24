part of 'exercise_choose_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ExerciseChooseState with _$ExerciseChooseState {
  const factory ExerciseChooseState({
    required int totalWords,
    required Map<ExerciseType, bool> exercisesStates,
  }) = _ExerciseChooseState;

  factory ExerciseChooseState.initial({
    required List<WordModel> words,
    required Box<dynamic> box,
  }) =>
      ExerciseChooseState(
        totalWords: words.length,
        exercisesStates: {
          ExerciseType.flashcards: box.get(HiveConst.exerciseFlashcardDefaultUseKey,
              defaultValue: HiveConst.exerciseFlashcardDefaultUseDefaultValue),
          ExerciseType.scratchcards: box.get(HiveConst.exerciseScratchCardsDefaultUseKey,
              defaultValue: HiveConst.exerciseScratchCardsDefaultUseDefaultValue),
          ExerciseType.multipleChoice: box.get(HiveConst.exerciseMultipleChoiceDefaultUseKey,
              defaultValue: HiveConst.exerciseMultipleChoiceDefaultUseDefaultValue),
          ExerciseType.matchMaker: box.get(HiveConst.exerciseMatchMakerDefaultUseKey,
              defaultValue: HiveConst.exerciseMatchMakerDefaultUseDefaultValue),
          ExerciseType.alphabetSoup: box.get(HiveConst.exerciseAlphabetSoupDefaultUseKey,
              defaultValue: HiveConst.exerciseAlphabetSoupDefaultUseDefaultValue),
          ExerciseType.listenType: box.get(HiveConst.exerciseListenTypeDefaultUseKey,
              defaultValue: HiveConst.exerciseListenTypeDefaultUseDefaultValue),
          ExerciseType.writing: box.get(HiveConst.exerciseWritingDefaultUseKey,
              defaultValue: HiveConst.exerciseWritingDefaultUseDefaultValue),
        },
      );
}
