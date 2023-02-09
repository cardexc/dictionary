part of 'exercise_flashcards_bloc.dart';

@freezed
class ExerciseFlashcardsState with _$ExerciseFlashcardsState {
  ExerciseFlashcardsState._();

  factory ExerciseFlashcardsState({
    required int position,
    required bool wasFlipped,
    @Default(false) bool isFinished,
    required List<WordModel> words,
    required LanguageDirection languageDirection,
  }) = _ExerciseFlashcardsState;

  factory ExerciseFlashcardsState.initial({
    required List<WordModel> words,
    required LanguageDirection languageDirection,
  }) =>
      ExerciseFlashcardsState(
        position: 0,
        words: words,
        languageDirection: languageDirection,
        wasFlipped: false,
      );
}
