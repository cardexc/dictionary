part of 'exercise_scratchcards_bloc.dart';

@freezed
class ExerciseScratchcardsState with _$ExerciseScratchcardsState {
  ExerciseScratchcardsState._();

  factory ExerciseScratchcardsState({
    required int position,
    required bool wasScratched,
    @Default(false) bool isFinished,
    required List<WordModel> words,
    required LanguageDirection languageDirection,
  }) = _ExerciseScratchcardsState;

  factory ExerciseScratchcardsState.initial({
    required List<WordModel> words,
    required LanguageDirection languageDirection,
  }) =>
      ExerciseScratchcardsState(
        position: 0,
        words: words,
        languageDirection: languageDirection,
        wasScratched: false,
      );
}
