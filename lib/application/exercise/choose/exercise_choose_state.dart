part of 'exercise_choose_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ExerciseChooseState with _$ExerciseChooseState {
  const factory ExerciseChooseState({
    required int totalWords,
    required Map<ExerciseType, bool> exercisesStates,
  }) = _ExerciseChooseState;

  factory ExerciseChooseState.initial({
    required List<WordModel> words,
  }) =>
      ExerciseChooseState(
        totalWords: words.length,
        exercisesStates: {
          ExerciseType.flashcards: false,
          ExerciseType.scratchcards: false,
          ExerciseType.multipleChoice: false,
          ExerciseType.matchMaker: false,
          ExerciseType.alphabetSoup: false,
          ExerciseType.listenType: true,
          ExerciseType.writing: false,
        },
      );
}
