part of 'exercise_alphabet_soup_bloc.dart';

@freezed
class ExerciseAlphabetSoupState with _$ExerciseAlphabetSoupState {
  factory ExerciseAlphabetSoupState({
    @Default(false) bool isFinished,
    @Default(false) bool showNextButton,
    @Default(0) int position,
    required LanguageDirection languageDirection,
    required List<Pair<WordModel, List<String>>> letters,
    @Default("") String constructedWord,
  }) = _ExerciseAlphabetSoupState;

  factory ExerciseAlphabetSoupState.initial({
    required LanguageDirection languageDirection,
    required List<Pair<WordModel, List<String>>> letters,
  }) =>
      ExerciseAlphabetSoupState(
        languageDirection: languageDirection,
        letters: letters,
      );
}
