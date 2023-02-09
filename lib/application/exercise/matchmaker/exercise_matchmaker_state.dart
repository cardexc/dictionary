part of 'exercise_matchmaker_bloc.dart';

@freezed
class ExerciseMatchmakerState with _$ExerciseMatchmakerState {
  factory ExerciseMatchmakerState({
    @Default(false) bool isFinished,
    @Default(false) bool showNextButton,
    required int page,
    required Pair<List<WordModel>, List<WordModel>> collectionToDisplayPair,
    required LanguageDirection languageDirection,
    required List<WordModel> matchedWords,
    Color? highlightColor,
    WordModel? wordChosenFirst,
    WordModel? wordChosenSecond,
    int? firstWordColumn,
    int? secondWordColumn,
  }) = _ExerciseMatchmakerState;

  factory ExerciseMatchmakerState.initial({
    required LanguageDirection languageDirection,
    required Pair<List<WordModel>, List<WordModel>> collection,
  }) {
    return ExerciseMatchmakerState(
      page: 0,
      languageDirection: languageDirection,
      collectionToDisplayPair: collection,
      matchedWords: [],
    );
  }

}
