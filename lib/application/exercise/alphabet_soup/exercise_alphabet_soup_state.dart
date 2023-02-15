part of 'exercise_alphabet_soup_bloc.dart';

@freezed
class ExerciseAlphabetSoupState with _$ExerciseAlphabetSoupState {
  factory ExerciseAlphabetSoupState({
    @Default(false) bool isFinished,
    @Default(false) bool showNextButton,
    @Default(false) bool wordConstructionError,
    @Default(false) bool wordFinished,
    @Default(0) int position,
    @Default([]) List<UniqueId> usedChars,
    required LanguageDirection languageDirection,
    required List<Pair<WordModel, List<Pair<UniqueId, String>>>> letters,
    @Default("") String constructedWord,
  }) = _ExerciseAlphabetSoupState;

  factory ExerciseAlphabetSoupState.initial({
    required LanguageDirection languageDirection,
    required List<Pair<WordModel, List<Pair<UniqueId, String>>>> letters,
  }) =>
      ExerciseAlphabetSoupState(
        languageDirection: languageDirection,
        letters: letters,
      );
}
